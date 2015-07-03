.class Lcom/htc/dialog/HtcAlertController$AlertParams$4;
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
.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

.field final synthetic val$layout:I


# direct methods
.method constructor <init>(Lcom/htc/dialog/HtcAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 2

    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iput p5, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->val$layout:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    invoke-virtual {p0}, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->mLabelIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/htc/dialog/HtcAlertController$AlertParams;->text_setText(Ljava/lang/CharSequence;Landroid/view/View;)V
    invoke-static {v1, v2, v0}, Lcom/htc/dialog/HtcAlertController$AlertParams;->access$1200(Lcom/htc/dialog/HtcAlertController$AlertParams;Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->this$0:Lcom/htc/dialog/HtcAlertController$AlertParams;

    iget-object v1, v1, Lcom/htc/dialog/HtcAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/htc/dialog/HtcAlertController$AlertParams$4;->val$layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
