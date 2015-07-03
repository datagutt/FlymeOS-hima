.class Lcom/android/server/BatteryService$19;
.super Landroid/os/UEventObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const-string v1, "1"

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mInvalidCharger:I
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$1702(Lcom/android/server/BatteryService;I)I

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UEvent update for InvalidCharger"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/BatteryService$19;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
