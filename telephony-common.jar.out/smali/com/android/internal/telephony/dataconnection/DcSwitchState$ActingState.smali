.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v1, "ActingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 278
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 365
    const/4 v0, 0x0

    .line 368
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 325
    .end local v0    # "retVal":Z
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "ActingState: REQ_CONNECT"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44001

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 329
    const/4 v0, 0x1

    .line 330
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 334
    .end local v0    # "retVal":Z
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "ActingState: EVENT_DATA_ATTACHED"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActedState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1000(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1200(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 337
    const/4 v0, 0x1

    .line 338
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 342
    .end local v0    # "retVal":Z
    :sswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v2, "ActingState: REQ_DISCONNECT_ALL, request is defered."

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1300(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Landroid/os/Message;)V

    .line 353
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x44009

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 356
    const/4 v0, 0x1

    .line 357
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_0
        0x44008 -> :sswitch_2
        0x4400a -> :sswitch_1
    .end sparse-switch
.end method
