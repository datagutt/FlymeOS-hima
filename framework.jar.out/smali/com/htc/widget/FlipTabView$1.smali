.class Lcom/htc/widget/FlipTabView$1;
.super Ljava/lang/Object;
.source "FlipTabView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    iput-object p1, p0, Lcom/htc/widget/FlipTabView$1;->this$0:Lcom/htc/widget/FlipTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$1;->this$0:Lcom/htc/widget/FlipTabView;

    # getter for: Lcom/htc/widget/FlipTabView;->mMask:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$000(Lcom/htc/widget/FlipTabView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/htc/widget/FlipTabView$1;->this$0:Lcom/htc/widget/FlipTabView;

    # invokes: Lcom/htc/widget/FlipTabView;->endAnimation()V
    invoke-static {v0}, Lcom/htc/widget/FlipTabView;->access$100(Lcom/htc/widget/FlipTabView;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
