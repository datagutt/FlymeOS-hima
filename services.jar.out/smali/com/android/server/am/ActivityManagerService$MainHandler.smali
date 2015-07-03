.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 69

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "anr_show_background"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/16 v62, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_0
    const-string v5, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    const-string v5, "result"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppErrorResult;

    if-eqz v8, :cond_3

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_3

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_1
    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    const/16 v62, 0x0

    goto :goto_1

    :cond_3
    :try_start_1
    iget v5, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_4

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v6, :cond_4

    const/16 v45, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v47, v0

    const/16 v43, 0x0

    :goto_3
    move/from16 v0, v43

    move/from16 v1, v47

    if-ge v0, v1, :cond_6

    aget v67, v33, v43

    iget v5, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v67

    if-eq v5, v0, :cond_5

    const/4 v5, 0x1

    :goto_4
    and-int v45, v45, v5

    add-int/lit8 v43, v43, 0x1

    goto :goto_3

    :cond_4
    const/16 v45, 0x0

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    if-eqz v45, :cond_8

    if-nez v62, :cond_8

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_7

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    :cond_7
    monitor-exit v10

    goto/16 :goto_0

    :cond_8
    const/16 v34, 0x0

    if-eqz v8, :cond_9

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v5, :cond_9

    const-string v5, "com.android.facelock"

    iget-object v6, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_d

    if-nez v34, :cond_d

    const-string v5, "warningType"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/lang/Integer;

    if-eqz v68, :cond_b

    new-instance v4, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/HtcAmsUtil$AppWarningDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;I)V

    :goto_5
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :cond_a
    :goto_6
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/server/am/HtcErrorReportManager;->canShowHtcDialog(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v4, Lcom/android/server/am/HtcAppErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/HtcAppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    :cond_c
    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    :cond_d
    if-eqz v7, :cond_a

    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    const-string v5, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_e

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_e

    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has anr dialog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    :cond_e
    :try_start_4
    new-instance v12, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v12, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_f

    const/high16 v5, 0x50000000

    invoke-virtual {v12, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    sget v22, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v23, 0x3e8

    const/16 v24, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v9 .. v24}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/server/am/HtcErrorReportManager;->canShowHtcDialog(Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v4, Lcom/android/server/am/HtcAppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_10

    const/16 v18, 0x1

    :goto_7
    move-object v13, v4

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v18}, Lcom/android/server/am/HtcAppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    :goto_8
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v8, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    :goto_9
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_10
    const/16 v18, 0x0

    goto :goto_7

    :cond_11
    :try_start_5
    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_12

    const/16 v18, 0x1

    :goto_a
    move-object v13, v4

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v18}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    goto :goto_8

    :cond_12
    const/16 v18, 0x0

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_6
    const-string v5, "app"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    if-nez v8, :cond_14

    const-string v5, "ActivityManager"

    const-string v9, "App not found when showing strict mode dialog."

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v5

    :cond_14
    :try_start_7
    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_15

    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "App already has strict mode dialog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    goto/16 :goto_0

    :cond_15
    const-string v5, "result"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppErrorResult;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_16

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v9, v7, v8}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iput-object v4, v8, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    :goto_b
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :cond_16
    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v7, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_b

    :pswitch_4
    new-instance v4, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v9, "msg"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v59

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    move-object/from16 v0, v59

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v5

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_18

    move-object/from16 v0, v31

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v5, :cond_17

    new-instance v4, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v4, v5, v9, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, v31

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    move-object/from16 v0, v31

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    :cond_17
    :goto_c
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v5

    :cond_18
    :try_start_b
    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_17

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    const/4 v5, 0x0

    move-object/from16 v0, v31

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_c

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v51

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v51

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x4e20

    move-object/from16 v0, v51

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    :goto_d
    if-ltz v42, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v5, :cond_1a

    :try_start_d
    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_1a
    :goto_e
    add-int/lit8 v42, v42, -0x1

    goto :goto_d

    :catch_0
    move-exception v39

    :try_start_e
    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update time zone for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v58

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catchall_5
    move-exception v5

    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v5

    :cond_1b
    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    :goto_f
    if-ltz v42, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v5, :cond_1c

    :try_start_11
    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_1c
    :goto_10
    add-int/lit8 v42, v42, -0x1

    goto :goto_f

    :catch_1
    move-exception v39

    :try_start_12
    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to clear dns cache for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v58

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :catchall_6
    move-exception v5

    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v5

    :cond_1d
    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Landroid/net/ProxyInfo;

    const-string v41, ""

    const-string v55, ""

    const-string v40, ""

    sget-object v53, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v57, :cond_1e

    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v57 .. v57}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v53

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    :goto_11
    if-ltz v42, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    if-eqz v5, :cond_1f

    :try_start_15
    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v41

    move-object/from16 v1, v55

    move-object/from16 v2, v40

    move-object/from16 v3, v53

    invoke-interface {v5, v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :cond_1f
    :goto_12
    add-int/lit8 v42, v42, -0x1

    goto :goto_11

    :catch_2
    move-exception v39

    :try_start_16
    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update http proxy for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v58

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :catchall_7
    move-exception v5

    monitor-exit v6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    throw v5

    :cond_20
    :try_start_17
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    goto/16 :goto_0

    :pswitch_c
    const-string v65, "System UIDs Inconsistent"

    const-string v63, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    const-string v6, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v4, v5, v6, v9}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v51

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v51

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v51

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v31

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_8
    move-exception v5

    monitor-exit v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    throw v5

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_9
    move-exception v5

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    throw v5

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1a
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v5, v9, :cond_22

    const/16 v16, 0x1

    :goto_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/os/Bundle;

    const-string v5, "pkg"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "reason"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPackageStopReasons:Landroid/util/ArrayMap;

    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v14, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    monitor-exit v6

    goto/16 :goto_0

    :catchall_a
    move-exception v5

    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    throw v5

    :cond_22
    const/16 v16, 0x0

    goto :goto_13

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v5}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v44

    if-eqz v44, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v56, v0

    if-eqz v56, :cond_0

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v56

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040489

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v63

    new-instance v52, Landroid/app/Notification;

    invoke-direct/range {v52 .. v52}, Landroid/app/Notification;-><init>()V

    const v5, 0x108065d

    move-object/from16 v0, v52

    iput v5, v0, Landroid/app/Notification;->icon:I

    const-wide/16 v10, 0x0

    move-object/from16 v0, v52

    iput-wide v10, v0, Landroid/app/Notification;->when:J

    const/4 v5, 0x2

    move-object/from16 v0, v52

    iput v5, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, v52

    iput v5, v0, Landroid/app/Notification;->defaults:I

    const/4 v5, 0x0

    move-object/from16 v0, v52

    iput-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object/from16 v0, v52

    iput-object v5, v0, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v52

    iput v5, v0, Landroid/app/Notification;->color:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104048a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v25, v0

    const/high16 v26, 0x10000000

    const/16 v27, 0x0

    new-instance v28, Landroid/os/UserHandle;

    move-object/from16 v0, v60

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v23 .. v28}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v52

    move-object/from16 v1, v36

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_1b} :catch_4

    const/4 v5, 0x1

    :try_start_1c
    new-array v0, v5, [I

    move-object/from16 v29, v0

    const-string v24, "android"

    const-string v25, "android"

    const/16 v26, 0x0

    const v27, 0x1040489

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v30, v0

    move-object/from16 v23, v44

    move-object/from16 v28, v52

    invoke-interface/range {v23 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c .. :try_end_1c} :catch_4

    goto/16 :goto_0

    :catch_3
    move-exception v38

    :try_start_1d
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v38

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_1d} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v38

    const-string v5, "ActivityManager"

    const-string v6, "Unable to create context for heavy notification"

    move-object/from16 v0, v38

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_13
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v44

    if-eqz v44, :cond_0

    :try_start_1e
    const-string v5, "android"

    const/4 v6, 0x0

    const v9, 0x1040489

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v44

    invoke-interface {v0, v5, v6, v9, v10}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_0

    :catch_5
    move-exception v38

    const-string v5, "ActivityManager"

    const-string v6, "Error canceling notification for service"

    move-object/from16 v0, v38

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v51

    const-wide/32 v10, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v6

    goto/16 :goto_0

    :catchall_b
    move-exception v5

    monitor-exit v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    throw v5

    :pswitch_15
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v5, v5, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    monitor-exit v6

    goto/16 :goto_0

    :catchall_c
    move-exception v5

    monitor-exit v6
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    throw v5

    :cond_23
    :try_start_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v5}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    iput-object v9, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    :cond_24
    if-eqz v32, :cond_25

    :cond_25
    monitor-exit v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v66, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v54

    move/from16 v1, v66

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    :cond_26
    new-instance v64, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    const-string v5, "AmsMemUsageReport"

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    move-object/from16 v2, v48

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v64

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMemUsageReportThread:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :cond_27
    const-string v5, "ActivityManager"

    const-string v6, "Previous mem usage report thread may be blocked!!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v6, v9, v5}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v5, v9, v10}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_28

    const/16 v50, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v5

    move/from16 v0, v50

    if-eq v5, v0, :cond_0

    if-eqz v50, :cond_29

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_0

    :cond_28
    const/16 v50, 0x0

    goto :goto_14

    :cond_29
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x1

    const/4 v13, 0x0

    invoke-virtual {v5, v10, v11, v9, v13}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_d
    move-exception v5

    monitor-exit v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    throw v5

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    monitor-exit v6

    goto/16 :goto_0

    :catchall_e
    move-exception v5

    monitor-exit v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    throw v5

    :pswitch_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v42, v5, -0x1

    :goto_15
    if-ltz v42, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    if-eqz v5, :cond_2a

    :try_start_25
    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    :goto_16
    invoke-interface {v9, v5}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_6
    .catchall {:try_start_25 .. :try_end_25} :catchall_f

    :cond_2a
    :goto_17
    add-int/lit8 v42, v42, -0x1

    goto :goto_15

    :cond_2b
    const/4 v5, 0x1

    goto :goto_16

    :catch_6
    move-exception v39

    :try_start_26
    const-string v5, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update preferences for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v58

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catchall_f
    move-exception v5

    monitor-exit v6
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    throw v5

    :cond_2c
    :try_start_27
    monitor-exit v6
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    goto/16 :goto_0

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v6, 0x8007

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v6, 0x4008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v6, 0x8008

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLockToAppRequest:Lcom/android/server/am/LockToAppRequestDialog;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/LockToAppRequestDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    goto/16 :goto_0

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_28
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v58

    if-eqz v58, :cond_2d

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_2d

    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    if-eqz v5, :cond_2d

    :try_start_29
    move-object/from16 v0, v58

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v58

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v9}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_8
    .catchall {:try_start_29 .. :try_end_29} :catchall_10

    :cond_2d
    :goto_18
    :try_start_2a
    monitor-exit v6

    goto/16 :goto_0

    :catchall_10
    move-exception v5

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    throw v5

    :pswitch_25
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    :cond_2e
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_0

    :pswitch_26
    :try_start_2b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/util/Locale;

    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v61

    invoke-static/range {v61 .. v61}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v49

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storing locale "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v46 .. v46}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " for decryption UI"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SystemLocale"

    invoke-virtual/range {v46 .. v46}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-interface {v0, v5, v6}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v38

    const-string v5, "ActivityManager"

    const-string v6, "Error storing locale for decryption UI"

    move-object/from16 v0, v38

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_8
    move-exception v5

    goto :goto_18

    :catch_9
    move-exception v5

    goto/16 :goto_0

    :catch_a
    move-exception v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_14
        :pswitch_a
        :pswitch_b
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_19
        :pswitch_26
    .end packed-switch
.end method
