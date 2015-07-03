.class Lcom/htc/dialog/HtcAlertController$AlertParams$3;
.super Landroid/widget/ArrayAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

.field final synthetic val$layout:I


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p6, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->val$layout:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->val$layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-virtual {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    # invokes: Lcom/htc/dialog/HtcAlertController$AlertParams;->text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v2, v1, v0}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$1200(Lcom/htc/dialog/HtcAlertController$AlertParams;Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    return-object p2
.end method
