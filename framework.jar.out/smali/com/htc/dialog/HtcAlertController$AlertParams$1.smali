.class Lcom/htc/dialog/HtcAlertController$AlertParams$1;
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

.field final synthetic val$dialog:Lcom/htc/dialog/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p6, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    iput-object p7, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v3}, Lcom/htc/dialog/HtcAlertController;->access$1100(Lcom/htc/dialog/HtcAlertController;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    invoke-virtual {p0, p1}, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    # invokes: Lcom/htc/dialog/HtcAlertController$AlertParams;->text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v3, v2, v1}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$1200(Lcom/htc/dialog/HtcAlertController$AlertParams;Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v2, v2, Lcom/htc/dialog/HtcAlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v2, p1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$1;->val$listView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_2
    return-object p2
.end method
