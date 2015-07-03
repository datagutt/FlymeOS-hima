.class Lcom/android/server/location/GpsLocationProvider$6;
.super Landroid/content/BroadcastReceiver;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "receive broadcast intent, action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v9, v12}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->hibernate()V
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$900(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    :cond_2
    const-string v9, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v9, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V
    invoke-static {v9, p2}, Lcom/android/server/location/GpsLocationProvider;->access$1100(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "noConnectivity"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v7, 0x1

    :goto_1
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v9, v7, v3}, Lcom/android/server/location/GpsLocationProvider;->updateNetworkState(ILandroid/net/NetworkInfo;)V

    goto :goto_0

    :cond_5
    const/4 v7, 0x2

    goto :goto_1

    :cond_6
    const-string v9, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1300(Lcom/android/server/location/GpsLocationProvider;)V

    goto :goto_0

    :cond_8
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "android.intent.action.ACTION_SUBINFO_CONTENT_CHANGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_9
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "received SIM realted action: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SIM MCC/MNC is available: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1400(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1600(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    invoke-static {v11}, Lcom/android/server/location/GpsLocationProvider;->access$1500(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    :cond_a
    const-string v9, "GpsLocationProvider"

    const-string v10, "SIM MCC/MNC is still not available"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string v9, "com.htc.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "GpsLocationProvider"

    const-string v10, "ALARM_XTRA_TIMEOUT"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v10, 0x6

    const/4 v11, 0x0

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v9, v10, v12, v11}, Lcom/android/server/location/GpsLocationProvider;->access$1700(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const-string v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v9, "GpsLocationProvider"

    const-string v10, "receive TelephonyIntents.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const-string v10, "phoneinECMState"

    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v9, v10}, Lcom/android/server/location/GpsLocationProvider;->access$1802(Lcom/android/server/location/GpsLocationProvider;Z)Z

    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mECMState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v11}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mIsVZW:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$1900()Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "GpsLocationProvider"

    const-string v10, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  (E911)"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "enabled"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v9, "GpsLocationProvider"

    const-string v10, "GPS_ENABLED_CHANGE_ACTION: android.location.GPS_ENABLED_CHANGE EXTRA_GPS_ENABLED: false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/4 v10, 0x1

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z
    invoke-static {v9, v10}, Lcom/android/server/location/GpsLocationProvider;->access$2102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mECMState:Z
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1800(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)V

    :goto_2
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # setter for: Lcom/android/server/location/GpsLocationProvider;->mECMStateUpdate:Z
    invoke-static {v9, v12}, Lcom/android/server/location/GpsLocationProvider;->access$2102(Lcom/android/server/location/GpsLocationProvider;Z)Z

    goto/16 :goto_0

    :cond_e
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # invokes: Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V
    invoke-static {v9, v12}, Lcom/android/server/location/GpsLocationProvider;->access$800(Lcom/android/server/location/GpsLocationProvider;Z)V

    goto :goto_2

    :cond_f
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "GpsLocationProvider"

    const-string v10, "ACTION_BOOT_COMPLETED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mIsSprint:Z
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$2300()Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v9, "GpsLocationProvider"

    const-string v10, "Start XTService"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "com.qualcomm.location.XT"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "com.qualcomm.location.XT.XTService"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$1200(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v9, "GpsLocationProvider"

    const-string v10, "Start XTService Fail"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
