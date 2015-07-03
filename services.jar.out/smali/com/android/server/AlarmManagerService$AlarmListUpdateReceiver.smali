.class Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmListUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.CUPD_CONF_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.intent.action.CUPD_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.htc.permission.HtcCupd.SERVICE"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AlarmQueuing] AlarmListUpdateReceiver onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.htc.intent.action.CUPD_CONF_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.intent.action.CUPD_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->runAlarmLoadList:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "AlarmManager"

    const-string v3, "[AlarmQueuing] post alarm-list load task"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmListUpdateReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->runAlarmLoadList:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$2100(Lcom/android/server/AlarmManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
