.class Lcom/android/server/net/NetworkPolicyManagerService$11;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    const-string v4, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/NetworkInfo;

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const/4 v14, 0x1

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkPolicy;

    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWifiStateReceiver: meteredHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",EPS mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mEPSenable:Z
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    :cond_2
    if-nez v2, :cond_5

    if-eqz v14, :cond_5

    new-instance v2, Landroid/net/NetworkPolicy;

    const/4 v4, -0x1

    const-string v5, "UTC"

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v15, 0x1

    invoke-direct/range {v2 .. v15}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;ILjava/lang/String;JJJJZZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyLocked(Landroid/net/NetworkPolicy;)V

    :cond_3
    :goto_2
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v2, :cond_3

    :try_start_1
    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    if-eqz v4, :cond_3

    iput-boolean v14, v2, Landroid/net/NetworkPolicy;->metered:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$11;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
