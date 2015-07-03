.class Lcom/android/server/am/HtcAppErrorDialog$1;
.super Ljava/lang/Object;
.source "HtcAppErrorDialog.java"

# interfaces
.implements Lcom/android/server/am/HtcErrorDialogBase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HtcAppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HtcAppErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/HtcAppErrorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleMessage(Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "HtcAppErrorDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.feedback"

    const-string v6, "com.htc.feedback.FeedbackReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/am/HtcAppErrorDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {v2, v4}, Lcom/android/server/am/HtcAppErrorDialog;->access$200(Lcom/android/server/am/HtcAppErrorDialog;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$300(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    invoke-virtual {v2}, Lcom/android/server/am/HtcAppErrorDialog;->dismiss()V

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "HtcAppErrorDialog"

    const-string v4, "[HtcAppErrorDialog] Fail to send Broadcast"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :cond_3
    :try_start_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.htc.feedback"

    const-string v6, "com.htc.feedback.ReportActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    # invokes: Lcom/android/server/am/HtcAppErrorDialog;->generateIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    invoke-static {v2, v4}, Lcom/android/server/am/HtcAppErrorDialog;->access$200(Lcom/android/server/am/HtcAppErrorDialog;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/HtcAppErrorDialog;->access$000(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/am/HtcAppErrorDialog$1;->this$0:Lcom/android/server/am/HtcAppErrorDialog;

    # getter for: Lcom/android/server/am/HtcAppErrorDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v5}, Lcom/android/server/am/HtcAppErrorDialog;->access$100(Lcom/android/server/am/HtcAppErrorDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v2, "HtcAppErrorDialog"

    const-string v4, "[HtcAppErrorDialog] Fail to start activity"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method
