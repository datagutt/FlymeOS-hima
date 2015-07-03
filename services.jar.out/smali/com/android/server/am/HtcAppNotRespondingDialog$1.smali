.class Lcom/android/server/am/HtcAppNotRespondingDialog$1;
.super Ljava/lang/Object;
.source "HtcAppNotRespondingDialog.java"

# interfaces
.implements Lcom/android/server/am/HtcErrorDialogBase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAppNotRespondingDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleMessage(Landroid/os/Message;)V
    .locals 8

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "HtcAppNotRespondingDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_1

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.feedback"

    const-string v7, "com.htc.feedback.ReportActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/am/HtcAppNotRespondingDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {v3, v5}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$200(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$200(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.htc.feedback"

    const-string v7, "com.htc.feedback.ReportActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/am/HtcAppNotRespondingDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {v3, v5}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$100(Lcom/android/server/am/HtcAppNotRespondingDialog;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :catch_0
    move-exception v2

    const-string v3, "HtcAppNotRespondingDialog"

    const-string v4, "bug report receiver dissappeared"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    # getter for: Lcom/android/server/am/HtcAppNotRespondingDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->access$000(Lcom/android/server/am/HtcAppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->testIsSystemReady()Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.feedback"

    const-string v5, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/HtcAppNotRespondingDialog$1;->this$0:Lcom/android/server/am/HtcAppNotRespondingDialog;

    invoke-virtual {v3}, Lcom/android/server/am/HtcAppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string v3, "HtcAppNotRespondingDialog"

    const-string v4, "Fail to send Broadcast"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    const-string v3, "HtcAppNotRespondingDialog"

    const-string v4, "System isn\'t ready"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
