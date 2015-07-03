.class Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;
.super Lcom/android/internal/util/State;
.source "DcSwitchState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcSwitchState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcSwitchState$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v1, "ActedState: enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I
    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    .line 379
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x44001

    const/4 v5, 0x1

    .line 386
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 473
    const/4 v1, 0x0

    .line 476
    .local v1, "retVal":Z
    :goto_0
    return v1

    .line 430
    .end local v1    # "retVal":Z
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 431
    .local v0, "apnRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActedState: REQ_CONNECT, apnRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 436
    const/4 v1, 0x1

    .line 437
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 440
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v1    # "retVal":Z
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 441
    .restart local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActedState: REQ_DISCONNECT apnRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, p1, v6, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 446
    const/4 v1, 0x1

    .line 447
    .restart local v1    # "retVal":Z
    goto :goto_0

    .line 450
    .end local v0    # "apnRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v1    # "retVal":Z
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "ActedState: REQ_DISCONNECT_ALL"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mId:I
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseAllRequests(I)V

    .line 453
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mAc:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$700(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x44009

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 456
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mDeactingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1400(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$DeactingState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1500(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 457
    const/4 v1, 0x1

    .line 458
    .restart local v1    # "retVal":Z
    goto/16 :goto_0

    .line 461
    .end local v1    # "retVal":Z
    :sswitch_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    const-string v3, "ActedState: EVENT_DATA_DETACHED"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->log(Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActedState;->this$0:Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->mActingState:Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$800(Lcom/android/internal/telephony/dataconnection/DcSwitchState;)Lcom/android/internal/telephony/dataconnection/DcSwitchState$ActingState;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/dataconnection/DcSwitchState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->access$1600(Lcom/android/internal/telephony/dataconnection/DcSwitchState;Lcom/android/internal/util/IState;)V

    .line 464
    const/4 v1, 0x1

    .line 465
    .restart local v1    # "retVal":Z
    goto/16 :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0x44000 -> :sswitch_0
        0x44002 -> :sswitch_1
        0x44008 -> :sswitch_2
        0x4400b -> :sswitch_3
    .end sparse-switch
.end method
