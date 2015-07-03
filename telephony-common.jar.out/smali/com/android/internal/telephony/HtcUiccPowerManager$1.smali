.class Lcom/android/internal/telephony/HtcUiccPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcUiccPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcUiccPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    const-string v6, "state"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    # setter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$002(Lcom/android/internal/telephony/HtcUiccPowerManager;Z)Z

    .line 82
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive Intent.ACTION_AIRPLANE_MODE_CHANGED enable="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v7}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z
    invoke-static {v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->clearCardSetup(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "state":I
    new-instance v2, Lcom/android/internal/telephony/CoexistInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CoexistInfo;-><init>()V

    .line 89
    .local v2, "info":Lcom/android/internal/telephony/CoexistInfo;
    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 90
    iput v8, v2, Lcom/android/internal/telephony/CoexistInfo;->wifi_state:I

    .line 94
    :goto_1
    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CoexistInfo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    aget-object v5, v5, v10

    if-eqz v5, :cond_2

    .line 96
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    aget-object v5, v5, v10

    invoke-virtual {v5, v2, v9}, Lcom/android/internal/telephony/PhoneBase;->setDSDACoexistInfo(Lcom/android/internal/telephony/CoexistInfo;Landroid/os/Message;)V

    .line 98
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    aget-object v5, v5, v8

    if-eqz v5, :cond_0

    .line 99
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5, v2, v9}, Lcom/android/internal/telephony/PhoneBase;->setDSDACoexistInfo(Lcom/android/internal/telephony/CoexistInfo;Landroid/os/Message;)V

    goto :goto_0

    .line 92
    :cond_3
    iput v10, v2, Lcom/android/internal/telephony/CoexistInfo;->wifi_state:I

    goto :goto_1

    .line 101
    .end local v2    # "info":Lcom/android/internal/telephony/CoexistInfo;
    .end local v3    # "state":I
    :cond_4
    const-string v5, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$300(Lcom/android/internal/telephony/HtcUiccPowerManager;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$400(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$300(Lcom/android/internal/telephony/HtcUiccPowerManager;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$500(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v5, v6, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 106
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v4

    .line 107
    .local v4, "subId":[J
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$500(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    move-result-object v5

    new-instance v6, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    iget-object v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    aget-wide v8, v4, v10

    invoke-direct {v6, v7, v1, v8, v9}, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;-><init>(Lcom/android/internal/telephony/HtcUiccPowerManager;IJ)V

    aput-object v6, v5, v1

    .line 108
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$300(Lcom/android/internal/telephony/HtcUiccPowerManager;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager$1;->this$0:Lcom/android/internal/telephony/HtcUiccPowerManager;

    # getter for: Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;
    invoke-static {v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->access$500(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    move-result-object v6

    aget-object v6, v6, v1

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
