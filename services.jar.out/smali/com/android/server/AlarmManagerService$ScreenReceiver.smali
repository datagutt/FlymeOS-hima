.class Lcom/android/server/AlarmManagerService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenReceiver"
.end annotation


# instance fields
.field mLockObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput-boolean v6, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    const-string v4, "AlarmManager"

    const-string v5, "ACTION_SCREEN_ON"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->dumpBlockedAlarmsLocked()V
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)V

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverBlockedAlarmsLocked()V
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1100(Lcom/android/server/AlarmManagerService;)V

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->recoverEPSScreenOffBlockedAlarmsLocked()V
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;)V

    monitor-exit v5

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sput-boolean v5, Lcom/android/server/AlarmManagerService;->isScreenOn:Z

    const-string v4, "AlarmManager"

    const-string v5, "ACTION_SCREEN_OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConnectStateLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$1700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/AlarmManagerService;->mScreenOffElapsedTime:J
    invoke-static {v4, v6, v7}, Lcom/android/server/AlarmManagerService;->access$1802(Lcom/android/server/AlarmManagerService;J)J

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v4, v6}, Lcom/android/server/AlarmManagerService;->access$1902(Lcom/android/server/AlarmManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v4, v6}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "connectivity"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v4, v6}, Lcom/android/server/AlarmManagerService;->access$1902(Lcom/android/server/AlarmManagerService;Z)Z

    :cond_2
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v4, v6}, Lcom/android/server/AlarmManagerService;->access$2002(Lcom/android/server/AlarmManagerService;Z)Z

    :cond_3
    const-string v4, "AlarmManager"

    const-string v6, "[AlarmQueuing] screen off now: "

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AlarmQueuing] data connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCurrentDataConnectState:Z
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[AlarmQueuing] wifi connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$ScreenReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mCurrentWifiConnectState:Z
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$2000(Lcom/android/server/AlarmManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4
.end method
