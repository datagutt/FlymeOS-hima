.class Landroid/widget/AbsListView$CheckForLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v5, v7

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v4, v6, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v6, v6, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    const/4 v1, 0x0

<<<<<<< VENDOR #Conflict 0
======= #@.method public run@
    .local v1, "handled":Z
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView$CheckForLongPress;->mzCheckForLongPress()Z

    move-result v6

    if-nez v6, :cond_flyme_0

    return-void

    :cond_flyme_0

>>>>>>> BOSP #Conflict 0
    invoke-virtual {p0}, Landroid/widget/AbsListView$CheckForLongPress;->sameWindow()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v6, v6, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v0, v4, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, v8}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v7, 0x2

    iput v7, v6, Landroid/widget/AbsListView;->mTouchMode:I

    goto :goto_0
.end method

.method private mzCheckForLongPress()Z
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x2

    iput v5, v4, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v1, v4, Landroid/widget/AbsListView;->mMotionPosition:I

    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .local v2, "longPressId":J
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v5, v5, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v6, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    iget v6, v6, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsListView$CheckForLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/widget/AbsListView;->mzCheckForLongPressForMeiZu(IJLandroid/view/View;)Z

    move-result v4

    return v4
.end method