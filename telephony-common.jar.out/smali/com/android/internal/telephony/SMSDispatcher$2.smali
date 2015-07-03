.class Lcom/android/internal/telephony/SMSDispatcher$2;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;

.field final synthetic val$bFirstofAll:Z

.field final synthetic val$bLastofAll:Z

.field final synthetic val$mRoamGuardDlg:Landroid/app/AlertDialog;

.field final synthetic val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/app/AlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuardDlg:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iput-boolean p4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iput-boolean p5, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 842
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamGuardDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 844
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 846
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    :goto_0
    if-nez p3, :cond_1

    .line 854
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v2, :cond_0

    .line 856
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 857
    .local v0, "informationIntent":Landroid/content/Intent;
    const-string v2, "under_retry"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 858
    const-string v2, "retry_count"

    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$000()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    const-string v2, "auto_send"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 860
    const-string v2, "SMSDispatcher"

    const-string v3, "EVENT_SHOW_SPRINT_ROAM_DLG, message send fail, will auto send later"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, v3, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 870
    .end local v0    # "informationIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 846
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 847
    :catch_0
    move-exception v2

    goto :goto_0

    .line 864
    :cond_1
    if-ne p3, v4, :cond_0

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v1

    .line 867
    .local v1, "ss":I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bFirstofAll:Z

    iget-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$bLastofAll:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 868
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1
.end method
