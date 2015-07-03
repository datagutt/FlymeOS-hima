.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;
.super Lcom/android/internal/util/State;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const-string v1, "PPPoE"

    const-string v2, "ENTER ConnectedState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v2, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v2, 0x2

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/net/wifi/PPPOEInfo;->online_time:J

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/connectivity/PPPoE;->monline_start_time:J
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/PPPoE;->access$802(Lcom/android/server/connectivity/PPPoE;J)J

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v2, "SUCCESS"

    const-string v3, "0"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net.pppoe.interface"

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const v2, 0xffdc

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->createPhysicalNetwork(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v2

    const v3, 0xffdc

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->addInterfaceToNetwork(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setupPppoeRoute()Z
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2600(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const v2, 0xffdc

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->updateDns(I)Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)Z

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v1

    const v2, 0xffdc

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    const-string v1, "PPPoE"

    const-string v2, "set pppoe to default net"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setup pppoe dns & route error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public exit()V
    .locals 12

    const-string v9, "PPPoE"

    const-string v10, "EXIT ConnectedState"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v9, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v10, v10, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v10

    const v11, 0xffdc

    invoke-interface {v9, v10, v11}, Landroid/os/INetworkManagementService;->removeInterfaceFromNetwork(Ljava/lang/String;I)V

    iget-object v9, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v9

    const v10, 0xffdc

    invoke-interface {v9, v10}, Landroid/os/INetworkManagementService;->removeNetwork(I)V

    iget-object v9, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    const/4 v8, -0x1

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v9, v7

    if-lez v9, :cond_0

    move-object v0, v7

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget v8, v6, Landroid/net/Network;->netId:I

    :cond_0
    const-string v9, "PPPoE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifiNetId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->updateDns(I)Z
    invoke-static {v9, v8}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)Z

    iget-object v9, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v9, v9, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v9}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/os/INetworkManagementService;->setDefaultNetId(I)V

    const-string v9, "PPPoE"

    const-string v10, "set wifi to default net"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v9, "PPPoE"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "recovery to wifi error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v1, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v1

    :sswitch_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v3, "ALREADY_ONLINE"

    const-string v4, "0"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2700(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v1, :cond_0

    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed for iface "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v4, v4, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/connectivity/PPPoE;->access$400(Lcom/android/server/connectivity/PPPoE;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reomved in ConnectedState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v3, "FAILURE"

    const-string v4, "691"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE;->access$402(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v2, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    const-string v2, "PPPoE"

    const-string v3, "already connected while interface come up, again!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, v2, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopPPPoE()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # setter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v2, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1002(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Z)Z

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$ConnectedState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1500(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v2, "PPPoE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in stopPPPoE() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x65 -> :sswitch_4
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_0
    .end sparse-switch
.end method
