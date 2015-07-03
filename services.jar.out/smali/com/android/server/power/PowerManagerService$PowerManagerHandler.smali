.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/power/PowerManagerService;->sendClearScreenTimeoutTask(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityEventTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6800(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->checkIfOOBEStatusFinished(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->startShutdownDevice()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6900(Lcom/android/server/power/PowerManagerService;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mOOBESuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/power/SuspendBlocker;->release()V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # setter for: Lcom/android/server/power/PowerManagerService;->mHoldingOOBESuspendBlocker:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$5402(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handlePsensorNearMonitorTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7000(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
