.class public Lcom/htc/server/gesture/MultipleGestureDetector;
.super Ljava/lang/Object;
.source "MultipleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final GESTURE_CLICK:I = 0x5

.field public static final GESTURE_DETECTING:I = -0x1

.field public static final GESTURE_DOWN:I = 0x3

.field public static final GESTURE_LEFT:I = 0x4

.field public static final GESTURE_NONE:I = -0x2

.field public static final GESTURE_RIGHT:I = 0x2

.field private static final GESTURE_TOUCH_POINTS:I = 0x3

.field public static final GESTURE_UNDETERMINATED:I = 0x0

.field public static final GESTURE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultipleGestureDetector"

.field public static final TAP_TIMEOUT:J


# instance fields
.field private mGesture:I

.field private mOnGestureListener:Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;

.field private mPixelThreshhold:F

.field private mRecordX:F

.field private mRecordY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    sput-boolean v0, Lcom/htc/server/gesture/MultipleGestureDetector;->DEBUG:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    sput-wide v0, Lcom/htc/server/gesture/MultipleGestureDetector;->TAP_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mPixelThreshhold:F

    const/4 v1, -0x2

    iput v1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordX:F

    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mPixelThreshhold:F

    :cond_0
    return-void
.end method

.method public static GestureToString(I)Ljava/lang/String;
    .locals 1

    const-string v0, "UNDETERMINATED"

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "LEFT"

    goto :goto_0

    :pswitch_1
    const-string v0, "RIGHT"

    goto :goto_0

    :pswitch_2
    const-string v0, "UP"

    goto :goto_0

    :pswitch_3
    const-string v0, "DOWN"

    goto :goto_0

    :pswitch_4
    const-string v0, "CLICK"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gestureBegin(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordY:F

    sget-boolean v0, Lcom/htc/server/gesture/MultipleGestureDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultipleGestureDetector"

    const-string v1, "gestureBegin()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private gestureEnd(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordX:F

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mRecordY:F

    sub-float v1, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mPixelThreshhold:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mPixelThreshhold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    cmpg-float v2, v0, v4

    if-gez v2, :cond_3

    const/4 v2, 0x4

    :goto_0
    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    :cond_1
    :goto_1
    sget-boolean v2, Lcom/htc/server/gesture/MultipleGestureDetector;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MultipleGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gestureEnd("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    invoke-static {v4}, Lcom/htc/server/gesture/MultipleGestureDetector;->GestureToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):Shift("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), Threshold(2cm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mPixelThreshhold:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "pixels)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    const/4 v2, 0x1

    :goto_2
    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/htc/server/gesture/MultipleGestureDetector;->TAP_TIMEOUT:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x5

    iput v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    goto :goto_1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, -0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    iget v1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/server/gesture/MultipleGestureDetector;->gestureBegin(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/server/gesture/MultipleGestureDetector;->gestureEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mOnGestureListener:Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;

    iget v2, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    invoke-interface {v1, v2}, Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;->OnGesturePerformed(I)V

    :pswitch_4
    iput v3, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mGesture:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDirectionListener(Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/server/gesture/MultipleGestureDetector;->mOnGestureListener:Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;

    return-void
.end method
