.class public Lcom/htc/textselection/TextSelectionManager;
.super Ljava/lang/Object;
.source "TextSelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;
    }
.end annotation


# static fields
.field public static final FLAG_END_BY_OUTSIDE_TOUCH:I = 0x8

.field public static final FLAG_INPUT_TYPE_NULL_SELECTION:I = 0x4

.field public static final FLAG_NON_EDITABLE_SELECTION:I = 0x1

.field public static final FLAG_NOT_SUPPORT_IMAGE_CLIP:I = 0x40

.field public static final FLAG_SUPPORT_IMAGE_CLIP:I = 0x20

.field public static final FLAG_TRIGGER_BY_LONG_CLICK:I = 0x2

.field private static mAutoScroller:Lcom/htc/textselection/AutoScroller;

.field private static mMagnifier:Lcom/htc/textselection/Magnifier;

.field private static sInstance:Lcom/htc/textselection/TextSelectionManager;


# instance fields
.field private final MSG_FLY_POST_ANCHOR_TO_END:I

.field private final MSG_FLY_PRIOR_ANCHOR_TO_START:I

.field private STATUS_BAR_HEIGHT:I

.field private mCurrentView:Landroid/widget/TextView;

.field private mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

.field suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/textselection/TextSelectionManager;->MSG_FLY_PRIOR_ANCHOR_TO_START:I

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/htc/textselection/TextSelectionManager;->MSG_FLY_POST_ANCHOR_TO_END:I

    new-instance v0, Lcom/htc/textselection/AutoScroller;

    invoke-direct {v0}, Lcom/htc/textselection/AutoScroller;-><init>()V

    sput-object v0, Lcom/htc/textselection/TextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-direct {v0}, Lcom/htc/textselection/FetchSuggestionFromIME;-><init>()V

    iput-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    :cond_0
    return-void
.end method

.method private doCJKSelection(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v3, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    sub-int v3, v0, v2

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v2}, Landroid/text/Spannable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    invoke-direct {p0, p1, v2, v3}, Lcom/htc/textselection/TextSelectionManager;->findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aget v3, v1, v3

    aget v4, v1, v5

    invoke-static {p2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private findChineseWord(Landroid/widget/TextView;ILjava/lang/String;)[I
    .locals 4

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/htc/textselection/FetchSuggestionFromIME;->isCJKS(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    invoke-virtual {v2, v1, p2, p3}, Lcom/htc/textselection/FetchSuggestionFromIME;->matchWord(Ljava/lang/CharSequence;ILjava/lang/String;)[I

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v2, p0, Lcom/htc/textselection/TextSelectionManager;->suggestionFromIME:Lcom/htc/textselection/FetchSuggestionFromIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/textselection/FetchSuggestionFromIME;->setContext(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance()Lcom/htc/textselection/TextSelectionManager;
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->sInstance:Lcom/htc/textselection/TextSelectionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/textselection/TextSelectionManager;

    invoke-direct {v0}, Lcom/htc/textselection/TextSelectionManager;-><init>()V

    sput-object v0, Lcom/htc/textselection/TextSelectionManager;->sInstance:Lcom/htc/textselection/TextSelectionManager;

    :cond_0
    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->sInstance:Lcom/htc/textselection/TextSelectionManager;

    return-object v0
.end method

.method private prepareMagnifier(Landroid/view/View;)V
    .locals 3

    sget-object v1, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/htc/textselection/Magnifier;

    invoke-direct {v1, v0}, Lcom/htc/textselection/Magnifier;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/textselection/TextSelectionManager;->STATUS_BAR_HEIGHT:I

    :cond_1
    sget-object v1, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v1}, Lcom/htc/textselection/Magnifier;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v1, p1}, Lcom/htc/textselection/Magnifier;->isParentView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    const-string v1, "HtcTextSelection"

    const-string/jumbo v2, "prepareSelectionWindow::dismiss Magnifier because parent view changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v1}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkAutoScroll(FF)V
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1, p2}, Lcom/htc/textselection/AutoScroller;->checkAutoScroll(FF)V

    return-void
.end method

.method public dismissMagnifier()V
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_0
    return-void
.end method

.method public findScrollableView(Landroid/widget/TextView;)V
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0, p1}, Lcom/htc/textselection/AutoScroller;->findScrollableView(Landroid/widget/TextView;)V

    return-void
.end method

.method public flyToEnd(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public flyToStart(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method public getMagnifier()Lcom/htc/textselection/Magnifier;
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_0

    :cond_2
    iget v2, p0, Lcom/htc/textselection/TextSelectionManager;->STATUS_BAR_HEIGHT:I

    goto :goto_0
.end method

.method public isAutoScrolling()Z
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onEndSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    invoke-virtual {v0}, Lcom/htc/textselection/Magnifier;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;->onEndSelect(Landroid/widget/TextView;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/textselection/TextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    return-void
.end method

.method public onStartSelect(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hideControllers()V

    invoke-virtual {p0, p1}, Lcom/htc/textselection/TextSelectionManager;->updateCurrentView(Landroid/widget/TextView;)V

    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

    invoke-interface {v0, p1}, Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;->onStartSelect(Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public setSelectionWatcher(Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/textselection/TextSelectionManager;->mSelectionWatcher:Lcom/htc/textselection/TextSelectionManager$TextSelectionWatcher;

    return-void
.end method

.method public showMagnifier(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/htc/textselection/TextSelectionManager;->prepareMagnifier(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mMagnifier:Lcom/htc/textselection/Magnifier;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/textselection/Magnifier;->show(Landroid/widget/TextView;IIILcom/htc/textselection/Magnifier$TouchingMode;)V

    :cond_0
    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    sget-object v0, Lcom/htc/textselection/TextSelectionManager;->mAutoScroller:Lcom/htc/textselection/AutoScroller;

    invoke-virtual {v0}, Lcom/htc/textselection/AutoScroller;->stopScroll()V

    return-void
.end method

.method public updateCurrentView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/textselection/TextSelectionManager;->mCurrentView:Landroid/widget/TextView;

    goto :goto_0
.end method
