.class final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    }
.end annotation


# static fields
.field public static final COLOR_FADE_LEVEL:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final DEBUG_ON:Z

.field private static final NEW_BACKLIGHT_MECHANISM_FILTER:I = -0x80000000

.field public static final SCREEN_BRIGHTNESS:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "XAN-DPS"

.field private static USE_NEW_BACKLIGHT_MECHANISM:Z


# instance fields
.field private final mBacklight:Lcom/android/server/lights/Light;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mButtonLight:Lcom/android/server/lights/Light;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCleanListener:Ljava/lang/Runnable;

.field private final mColorFade:Lcom/android/server/display/ColorFade;

.field private mColorFadeDrawPending:Z

.field private final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field private mColorFadeLevel:F

.field private mColorFadePrepared:Z

.field private mColorFadeReady:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field private mPreviousBacklight:I

.field private mScreenBrightness:I

.field private mScreenReady:Z

.field private mScreenState:I

.field private mScreenUpdatePending:Z

.field private final mScreenUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    sput-boolean v1, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    const-string v1, "electronBeamLevel"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/server/display/DisplayPowerState$2;

    const-string v1, "screenBrightness"

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerState$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/lights/Light;Lcom/android/server/display/ColorFade;Lcom/android/server/lights/Light;ZLandroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    new-instance v1, Lcom/android/server/display/DisplayPowerState$3;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$3;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/display/DisplayPowerState$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    sput-boolean p5, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "XAN-DPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructor: ENABLE=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DPS"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;

    iput-object p4, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    new-instance v1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;Lcom/android/server/display/DisplayPowerState$1;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->start()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x1400

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v1, :cond_2

    const-string v1, "XAN-DPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first ScreenBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void

    :cond_3
    const/16 v1, 0x7f

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-eqz p6, :cond_1

    const-string v1, "power"

    invoke-virtual {p6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->invokeCleanListenerIfNeeded()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/ColorFade;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->USE_NEW_BACKLIGHT_MECHANISM:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/DisplayPowerState;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mPreviousBacklight:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerState;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/DisplayPowerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    return p1
.end method

.method private invokeCleanListenerIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private postScreenUpdateThreadSafe()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private scheduleColorFadeDraw()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private scheduleScreenUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->postScreenUpdateThreadSafe()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissColorFade()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenUpdatePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadePrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeDrawPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorFade;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getColorFadeLevel()F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    return v0
.end method

.method public getScreenBrightness()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    return v0
.end method

.method public getScreenState()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    return v0
.end method

.method public prepareColorFade(Landroid/content/Context;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "XAN-DPS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareColorFade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/display/ColorFade;->prepare(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    :goto_0
    return v0

    :cond_0
    const-string v2, "XAN-DPS"

    const-string v3, "prepareColorFade done"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    move v0, v1

    goto :goto_0
.end method

.method public setButtonBrightness(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    :cond_1
    return-void
.end method

.method public setColorFadeLevel(F)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorFadeLevel: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleColorFadeDraw()V

    :cond_2
    return-void
.end method

.method public setScreenBrightness(I)V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_0

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mCurrentButtonValue:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$100(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)I

    move-result v0

    sget v1, Lcom/android/server/display/RampAnimator;->mTargetButtonValue:I

    if-eq v0, v1, :cond_4

    :cond_1
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenBrightness: brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:I

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-ne v0, v3, :cond_3

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSB at s off="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, v3, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_4
    return-void
.end method

.method public setScreenState(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG_ON:Z

    if-eqz v0, :cond_0

    const-string v0, "XAN-DPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenState: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    :cond_1
    return-void
.end method

.method public waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    const/4 v0, 0x1

    goto :goto_0
.end method
