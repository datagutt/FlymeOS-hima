.class Lcom/htc/dialog/HtcAlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dialog/HtcAlertController$AlertParams;->createListView(Lcom/htc/dialog/HtcAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/htc/dialog/HtcAlertController;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lcom/htc/dialog/HtcAlertController;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput-object p5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    iput-object p6, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->mLabelIndex:I

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    const/4 v1, 0x1

    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget v3, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/htc/dialog/HtcAlertController$AlertParams;->text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v2, v3, v0}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$1200(Lcom/htc/dialog/HtcAlertController$AlertParams;Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->val$listView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$2;->val$dialog:Lcom/htc/dialog/HtcAlertController;

    # getter for: Lcom/htc/dialog/HtcAlertController;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/htc/dialog/HtcAlertController;->access$1100(Lcom/htc/dialog/HtcAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
