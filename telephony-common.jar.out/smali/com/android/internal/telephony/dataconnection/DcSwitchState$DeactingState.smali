.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeactingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 480
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v1, "DeactingState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const v4, 0x4400b

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->setSingalActiveForDataSubscription(IZLandroid/os/Message;)V

    .line 493
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 500
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 587
    const/4 v1, 0x0

    .line 590
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 553
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: EVENT_DATA_DETACHED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mIdleState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$IdleState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 556
    const/4 v1, 0x1

    .line 557
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 561
    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: REQ_DISCONNECT_ALL, already deacting."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 563
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44009

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 565
    const/4 v1, 0x1

    .line 566
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 571
    .end local v1    # "retVal":Z
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 573
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "DeactingState: REQ_CONNECT, request is defered."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1900(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Landroid/os/Message;)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44001

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 578
    const/4 v1, 0x1

    .line 579
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 500
    nop

    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_2
        0x44008 -> :sswitch_1
        0x4400b -> :sswitch_0
    .end sparse-switch
.end method
