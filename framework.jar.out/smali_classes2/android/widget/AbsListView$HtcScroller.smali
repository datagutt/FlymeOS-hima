.class Landroid/widget/AbsListView$HtcScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HtcScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final GRAVITY:F = 2000.0f

.field private static final NORMAL:I

.field private static final SCROLL_MODE:I

.field private static sGravityDeceleration:F


# instance fields
.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mCurrentPositionY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mOver:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mState:I

.field private mUniformDeceleratedDuration:I

.field private mVelocity:F

.field private mViscousFluidNormalize:F

.field private mViscousFluidScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$HtcScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    iput-object p2, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    sput v1, Landroid/widget/AbsListView$HtcScroller;->sGravityDeceleration:F

    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8

    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float v2, v4, v5

    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    iget-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    const/high16 v6, 0x447a0000    # 1000.0f

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1

    if-lez p0, :cond_0

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_0
.end method

.method private onEdgeReached()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    neg-float v2, v1

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v0, v2

    :cond_0
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    const/high16 v2, 0x447a0000    # 1000.0f

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    return-void

    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_0

    const-string v3, "HtcScroller"

    const-string v4, "startAfterEdge called from a valid position"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    const/4 v15, 0x1

    :goto_1
    if-eqz v15, :cond_2

    move/from16 v12, p3

    :goto_2
    sub-int v14, p1, v12

    mul-int v3, v14, p4

    if-ltz v3, :cond_3

    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/AbsListView$HtcScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    move/from16 v12, p2

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    move/from16 v16, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v16

    if-le v0, v3, :cond_7

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v15, :cond_5

    move/from16 v9, p2

    :goto_4
    const/4 v10, 0x0

    if-eqz v15, :cond_6

    move/from16 v11, p1

    :goto_5
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_5
    move/from16 v9, p1

    goto :goto_4

    :cond_6
    move/from16 v11, p3

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    invoke-direct {v0, v1, v12, v2}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView$HtcScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Landroid/widget/AbsListView$HtcScroller;->onEdgeReached()V

    return-void

    :cond_0
    move v0, p3

    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 8

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    sub-int v0, p1, p2

    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    neg-int v1, v0

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    float-to-double v6, v1

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    return-void
.end method

.method private viscousFluid(F)F
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidScale:F

    mul-float/2addr p1, v1

    cmpg-float v1, p1, v4

    if-gez v1, :cond_0

    neg-float v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p1, v1

    :goto_0
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    mul-float/2addr p1, v1

    return p1

    :cond_0
    const v0, 0x3ebc5ab2

    sub-float v1, v4, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p1, v4, v1

    sub-float v1, v4, v0

    mul-float/2addr v1, p1

    add-float p1, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 8

    const/4 v2, 0x1

    iget-boolean v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    if-ne v3, v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->update()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->continueWhenFinished()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    if-ge v0, v3, :cond_4

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    int-to-float v3, v0

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    mul-float v1, v3, v4

    iget-object v3, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/AbsListView$HtcScroller;->viscousFluid(F)F

    move-result v1

    :goto_1
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    if-ne v3, v4, :cond_0

    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_1

    :cond_4
    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iput v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method continueWhenFinished()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->update()Z

    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    :pswitch_1
    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mUniformDeceleratedDuration:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-static {v0}, Landroid/widget/AbsListView$HtcScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    iget-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/widget/AbsListView$HtcScroller;->onEdgeReached()V

    goto :goto_0

    :pswitch_2
    iget-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->timePassed()I

    move-result v0

    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 6

    sget v2, Landroid/widget/AbsListView$HtcScroller;->sGravityDeceleration:F

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    int-to-double v2, p3

    int-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v1, v2

    int-to-float v2, p4

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v1

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    mul-float v2, v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    iput p5, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    iput p6, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    iput p7, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    iput p8, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    int-to-float v2, v0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    int-to-float v2, v0

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mUniformDeceleratedDuration:I

    return-void

    :cond_0
    int-to-float v2, p3

    div-float/2addr v2, v1

    goto :goto_0

    :cond_1
    int-to-float v2, p4

    div-float/2addr v2, v1

    goto :goto_1
.end method

.method public fling(IIIIIIIII)V
    .locals 0

    iput p9, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    invoke-virtual/range {p0 .. p8}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 6

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    int-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v3, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    iget v4, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    goto :goto_0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return v0
.end method

.method notifyEdgeReached(III)V
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    if-nez v0, :cond_0

    iput p3, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/AbsListView$HtcScroller;->startAfterEdge(IIII)V

    :cond_0
    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/AbsListView$HtcScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 2

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iget v1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$HtcScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 1

    invoke-virtual {p0, p2, p5, p6}, Landroid/widget/AbsListView$HtcScroller;->springback(III)Z

    move-result v0

    return v0
.end method

.method springback(III)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iput v1, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    if-le p1, p3, :cond_0

    invoke-direct {p0, p1, p3, v1}, Landroid/widget/AbsListView$HtcScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$HtcScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 3

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mMode:I

    iput-boolean v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    iput p5, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    iput p1, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iput p2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    int-to-float v0, p3

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaX:F

    int-to-float v0, p4

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDeltaY:F

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mDurationReciprocal:F

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidScale:F

    iput v2, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    invoke-direct {p0, v2}, Landroid/widget/AbsListView$HtcScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v2, v0

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mViscousFluidNormalize:F

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    const/high16 v0, -0x3a860000    # -4000.0f

    :goto_0
    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v0, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iput v0, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    return-void

    :cond_0
    const/high16 v0, 0x457a0000    # 4000.0f

    goto :goto_0
.end method

.method public timePassed()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method update()Z
    .locals 12

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/AbsListView$HtcScroller;->mStartTime:J

    sub-long v0, v8, v10

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-long v8, v8

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    const/4 v8, 0x0

    :goto_0
    return v8

    :cond_0
    const/4 v2, 0x0

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mState:I

    packed-switch v8, :pswitch_data_0

    :goto_1
    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrentPositionY:I

    const/4 v8, 0x1

    goto :goto_0

    :pswitch_0
    long-to-int v6, v0

    int-to-float v8, v6

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v7, v8, v9

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v7

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v9, v7

    mul-float/2addr v9, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float v2, v8, v9

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mStartX:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffX:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mMinX:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mStartY:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mCoeffY:F

    mul-float/2addr v9, v2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mMaxY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mMinY:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrX:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalX:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrY:I

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mFinalY:I

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/AbsListView$HtcScroller;->mFinished:Z

    :cond_1
    :pswitch_1
    long-to-float v8, v0

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float v4, v8, v9

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    mul-float/2addr v8, v4

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mDeceleration:F

    mul-float/2addr v9, v4

    mul-float/2addr v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v2, v8, v9

    goto/16 :goto_1

    :pswitch_2
    long-to-float v8, v0

    iget v9, p0, Landroid/widget/AbsListView$HtcScroller;->mDuration:I

    int-to-float v9, v9

    div-float v4, v8, v9

    mul-float v5, v4, v4

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mVelocity:F

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    const/high16 v9, 0x40400000    # 3.0f

    mul-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v4

    mul-float/2addr v10, v5

    sub-float/2addr v9, v10

    mul-float v2, v8, v9

    iget v8, p0, Landroid/widget/AbsListView$HtcScroller;->mOver:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    neg-float v9, v4

    add-float/2addr v9, v5

    mul-float/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsListView$HtcScroller;->mCurrVelocity:F

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
