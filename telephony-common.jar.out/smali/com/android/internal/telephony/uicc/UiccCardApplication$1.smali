.class Lcom/android/internal/telephony/uicc/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x67

    const/4 v6, 0x0

    const/16 v4, 0x65

    const/4 v5, 0x1

    .line 447
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mDestroyed:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$000(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 551
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :sswitch_0
    const/4 v1, -0x1

    .line 461
    .local v1, "attemptsRemaining":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 462
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 463
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;)I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)I

    move-result v1

    .line 465
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 466
    .local v2, "response":Landroid/os/Message;
    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 467
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 470
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 471
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x65

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 472
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 476
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "attemptsRemaining":I
    .end local v2    # "response":Landroid/os/Message;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 477
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$400(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 480
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 481
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 484
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 485
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$600(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 488
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 489
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$700(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 494
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 496
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccDetailStatusDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$800(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    .line 498
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$900(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v4, :cond_4

    .line 500
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIsSIMRetryLoaded:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1002(Lcom/android/internal/telephony/uicc/UiccCardApplication;Z)Z

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyPinLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    invoke-static {v3, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/Registrant;)V

    .line 504
    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 509
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 510
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 511
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in change sim password with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$100(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 514
    :cond_5
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 516
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$300(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 517
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x65

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadIccDetailStatus(Landroid/os/Message;)V

    .line 518
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 521
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 522
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSubsidyLockTypesDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1200(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/AsyncResult;)V

    .line 523
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_6

    .line 524
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v4, "Notify SIM network locked."

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1300(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mIsSubsidyLockLoaded:Z
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1402(Lcom/android/internal/telephony/uicc/UiccCardApplication;Z)Z

    .line 526
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCardApplication;->notifyNetworkLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    invoke-static {v3, v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1500(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/Registrant;)V

    goto/16 :goto_0

    .line 528
    :cond_6
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 534
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 535
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 536
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 537
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 538
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 541
    :cond_7
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v3, :cond_8

    .line 542
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1600(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v7, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 544
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->access$1600(Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 453
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_0
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
    .end sparse-switch
.end method
