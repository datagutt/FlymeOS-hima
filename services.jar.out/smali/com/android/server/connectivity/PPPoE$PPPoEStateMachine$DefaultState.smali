.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    iput-wide v2, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # setter for: Lcom/android/server/connectivity/PPPoE;->monline_start_time:J
    invoke-static {v0, v2, v3}, Lcom/android/server/connectivity/PPPoE;->access$802(Lcom/android/server/connectivity/PPPoE;J)J

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v1, v0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mErrorOcurred:Z
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PPPoE"

    const-string v1, "back to disconnect OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/net/wifi/PPPOEConfig;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mNwService:Landroid/os/INetworkManagementService;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$200(Lcom/android/server/connectivity/PPPoE;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, v11, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iget-object v2, v11, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v3, v11, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iget v4, v11, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iget v5, v11, Landroid/net/wifi/PPPOEConfig;->mru:I

    iget v6, v11, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iget v7, v11, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iget v8, v11, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iget v9, v11, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-interface/range {v0 .. v9}, Landroid/os/INetworkManagementService;->startPPPoE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v3, v3, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # ++operator for: Lcom/android/server/connectivity/PPPoE;->msgcount:I
    invoke-static {v3}, Lcom/android/server/connectivity/PPPoE;->access$1104(Lcom/android/server/connectivity/PPPoE;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget v2, v11, Landroid/net/wifi/PPPOEConfig;->timeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mConnectingState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1300(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in startPPPoE() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do stopPPPoE in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_3
    const-string v0, "PPPoE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in DefaultState: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_1
    .end sparse-switch
.end method
