.class Lcom/htc/dialog/HtcAlertController$2;
.super Ljava/lang/Object;
.source "HtcAlertController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$2;->this$0:Lcom/htc/dialog/HtcAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$2;->this$0:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mCheckBoxTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/dialog/HtcAlertController;->access$800(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$2;->this$0:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/dialog/HtcAlertController;->access$900(Lcom/htc/dialog/HtcAlertController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$2;->this$0:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/dialog/HtcAlertController;->access$900(Lcom/htc/dialog/HtcAlertController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/TouchDelegate;

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController$2;->this$0:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mCheckBoxCheckBox:Landroid/view/View;
    invoke-static {v4}, Lcom/htc/dialog/HtcAlertController;->access$900(Lcom/htc/dialog/HtcAlertController;)Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
