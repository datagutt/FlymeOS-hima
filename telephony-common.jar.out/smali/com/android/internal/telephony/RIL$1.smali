.class Lcom/android/internal/telephony/RIL$1;
.super Landroid/content/BroadcastReceiver;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 424
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 425
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "android.bluetooth.profile.extra.STATE"

    const/high16 v5, -0x80000000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 427
    .local v1, "bondState":I
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT device ConnectionState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "bCheckFlag":Z
    if-eqz v3, :cond_2

    .line 432
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 434
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    .line 435
    .local v2, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v2, :cond_1

    .line 437
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 450
    .end local v2    # "btClass":Landroid/bluetooth/BluetoothClass;
    :cond_0
    :goto_0
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bCheckFlag= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v4, p0, Lcom/android/internal/telephony/RIL$1;->this$0:Lcom/android/internal/telephony/RIL;

    # invokes: Lcom/android/internal/telephony/RIL;->sendCarkitState(Z)V
    invoke-static {v4, v0}, Lcom/android/internal/telephony/RIL;->access$000(Lcom/android/internal/telephony/RIL;Z)V

    .line 455
    .end local v0    # "bCheckFlag":Z
    .end local v1    # "bondState":I
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :goto_1
    return-void

    .line 442
    .restart local v0    # "bCheckFlag":Z
    .restart local v1    # "bondState":I
    .restart local v2    # "btClass":Landroid/bluetooth/BluetoothClass;
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    const-string v4, "RILJ"

    const-string v5, "Get BT paired class is empty."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 447
    .end local v2    # "btClass":Landroid/bluetooth/BluetoothClass;
    :cond_2
    const-string v4, "RILJ"

    const-string v5, "Get BT paired device is empty."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v0    # "bCheckFlag":Z
    .end local v1    # "bondState":I
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_3
    const-string v4, "RILJ"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL received unexpected Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
