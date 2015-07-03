.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] USB UEVENT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    if-nez v7, :cond_1

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[USBNET][UEventObserver] mHandler = null"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "USB_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "ACCESSORY"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "SWITCH_NAME"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "SWITCH_STATE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_2

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "START"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "got accessory start"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_14

    if-eqz v6, :cond_14

    :try_start_0
    const-string v7, "usb_connect2pc"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mConnect2Pc:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$402(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x69

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not parse switch state from event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v7, "scsi_cmd"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[USB_SCSI] Enable ADB by SCSI uevent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "[USB_SCSI] Disable ADB by SCSI uevent"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    const-string v7, "dock"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "16"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x66

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_7
    const-string v7, "0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mHostCable:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$602(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x66

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_8
    const-string v7, "usb_diag"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagState:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$702(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDiagState:I
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$700(Lcom/android/server/usb/UsbDeviceManager;)I

    move-result v7

    if-ne v7, v11, :cond_9

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "persist.sys.usb.diag.config = diagon"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persist.sys.usb.diag.config"

    const-string v8, "diagon"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "persist.sys.usb.diag.config = diagoff"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "persist.sys.usb.diag.config"

    const-string v8, "diagoff"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "diag"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$802(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/usb/UsbDeviceManager;->access$800(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "diag_mdm"

    # invokes: Lcom/android/server/usb/UsbDeviceManager;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->access$900(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mDefaultKernelFunctions:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$802(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v7, "mirror_link"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mHtc_Mode:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1002(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x67

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_b
    const-string v7, "prj2_status"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "online"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1102(Lcom/android/server/usb/UsbDeviceManager;I)I

    :cond_c
    :goto_1
    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x68

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_d
    const-string v7, "offline"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x2

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1102(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_1

    :cond_e
    const-string v7, "projecting"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x3

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector2State:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1102(Lcom/android/server/usb/UsbDeviceManager;I)I

    goto :goto_1

    :cond_f
    const-string v7, "htcmode"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v7, "online"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1202(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x6b

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_10
    const-string v7, "offline"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mProjector1StateIsPlug:Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1202(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x6b

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_11
    const-string v7, "USB_PERF"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] SWITCH_NAME: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",SWITCH_STATE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mUsbPerfLock:I
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1302(Lcom/android/server/usb/UsbDeviceManager;I)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x6c

    const/4 v9, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0

    :cond_12
    const-string v7, "function_switch_on"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] SWITCH_NAME: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",SWITCH_STATE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x6d

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(ILjava/lang/Object;II)V
    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_13
    const-string v7, "function_switch_off"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[USBNET] SWITCH_NAME: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",SWITCH_STATE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v8, 0x0

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->mSwitchFunction:Z
    invoke-static {v7, v8}, Lcom/android/server/usb/UsbDeviceManager;->access$1402(Lcom/android/server/usb/UsbDeviceManager;Z)Z

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # setter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/server/usb/UsbDeviceManager;->access$1502(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x6d

    iget-object v9, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->szSwitchFunctions:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/usb/UsbDeviceManager;->access$1500(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(ILjava/lang/Object;II)V
    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_14
    const-string v7, "MODULE"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "EVENT"

    invoke-virtual {p1, v7}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    const-string v7, "DEV_NOT_SUPPORTED"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v7}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v7

    const/16 v8, 0x65

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->update2(II)V
    invoke-static {v7, v8, v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;II)V

    goto/16 :goto_0
.end method
