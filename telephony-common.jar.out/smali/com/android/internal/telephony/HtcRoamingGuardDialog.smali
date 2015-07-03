.class public Lcom/android/internal/telephony/HtcRoamingGuardDialog;
.super Landroid/widget/LinearLayout;
.source "HtcRoamingGuardDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcRoamingGuardDialog"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/ViewGroup;

.field private msgText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->msgText:Landroid/widget/TextView;

    .line 34
    iput-object v1, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mListView:Landroid/widget/ListView;

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    .line 39
    const v0, 0x303001f

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    .line 42
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mListView:Landroid/widget/ListView;

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->msgText:Landroid/widget/TextView;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setMsgText(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->msgText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->msgText:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    return-void
.end method
