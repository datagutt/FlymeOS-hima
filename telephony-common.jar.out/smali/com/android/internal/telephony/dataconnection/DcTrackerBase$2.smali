.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;
.super Landroid/content/BroadcastReceiver;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 475
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 477
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getResetRetryCounterScreenOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 483
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->HtcCustomzie_KTResetRetrySequence()V

    .line 485
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v6, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 487
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v6, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mScreenActionFlag:Z

    .line 488
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 491
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPollwithoutResetPollStatus()V

    .line 493
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 494
    :cond_2
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 496
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v5, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    .line 498
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v6, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mScreenActionFlag:Z

    .line 499
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->stopNetStatPoll()V

    .line 502
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->startNetStatPollwithoutResetPollStatus()V

    .line 504
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->restartDataStallAlarm()V

    goto :goto_0

    .line 505
    :cond_3
    const-string v7, "com.android.internal.telephony.data-reconnect"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 506
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reconnect alarm. Previous state was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v7, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 507
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 508
    :cond_4
    const-string v7, "com.android.internal.telephony.data-restart-trysetup"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 509
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "Restart trySetup alarm"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 510
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentRestartTrySetupAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 511
    :cond_5
    const-string v7, "com.android.internal.telephony.data-stall"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 513
    :cond_6
    const-string v7, "com.android.internal.telephony.provisioning_apn_alarm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 514
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onActionIntentProvisioningApnAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 515
    :cond_7
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 516
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 518
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_8

    move v5, v6

    :cond_8
    iput-boolean v5, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v8, v8, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 521
    if-eqz v3, :cond_1

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v5, v7, :cond_1

    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->requestSetPsState(I)V

    goto/16 :goto_0

    .line 525
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_9
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 526
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    move v2, v6

    .line 529
    .local v2, "enabled":Z
    :goto_1
    if-nez v2, :cond_a

    .line 532
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iput-boolean v5, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    .line 534
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mIsWifiConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v7, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsWifiConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "enabled":Z
    :cond_b
    move v2, v5

    .line 526
    goto :goto_1

    .line 538
    :cond_c
    const-string v7, "com.htc.intent.action.ACTION_IMS_STATUS_NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 539
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v7, "status"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v6, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsRCSImsEnabled:Z

    .line 540
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsRCSImsEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v7, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsRCSImsEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 544
    :cond_d
    const-string v7, "com.htc.intent.action.ACTION_IWLAN_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 545
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v4, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIwlanState:Z

    .line 546
    .local v4, "preIwlanState":Z
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v8, "iWLANStatus"

    invoke-virtual {p2, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_e

    :goto_2
    iput-boolean v6, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIwlanState:Z

    .line 547
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive IWLAN status change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v7, v7, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIwlanState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 550
    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIwlanState:Z

    if-nez v5, :cond_1

    .line 551
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 552
    .local v1, "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->isReady()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_1

    .line 555
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string v6, "Retry setup data by IWLAN status change: true -> false"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 556
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v7, 0x42003

    invoke-virtual {v6, v7, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1    # "defaultContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_e
    move v6, v5

    .line 546
    goto :goto_2
.end method
