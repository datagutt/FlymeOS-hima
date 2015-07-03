.class Lcom/htc/widget/FlipTabView$2;
.super Ljava/lang/Object;
.source "FlipTabView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FlipTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/FlipTabView;


# direct methods
.method constructor <init>(Lcom/htc/widget/FlipTabView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$000(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mUpNext:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$200(Lcom/htc/widget/FlipTabView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mUpTab:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$300(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mDownTab:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$400(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mDigitalNext:Lcom/htc/widget/FlipDigitalView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$500(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/FlipDigitalView;->clear()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mDigitalUp:Lcom/htc/widget/FlipDigitalView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$600(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/FlipDigitalView;->clear()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$2;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mDigitalDown:Lcom/htc/widget/FlipDigitalView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$700(Lcom/htc/widget/FlipTabView;)Lcom/htc/widget/FlipDigitalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/FlipDigitalView;->clear()V

    return-void
.end method
