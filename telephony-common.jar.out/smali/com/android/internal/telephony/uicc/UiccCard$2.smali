.class Lcom/android/internal/telephony/uicc/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 492
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mDestroyed:Z
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$300(Lcom/android/internal/telephony/uicc/UiccCard;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

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

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$400(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 553
    :goto_0
    return-void

    .line 498
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 551
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

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

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$400(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 503
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onIccSwap(Z)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$500(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto :goto_0

    .line 510
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 511
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 513
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in SIM access with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 515
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 516
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 519
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->onCarrierPriviligesLoadedMessage()V
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$600(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0

    .line 522
    :sswitch_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$000(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 523
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$700(Lcom/android/internal/telephony/uicc/UiccCard;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    if-ne v3, v5, :cond_4

    .line 524
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$200(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 525
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v3

    if-nez v3, :cond_2

    .line 526
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    # setter for: Lcom/android/internal/telephony/uicc/UiccCard;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$802(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 529
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 530
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    .line 531
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # getter for: Lcom/android/internal/telephony/uicc/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->access$900(Lcom/android/internal/telephony/uicc/UiccCard;)[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->resetLastAppState()V

    .line 529
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 537
    .end local v1    # "i":I
    :cond_4
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 540
    :sswitch_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive EVENT_CHECK_SLOTS_STATE, mSlotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    iget v5, v5, Lcom/android/internal/telephony/uicc/UiccCard;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 541
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 542
    .local v2, "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->checkSlotsState(Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1000(Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    goto/16 :goto_0

    .line 546
    .end local v2    # "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    :sswitch_6
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string v4, "receive EVENT_DELAY_TO_CHECK_APP_STATE"

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->access$100(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V

    .line 547
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$2;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    # invokes: Lcom/android/internal/telephony/uicc/UiccCard;->setNAARecordsLoaded(Z)V
    invoke-static {v3, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->access$1100(Lcom/android/internal/telephony/uicc/UiccCard;Z)V

    goto/16 :goto_0

    .line 498
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x64 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
    .end sparse-switch
.end method
