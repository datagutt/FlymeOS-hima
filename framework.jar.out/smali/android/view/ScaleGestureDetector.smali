.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MODE_IN_PROGRESS:I = 0x1

.field private static final DOUBLE_TAP_MODE_NONE:I = 0x0

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mDoubleTapEvent:Landroid/view/MotionEvent;

.field private mDoubleTapMode:I

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "debug.scalegesture.verbose"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_1
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    const v1, 0x105000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    return p1
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    const-wide/16 v24, 0x80

    cmp-long v21, v22, v24

    if-ltz v21, :cond_7

    const/4 v4, 0x1

    :goto_0
    const/16 v20, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v6, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_8

    const/4 v11, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    add-int/lit8 v16, v12, 0x1

    const/4 v10, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    if-ge v10, v12, :cond_9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v14

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v14, v0

    :cond_0
    add-float v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    cmpl-float v21, v14, v21

    if-lez v21, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    :cond_4
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_5

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    if-ge v10, v12, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v18

    :goto_5
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    const/4 v4, 0x0

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v14

    goto/16 :goto_4

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    goto :goto_5

    :cond_b
    add-int v17, v17, v16

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_c
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v21, v21, v5

    const/high16 v22, 0x40400000    # 3.0f

    div-float v15, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchUpper:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchLower:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryDirection:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    return-void
.end method

.method private inDoubleTapMode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_3

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    add-float/2addr v2, v1

    goto :goto_1

    :cond_5
    sub-float/2addr v2, v1

    goto :goto_1

    :cond_6
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    goto :goto_1
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v4, v0, :cond_3

    const/16 v27, 0x3

    move/from16 v0, v27

    if-ne v4, v0, :cond_7

    :cond_3
    const/16 v21, 0x1

    :goto_0
    if-eqz v4, :cond_4

    if-eqz v21, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") onScaleEnd(): action="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", streamComplete="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_6
    :goto_1
    if-eqz v21, :cond_9

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->clearTouchHistory()V

    const/16 v27, 0x1

    :goto_2
    return v27

    :cond_7
    const/16 v21, 0x0

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    if-eqz v21, :cond_6

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    goto :goto_1

    :cond_9
    if-eqz v4, :cond_a

    const/16 v27, 0x6

    move/from16 v0, v27

    if-eq v4, v0, :cond_a

    const/16 v27, 0x5

    move/from16 v0, v27

    if-ne v4, v0, :cond_b

    :cond_a
    const/4 v5, 0x1

    :goto_3
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ne v4, v0, :cond_c

    const/16 v16, 0x1

    :goto_4
    if-eqz v16, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    :goto_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-eqz v16, :cond_e

    add-int/lit8 v11, v6, -0x1

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mDoubleTapEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    cmpg-float v27, v27, v13

    if-gez v27, :cond_f

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    :goto_7
    invoke-direct/range {p0 .. p1}, Landroid/view/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v6, :cond_14

    move/from16 v0, v17

    if-ne v0, v14, :cond_13

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    goto :goto_3

    :cond_c
    const/16 v16, 0x0

    goto :goto_4

    :cond_d
    const/16 v17, -0x1

    goto :goto_5

    :cond_e
    move v11, v6

    goto :goto_6

    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_7

    :cond_10
    const/4 v14, 0x0

    :goto_a
    if-ge v14, v6, :cond_12

    move/from16 v0, v17

    if-ne v0, v14, :cond_11

    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    add-float v22, v22, v27

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    add-float v23, v23, v27

    goto :goto_b

    :cond_12
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v12, v22, v27

    int-to-float v0, v11

    move/from16 v27, v0

    div-float v13, v23, v27

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v24, v27, v28

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    sub-float v27, v27, v12

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    add-float v27, v27, v24

    add-float v7, v7, v27

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    sub-float v27, v27, v13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    add-float v27, v27, v24

    add-float v8, v8, v27

    goto :goto_9

    :cond_14
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v9, v7, v27

    int-to-float v0, v11

    move/from16 v27, v0

    div-float v10, v8, v27

    const/high16 v27, 0x40000000    # 2.0f

    mul-float v19, v9, v27

    const/high16 v27, 0x40000000    # 2.0f

    mul-float v20, v10, v27

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v27

    if-eqz v27, :cond_23

    move/from16 v18, v20

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") set mFocusX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to focusX ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", set FocusY="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " to focusY ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v27

    if-nez v27, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v18, v27

    if-ltz v27, :cond_16

    if-eqz v5, :cond_18

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") onScaleEnd()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mDoubleTapMode:I

    :cond_18
    if-eqz v5, :cond_19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inDoubleTapMode()Z

    move-result v27

    if-eqz v27, :cond_24

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v27, v0

    if-nez v27, :cond_1d

    int-to-float v0, v15

    move/from16 v27, v0

    cmpl-float v27, v18, v27

    if-ltz v27, :cond_1d

    if-nez v26, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v27, v0

    sub-float v27, v18, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_1d

    :cond_1a
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") onScaleBegin(): mPrevSpanX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mPrevSpanY="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mPrevSpan="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1c

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") onScaleBegin(): mCurrSpanX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mCurrSpanY="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mCurrSpan="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    :cond_1d
    const/16 v27, 0x2

    move/from16 v0, v27

    if-ne v4, v0, :cond_22

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") ACTION_MOVE: mCurrSpanX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mCurrSpanY="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mCurrSpan="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") onScale()"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v25

    :cond_20
    if-eqz v25, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->DEBUG:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    const-string v27, "ScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "et("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") ACTION_MOVE: mPrevSpanX="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mPrevSpanY="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mPrevSpan="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", updatePrev="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    :cond_22
    const/16 v27, 0x1

    goto/16 :goto_2

    :cond_23
    mul-float v27, v19, v19

    mul-float v28, v20, v20

    add-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v18

    goto/16 :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    goto/16 :goto_d
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method
