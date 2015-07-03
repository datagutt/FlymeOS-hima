.class Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorTempAlarmIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    # getter for: Lcom/android/server/BatteryService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive AlarmIntent,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v3}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v3

    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSupportVZWQualityLogger:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mVZWLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    const/16 v3, 0x1c2

    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    div-int/lit8 v0, v1, 0xa

    # getter for: Lcom/android/server/BatteryService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive AlarmIntent,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    # setter for: Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$502(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/BatteryService$VZWLoggerRunnable;

    iget-object v4, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    const-string v5, "Q020"

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/BatteryService$VZWLoggerRunnable;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/BatteryService$MonitorTempAlarmIntentReceiver;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->sendMonitorOverheatAlarm()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)V

    :cond_2
    monitor-exit v2

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
