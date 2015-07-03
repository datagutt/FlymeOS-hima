.class public final Lcom/htc/server/gesture/GestureInputFilter;
.super Landroid/view/InputFilter;
.source "GestureInputFilter.java"

# interfaces
.implements Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GestureInputFilter"


# instance fields
.field private final gestureFingerCountThreshold:I

.field private mCancelGesture:Z

.field private final mContext:Landroid/content/Context;

.field private mGesturePerformedVibrationDuration:J

.field private mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

.field private mSwipeDetectionEnabled:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "debug.gestureFilter"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    sput-boolean v0, Lcom/htc/server/gesture/GestureInputFilter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InputFilter;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->gestureFingerCountThreshold:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mSwipeDetectionEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mCancelGesture:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/server/gesture/GestureInputFilter;->getSystemVibrationDurationInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGesturePerformedVibrationDuration:J

    new-instance v0, Lcom/htc/server/gesture/MultipleGestureDetector;

    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/gesture/MultipleGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

    invoke-virtual {v0, p0}, Lcom/htc/server/gesture/MultipleGestureDetector;->setDirectionListener(Lcom/htc/server/gesture/MultipleGestureDetector$OnGestureListener;)V

    return-void
.end method

.method private convertRelativeToAbsoluteDirection(I)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/htc/server/gesture/GestureInputFilter;->getWindowManagerService()Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x0

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getSystemVibrationDurationInt()I
    .locals 7

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "System"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "vibration_duration"

    const/16 v5, 0x14

    invoke-interface {v1, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v3

    :cond_0
    sget-boolean v4, Lcom/htc/server/gesture/GestureInputFilter;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "GestureInputFilter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibrate duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 2

    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    const-string v0, "GestureInputFilter"

    const-string v1, "Unable to get WindowManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/htc/server/gesture/GestureInputFilter;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private performVibration(J)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_1

    const-string v1, "GestureInputFilter"

    const-string v2, "failed to get vibration service"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GestureInputFilter"

    const-string v2, "Exception occur when performing vibration"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public OnGesturePerformed(I)V
    .locals 8

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v5, p0, Lcom/htc/server/gesture/GestureInputFilter;->mSwipeDetectionEnabled:Z

    if-eqz v5, :cond_0

    :try_start_0
    iget-wide v6, p0, Lcom/htc/server/gesture/GestureInputFilter;->mGesturePerformedVibrationDuration:J

    invoke-direct {p0, v6, v7}, Lcom/htc/server/gesture/GestureInputFilter;->performVibration(J)V

    move v2, p1

    invoke-direct {p0, v2}, Lcom/htc/server/gesture/GestureInputFilter;->convertRelativeToAbsoluteDirection(I)I

    move-result v0

    const-string v5, "GestureInputFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnGesturePerformed: Direction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/htc/server/gesture/MultipleGestureDetector;->GestureToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AbsoluteDirection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/htc/server/gesture/MultipleGestureDetector;->GestureToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "FingerCount"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "Direction"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "AbsoluteDirection"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "com.htc.wifidisplay.MultiFingerSwipeService"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.htc.wifidisplay"

    const-string v6, "com.htc.wifidisplay.service.MultiFingerSwipeService"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "GestureInputFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occur while performing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/htc/server/gesture/MultipleGestureDetector;->GestureToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/htc/server/gesture/GestureInputFilter;->DEBUG:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_1
    const-string v5, "GestureInputFilter"

    const-string v6, "OnGesturePerformed: Gesture Click"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.htc.action.GestureClick"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/server/gesture/GestureInputFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x3

    sget-boolean v2, Lcom/htc/server/gesture/GestureInputFilter;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "GestureInputFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received event: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", policyFlags=0x"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

    if-nez v2, :cond_2

    const-string v2, "GestureInputFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMultipleGestureDetector is null. Skip event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", policyFlags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v9, p1

    check-cast v9, Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v4, :cond_3

    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mCancelGesture:Z

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    const/16 v2, 0x1002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->setSource(I)V

    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

    invoke-virtual {v2, v8}, Lcom/htc/server/gesture/MultipleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v10, p0, Lcom/htc/server/gesture/GestureInputFilter;->mCancelGesture:Z

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mCancelGesture:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/htc/server/gesture/GestureInputFilter;->mMultipleGestureDetector:Lcom/htc/server/gesture/MultipleGestureDetector;

    invoke-virtual {v2, v9}, Lcom/htc/server/gesture/MultipleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v10, :cond_5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_5
    iput-boolean v7, p0, Lcom/htc/server/gesture/GestureInputFilter;->mCancelGesture:Z

    goto :goto_0
.end method

.method public setSwipeDetectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/gesture/GestureInputFilter;->mSwipeDetectionEnabled:Z

    return-void
.end method
