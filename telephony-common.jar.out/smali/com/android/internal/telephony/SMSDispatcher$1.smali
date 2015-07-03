.class Lcom/android/internal/telephony/SMSDispatcher$1;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 808
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 810
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 812
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-eqz v1, :cond_0

    .line 821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v0, "informationIntent":Landroid/content/Intent;
    const-string v1, "under_retry"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 823
    const-string v1, "retry_count"

    # getter for: Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    const-string v1, "SMSDispatcher"

    const-string v2, "EVENT_SHOW_SPRINT_ROAM_DLG, message send fail"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->val$mRoamingTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$1;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IILandroid/content/Intent;)V

    .line 827
    .end local v0    # "informationIntent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 812
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 813
    :catch_0
    move-exception v1

    goto :goto_0
.end method
