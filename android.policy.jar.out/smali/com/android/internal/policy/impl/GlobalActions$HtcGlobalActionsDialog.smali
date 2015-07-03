.class final Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;
.super Landroid/app/AlertDialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtcGlobalActionsDialog"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x30b0001

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x303001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/GlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/GlobalActions$Action;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/policy/impl/GlobalActions$Action;->getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    return v3
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    :cond_0
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "GlobalActions"

    const-string v3, "InterceptTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-ne v8, v13, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    :cond_4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    :cond_5
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    :goto_0
    return v2

    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v8, v13, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    :cond_8
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_a

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->cancel()V

    :cond_9
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mCancelOnUp:Z

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mIntercepted:Z

    :cond_a
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onStart()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-super {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$HtcGlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method
