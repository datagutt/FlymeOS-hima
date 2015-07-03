.class final Lcom/android/server/BatteryService$BatteryListener;
.super Landroid/os/IBatteryPropertiesListener$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/IBatteryPropertiesListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$BatteryListener;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public batteryPropertiesChanged(Landroid/os/BatteryProperties;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Landroid/os/BatteryProperties;)V
    invoke-static {v2, p1}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;Landroid/os/BatteryProperties;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/BatteryService$BatteryListener;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mUpdateWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
