.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private final mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

.field private mInFling:Z

.field private mLastFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    new-instance v0, Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HtcScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x6

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    :goto_1
    if-lez p1, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v4, v4, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v2, v3, v5, v4}, Landroid/widget/AbsListView$HtcScroller;->notifyVerticalEdgeReached(III)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v2, v2, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_2
.end method

.method endFling()V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sLogFling:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    if-eqz v0, :cond_1

    const-string v0, "AutoTest"

    const-string v1, "[AutoProf](2102) [FPS][AbsListView][Scrolling][FINISH]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1802(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPageScroll:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mInPageScroll:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # setter for: Landroid/widget/AbsListView;->mInPageScroll:Z
    invoke-static {v0, v2}, Landroid/widget/AbsListView;->access$3002(Landroid/widget/AbsListView;Z)Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$HtcScroller;->abortAnimation()V

    goto :goto_0
.end method

.method flywheelTouch()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 32

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mInFling:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mItemCount:I

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v2}, Landroid/widget/AbsListView$HtcScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v25

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v31

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v20, v2, v31

    if-lez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3200(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v26

    const/16 v28, 0x0

    if-eqz v26, :cond_6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v28

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v20, :cond_a

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_b

    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, v28

    sub-int v2, v20, v2

    neg-int v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v6}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v10, v10, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v11, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/AbsListView;->access$3600(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    :cond_7
    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$HtcScroller;->computeScrollOffset()Z

    move-result v25

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$HtcScroller;->getCurrY()I

    move-result v31

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v27, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int v3, v3, v27

    iput v3, v2, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingBottom:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3300(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mPaddingTop:I
    invoke-static {v3}, Landroid/widget/AbsListView;->access$3400(Landroid/widget/AbsListView;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    neg-int v2, v2

    move/from16 v0, v20

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_2

    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_b
    if-eqz v25, :cond_d

    if-nez v16, :cond_d

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    :cond_c
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_10

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v23

    :goto_4
    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$3700(Landroid/widget/AbsListView;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_11

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v19

    :goto_5
    sub-int v7, v19, v9

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v13, v2, Landroid/widget/AbsListView;->mOverflingDistance:I

    const/4 v14, 0x0

    # invokes: Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v5 .. v14}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_17

    if-gtz v9, :cond_12

    if-lez v19, :cond_12

    const/16 v17, 0x1

    :goto_6
    if-ltz v9, :cond_13

    if-gez v19, :cond_13

    const/16 v18, 0x1

    :goto_7
    if-nez v17, :cond_e

    if-eqz v18, :cond_16

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_14

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    :goto_8
    if-eqz v18, :cond_f

    move/from16 v0, v30

    neg-int v0, v0

    move/from16 v30, v0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v2, :cond_15

    invoke-virtual/range {v29 .. v29}, Landroid/widget/OverScroller;->abortAnimation()V

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->computeScrollOffset()Z

    move-result v23

    goto :goto_4

    :cond_11
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->getCurrY()I

    move-result v19

    goto :goto_5

    :cond_12
    const/16 v17, 0x0

    goto :goto_6

    :cond_13
    const/16 v18, 0x0

    goto :goto_7

    :cond_14
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->getCurrVelocity()F

    move-result v2

    float-to-int v0, v2

    move/from16 v30, v0

    goto :goto_8

    :cond_15
    invoke-virtual/range {v22 .. v22}, Landroid/widget/AbsListView$HtcScroller;->abortAnimation()V

    goto :goto_9

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9

    const/4 v4, 0x0

    const v6, 0x7fffffff

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/widget/AbsListView;->sLogFling:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AutoTest"

    const-string v3, "[AutoProf](2101) [FPS][AbsListView][Scrolling][START]"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-gez p1, :cond_3

    move v2, v6

    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v4}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1800(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    # setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1802(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIII)V

    goto :goto_1
.end method

.method startOverfling(I)V
    .locals 11

    const/4 v2, 0x0

    const v8, 0x7fffffff

    const/high16 v7, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v9}, Landroid/widget/AbsListView$HtcScroller;->fling(IIIIIIIII)V

    goto :goto_0
.end method

.method startScroll(IIZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_0

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    :goto_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    if-eqz p3, :cond_3

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/AbsListView$HtcScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView$HtcScroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method startSpringback()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHtcScrollEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v7

    :goto_0
    if-eqz v7, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mHtcScroller:Landroid/widget/AbsListView$HtcScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mScrollY:I
    invoke-static {v2}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)I

    move-result v2

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/AbsListView$HtcScroller;->springBack(IIIIII)Z

    move-result v7

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_1
.end method
