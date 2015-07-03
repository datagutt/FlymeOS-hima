.class final Lcom/android/server/power/PowerManagerService$PMS2Handler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PMS2Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PMS2Handler;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PMS2Handler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenShot()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;)V

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PMS2Handler;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleNotifyScreenOffForWifi()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
