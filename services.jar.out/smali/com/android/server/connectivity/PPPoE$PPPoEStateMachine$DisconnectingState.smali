.class Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;
.super Lcom/android/internal/util/State;
.source "PPPoE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mPPPOEInfo:Landroid/net/wifi/PPPOEInfo;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$700(Lcom/android/server/connectivity/PPPoE;)Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    iput-wide v4, v0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # setter for: Lcom/android/server/connectivity/PPPoE;->monline_start_time:J
    invoke-static {v0, v4, v5}, Lcom/android/server/connectivity/PPPoE;->access$802(Lcom/android/server/connectivity/PPPoE;J)J

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->setPPPoEState(I)V
    invoke-static {v0, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$900(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v3, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method public exit()V
    .locals 3

    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PPPoE"

    const-string v1, "EXIT DisconnectingState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v0, v0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # getter for: Lcom/android/server/connectivity/PPPoE;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/connectivity/PPPoE;->access$300(Lcom/android/server/connectivity/PPPoE;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PPPOE_COMPLETED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$3200(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in DisconnectingState: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    const-string v2, "FAILURE"

    const-string v3, "691"

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->feedbackCMDState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$1800(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # setter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE;->access$402(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in DisconnectingState: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$3000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    const-string v1, "PPPoE"

    const-string v2, "disconnection while interface up,strange?!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v1, v1, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->this$0:Lcom/android/server/connectivity/PPPoE;

    # setter for: Lcom/android/server/connectivity/PPPoE;->PPPoEIface:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE;->access$402(Lcom/android/server/connectivity/PPPoE;Ljava/lang/String;)Ljava/lang/String;

    # getter for: Lcom/android/server/connectivity/PPPoE;->DBG_DETAIL:Z
    invoke-static {}, Lcom/android/server/connectivity/PPPoE;->access$600()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "PPPoE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in DisconnectingState: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    iget-object v2, p0, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine$DisconnectingState;->this$1:Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;

    # getter for: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->mDefaultState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$2000(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;->access$3100(Lcom/android/server/connectivity/PPPoE$PPPoEStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_0
    .end sparse-switch
.end method
