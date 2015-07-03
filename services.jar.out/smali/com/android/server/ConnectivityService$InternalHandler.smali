.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v10, 0x0

    const/4 v5, 0x1

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    monitor-enter v11

    :try_start_0
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v12, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockSerialNumber:I
    invoke-static {v12}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)I

    move-result v12

    if-ne v10, v12, :cond_1

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTransitionWakeLockCausedBy:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v10, p1, Landroid/os/Message;->what:I

    const/16 v11, 0x18

    if-ne v10, v11, :cond_2

    const-string v10, "Failed to find a new network - expiring NetTransition Wakelock"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetTransition Wakelock ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v0, :cond_3

    const-string v0, "unknown"

    :cond_3
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cleared because we found a replacement network"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDeprecatedGlobalHttpProxy()V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    :sswitch_2
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v5, :cond_4

    :goto_1
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v11, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/ConnectivityService;->handleSetDependencyMet(IZ)V
    invoke-static {v10, v11, v5}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;IZ)V

    goto :goto_0

    :cond_4
    move v5, v10

    goto :goto_1

    :sswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendStickyBroadcast(Landroid/content/Intent;)V
    invoke-static {v10, v4}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v11, p1, Landroid/os/Message;->arg2:I

    if-ne v11, v5, :cond_5

    move v2, v5

    :goto_2
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleSetPolicyDataEnable(IZ)V
    invoke-static {v10, v8, v2}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;IZ)V

    goto/16 :goto_0

    :cond_5
    move v2, v10

    goto :goto_2

    :sswitch_5
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mEnableFailFastMobileDataTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    iget v11, p1, Landroid/os/Message;->arg1:I

    if-ne v11, v9, :cond_6

    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v11}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v11

    aget-object v6, v11, v10

    check-cast v6, Landroid/net/MobileDataStateTracker;

    if-eqz v6, :cond_0

    iget v10, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v10}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_ENABLE_FAIL_FAST_MOBILE_DATA: stale arg1:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " != tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1900(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleNetworkSamplingTimeout()V
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/ProxyInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleApplyDefaultProxy(Landroid/net/ProxyInfo;)V
    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkFactory(Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V
    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/Messenger;

    # invokes: Lcom/android/server/ConnectivityService;->handleUnregisterNetworkFactory(Landroid/os/Messenger;)V
    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v11, v10}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleRegisterNetworkRequest(Landroid/os/Message;)V
    invoke-static {v10, p1}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v11, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/net/NetworkRequest;

    iget v12, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/ConnectivityService;->handleReleaseNetworkRequest(Landroid/net/NetworkRequest;I)V
    invoke-static {v11, v10, v12}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;I)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$1500(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v10, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-boolean v5, v10, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    goto :goto_3

    :sswitch_e
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-ne v11, v12, :cond_7

    move v1, v5

    :goto_4
    iget-object v10, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mTethering:Lcom/android/server/connectivity/Tethering;
    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/connectivity/Tethering;->setUsbTetheringRestricted(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v10

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_4
        0xe -> :sswitch_5
        0xf -> :sswitch_6
        0x10 -> :sswitch_7
        0x11 -> :sswitch_8
        0x12 -> :sswitch_a
        0x13 -> :sswitch_b
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_9
        0x18 -> :sswitch_0
        0x19 -> :sswitch_d
        0x65 -> :sswitch_e
    .end sparse-switch
.end method
