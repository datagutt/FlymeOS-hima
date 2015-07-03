.class Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;
.super Lcom/android/internal/util/State;
.source "WakeLockStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WakeLockStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WakeLockStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WakeLockStateMachine;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/WakeLockStateMachine;->sendMessageDelayed(IJ)V

    .line 146
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v1, "acquired wakelock, leaving Idle state"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 185
    :pswitch_0
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    invoke-static {v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$100(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$200(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 166
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/WakeLockStateMachine;->handleHtcGsmCbMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    iget-object v2, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWaitingState:Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;
    invoke-static {v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$100(Lcom/android/internal/telephony/WakeLockStateMachine;)Lcom/android/internal/telephony/WakeLockStateMachine$WaitingState;

    move-result-object v2

    # invokes: Lcom/android/internal/telephony/WakeLockStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$300(Lcom/android/internal/telephony/WakeLockStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 173
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    # getter for: Lcom/android/internal/telephony/WakeLockStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/internal/telephony/WakeLockStateMachine;->access$000(Lcom/android/internal/telephony/WakeLockStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "mWakeLock is still held after release"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/WakeLockStateMachine$IdleState;->this$0:Lcom/android/internal/telephony/WakeLockStateMachine;

    const-string v2, "mWakeLock released"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/WakeLockStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
