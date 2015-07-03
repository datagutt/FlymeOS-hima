.class public final Lcom/htc/server/gesture/GloveInputFilter;
.super Ljava/lang/Object;
.source "GloveInputFilter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final GLOVE_VERIFY_LONGPRESS_TIMEOUT:I = 0x3e8

.field private static final GLOVE_VERIFY_STATE_INIT:I = 0x0

.field private static final GLOVE_VERIFY_STATE_WAIT_DOWN:I = 0x2

.field private static final GLOVE_VERIFY_STATE_WAIT_UP:I = 0x1

.field private static final GLOVE_VERIFY_WAIT_DOWN_TIMEOUT:I = 0x64

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final MOVE_DISTANCE_INRANGE:I = 0x0

.field private static final MOVE_DISTANCE_OUTOFRANGE:I = 0x1

.field private static final QUEUE_ACTION_DROPQUEUE:I = 0x2

.field private static final QUEUE_ACTION_ENQUEUE:I = 0x1

.field private static final QUEUE_ACTION_FLUSHQUEUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GloveInputFilter"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFakeGloveEvent:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field private mPixelThreshhold:F

.field private mSavedToolType:I

.field private mVerifyState:I

.field private mWaitDownTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    iput v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointerId:[I

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownX:[F

    new-array v1, v2, [F

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownY:[F

    new-array v1, v2, [J

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownTime:[J

    const v1, 0x469c4000    # 20000.0f

    iput v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    new-instance v1, Lcom/htc/server/gesture/GloveInputFilter$1;

    invoke-direct {v1, p0}, Lcom/htc/server/gesture/GloveInputFilter$1;-><init>(Lcom/htc/server/gesture/GloveInputFilter;)V

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mWaitDownTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/htc/server/gesture/GloveInputFilter$2;

    invoke-direct {v1, p0}, Lcom/htc/server/gesture/GloveInputFilter$2;-><init>(Lcom/htc/server/gesture/GloveInputFilter;)V

    iput-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mLongPressRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iput-object p3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    iget v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    iget v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    :cond_0
    const-string v1, "GloveInputFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPixelThreshhold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/gesture/GloveInputFilter;)I
    .locals 1

    iget v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/server/gesture/GloveInputFilter;I)I
    .locals 0

    iput p1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/server/gesture/GloveInputFilter;)I
    .locals 1

    iget v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/server/gesture/GloveInputFilter;)Lcom/android/server/input/InputManagerService;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-object v0
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/server/gesture/GloveInputFilter;->findIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    :cond_0
    return-void
.end method

.method private detectMoveDistance(IJFF)I
    .locals 8

    iget-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownX:[F

    aget v1, v5, p1

    iget-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownY:[F

    aget v4, v5, p1

    iget-object v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownTime:[J

    aget-wide v6, v5, p1

    sub-long v2, p2, v6

    sub-float v5, v1, p4

    sub-float v6, v1, p4

    mul-float/2addr v5, v6

    sub-float v6, v4, p5

    sub-float v7, v4, p5

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    iget v5, p0, Lcom/htc/server/gesture/GloveInputFilter;->mPixelThreshhold:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private detectMoveDistance(Landroid/view/MotionEvent;)I
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/server/gesture/GloveInputFilter;->findIndex(I)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/server/gesture/GloveInputFilter;->detectMoveDistance(IJFF)I

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    :goto_2
    return v19

    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/htc/server/gesture/GloveInputFilter;->detectMoveDistance(IJFF)I

    move-result v19

    if-nez v19, :cond_0

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointerId:[I

    iget v2, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    aput p1, v1, v2

    iget v1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)I
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-nez v9, :cond_1

    move v3, v7

    :goto_0
    iget-boolean v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    :cond_0
    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-nez v9, :cond_2

    if-ne v6, v8, :cond_2

    const-string v8, "GloveInputFilter"

    const-string v9, "decide NOT glove mode by finger down"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v8, v7}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    :goto_1
    return v7

    :cond_1
    move v3, v8

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_4

    if-ne v0, v8, :cond_5

    :cond_4
    const-string v7, "GloveInputFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mVerifyState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " toolType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " queueAction:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v7, v3

    goto :goto_1

    :pswitch_1
    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-nez v9, :cond_6

    iput v6, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    iput v8, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x1

    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mDownPointers:I

    invoke-direct {p0, v2, v7}, Lcom/htc/server/gesture/GloveInputFilter;->captureDown(Landroid/view/MotionEvent;I)V

    iget-object v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v7, "GloveInputFilter"

    const-string v9, "GloveInputFilter postDelayed mLongPressRunnable failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-ne v9, v11, :cond_3

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/server/gesture/GloveInputFilter;->mWaitDownTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    if-ne v9, v6, :cond_8

    const-string v9, "GloveInputFilter"

    const-string v10, "decide glove mode by 2nd glove down"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_7

    move v1, v8

    :goto_3
    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9, v1}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_7
    move v1, v7

    goto :goto_3

    :cond_8
    const-string v9, "GloveInputFilter"

    const-string v10, "decide NOT glove mode by 2nd finger down"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x2

    goto/16 :goto_2

    :pswitch_2
    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-ne v9, v8, :cond_3

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/server/gesture/GloveInputFilter;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mSavedToolType:I

    if-ne v9, v6, :cond_9

    iput v11, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mWaitDownTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x64

    invoke-virtual {v7, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v7, "GloveInputFilter"

    const-string v9, "GloveInputFilter postDelayed mWaitDownTimeoutRunnable failed"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const-string v9, "GloveInputFilter"

    const-string v10, "decide NOT glove mode by finger up. [abnormal case]"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_3
    iget v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    if-ne v9, v8, :cond_3

    invoke-direct {p0, v2}, Lcom/htc/server/gesture/GloveInputFilter;->detectMoveDistance(Landroid/view/MotionEvent;)I

    move-result v5

    if-ne v5, v8, :cond_3

    const-string v9, "GloveInputFilter"

    const-string v10, "decide glove mode by move"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/server/gesture/GloveInputFilter;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, p0, Lcom/htc/server/gesture/GloveInputFilter;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v9, v8}, Lcom/android/server/input/InputManagerService;->setInGloveMode(Z)V

    iput v7, p0, Lcom/htc/server/gesture/GloveInputFilter;->mVerifyState:I

    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-direct {p0, v2, v7}, Lcom/htc/server/gesture/GloveInputFilter;->captureDown(Landroid/view/MotionEvent;I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setFakeGloveEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/server/gesture/GloveInputFilter;->mFakeGloveEvent:Z

    return-void
.end method
