.class Landroid/widget/Editor$SelectionModifierCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectionModifierCursorController"
.end annotation


# static fields
.field private static final DELAY_BEFORE_REPLACE_ACTION:I = 0xc8


# instance fields
.field private mDownPositionX:F

.field private mDownPositionY:F

.field private mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

.field private mGestureStayedInTapRegion:Z

.field private mMaxTouchOffset:I

.field private mMinTouchOffset:I

.field private mPreviousTapUpTime:J

.field private mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    return-void
.end method

.method private initDrawables()V
    .locals 3

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$4202(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$4302(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method

.method private initHandles()V
    .locals 4

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$SelectionStartHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionStartHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->show()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->show()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->showActionPopupWindow(I)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)V

    return-void
.end method

.method private updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v1

    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    if-ge v1, v3, :cond_0

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    :cond_0
    iget v3, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    if-le v1, v3, :cond_1

    iput v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getMaxTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    return v0
.end method

.method public getMinTouchOffset()I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->hide()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionEndHandleView;->hide()V

    :cond_1
    return-void
.end method

.method public isSelectionStartDragged()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionStartHandleView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->onDetached()V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->onDetached()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mIsLongPressed:Z
    invoke-static {v10}, Landroid/widget/Editor;->access$4400(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/htc/textselection/TextSelectionManager;->checkAutoScroll(FF)V

    :cond_1
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v10

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    iget-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    if-eqz v10, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    sub-long v4, v10, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gtz v10, :cond_2

    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    sub-float v0, v8, v10

    iget v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    sub-float v1, v9, v10

    mul-float v10, v0, v0

    mul-float v11, v1, v1

    add-float v2, v10, v11

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v3

    mul-int v10, v3, v3

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gez v10, :cond_3

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isPositionOnText(FF)Z
    invoke-static {v10, v8, v9}, Landroid/widget/Editor;->access$4500(Landroid/widget/Editor;FF)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->startSelectionActionMode()Z

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    :cond_2
    iput v8, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionX:F

    iput v9, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mDownPositionY:F

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mGestureStayedInTapRegion:Z

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v10}, Landroid/widget/Editor;->hasHtcTextSelectionManager()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hasMagnifier()Z
    invoke-static {v10}, Landroid/widget/Editor;->access$3600(Landroid/widget/Editor;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v10}, Lcom/htc/textselection/TextSelectionManager;->dismissMagnifier()V

    :cond_4
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    iget-object v10, v10, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/TextSelectionManager;

    invoke-virtual {v10}, Lcom/htc/textselection/TextSelectionManager;->stopAutoScroll()V

    :cond_5
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    # setter for: Landroid/widget/Editor;->mIsLongPressed:Z
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$4402(Landroid/widget/Editor;Z)Z

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    iput-boolean v11, v10, Landroid/widget/Editor;->mDiscardNextActionUp:Z

    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    const/4 v11, 0x0

    # invokes: Landroid/widget/Editor;->disallowInterceptTouchEvent(Z)V
    invoke-static {v10, v11}, Landroid/widget/Editor;->access$4600(Landroid/widget/Editor;Z)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v10}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->updateMinAndMaxOffsets(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mPreviousTapUpTime:J

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    :cond_0
    return-void
.end method

.method public resetTouchOffsets()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMaxTouchOffset:I

    iput v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->mMinTouchOffset:I

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initDrawables()V

    invoke-direct {p0}, Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V

    iget-object v0, p0, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->hideInsertionPointCursorController()V
    invoke-static {v0}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)V

    goto :goto_0
.end method
