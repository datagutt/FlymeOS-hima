.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: enter"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 158
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->isDualSimSingleDataCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "DctController is not ready"

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 171
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 259
    const/4 v0, 0x0

    .line 262
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 220
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: REQ_CONNECT"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const v4, 0x4400a

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->setSingalActiveForDataSubscription(IZLandroid/os/Message;)V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44001

    invoke-virtual {v1, p1, v2, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 233
    const/4 v0, 0x1

    .line 234
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 237
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: EVENT_DATA_ATTACHED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1100(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 239
    const/4 v0, 0x1

    .line 240
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 246
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "IdleState: REQ_DISCONNECT_ALL, already deacted."

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44009

    const/4 v3, 0x4

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 250
    const/4 v0, 0x1

    .line 251
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_0
        0x44008 -> :sswitch_2
        0x4400a -> :sswitch_1
    .end sparse-switch
.end method
