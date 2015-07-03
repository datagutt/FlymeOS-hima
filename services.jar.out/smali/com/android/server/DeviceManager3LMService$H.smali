.class final Lcom/android/server/DeviceManager3LMService$H;
.super Landroid/os/Handler;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final SET_ADB_ENABLE_DISABLE:I = 0x1f4


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$H;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$H;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService;->isUsbBlocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$H;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService;->isAdbBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$H;->this$0:Lcom/android/server/DeviceManager3LMService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/DeviceManager3LMService;->setUSBEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/DeviceManager3LMService;->access$1000(Lcom/android/server/DeviceManager3LMService;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService$H;->this$0:Lcom/android/server/DeviceManager3LMService;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/DeviceManager3LMService;->setUSBEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/server/DeviceManager3LMService;->access$1000(Lcom/android/server/DeviceManager3LMService;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_0
    .end packed-switch
.end method
