.class Lcom/android/server/AppOpsService$2;
.super Landroid/os/Handler;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->initHintFeature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleMessageImpl(Landroid/os/Message;)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/AppOpsService$HintDialogData;

    new-instance v2, Lcom/android/server/AppOpsService$HintDialog;

    iget-object v4, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {v2, v4, v1}, Lcom/android/server/AppOpsService$HintDialog;-><init>(Lcom/android/server/AppOpsService;Lcom/android/server/AppOpsService$HintDialogData;)V

    iget-object v4, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/AppOpsService;->access$900(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/AppOpsService;->access$900(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v4

    iget v6, v1, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_0

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iget-object v4, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # getter for: Lcom/android/server/AppOpsService;->mDialogMap:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/AppOpsService;->access$900(Lcom/android/server/AppOpsService;)Landroid/util/SparseArray;

    move-result-object v4

    iget v6, v1, Lcom/android/server/AppOpsService$HintDialogData;->pid:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v4, v1, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lcom/android/server/AppOpsService$HintDialog;->show()V

    const/16 v4, 0xa

    invoke-virtual {p0, v8, v4, v7, v2}, Lcom/android/server/AppOpsService$2;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v10, v11}, Lcom/android/server/AppOpsService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v0, v4, -0x1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/AppOpsService$HintDialog;

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/AppOpsService;->DEBUG_HINT:Z
    invoke-static {}, Lcom/android/server/AppOpsService;->access$500()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AppOps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hint auto dismiss for c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v2}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v2}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v6

    iget v6, v6, Lcom/android/server/AppOpsService$HintDialogData;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v2}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v2}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2
    # getter for: Lcom/android/server/AppOpsService$HintDialog;->mData:Lcom/android/server/AppOpsService$HintDialogData;
    invoke-static {v2}, Lcom/android/server/AppOpsService$HintDialog;->access$600(Lcom/android/server/AppOpsService$HintDialog;)Lcom/android/server/AppOpsService$HintDialogData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/AppOpsService$HintDialogData;->notifier:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/server/AppOpsService$HintDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    # invokes: Lcom/android/server/AppOpsService;->getDenyButtonString(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/AppOpsService;->access$400(Lcom/android/server/AppOpsService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v8, v0, v7, v2}, Lcom/android/server/AppOpsService$2;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4, v10, v11}, Lcom/android/server/AppOpsService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsService$2;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AppOps"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
