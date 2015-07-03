.class Lcom/android/server/BatteryService$2;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mVZWLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$2;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "alarm"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "no alarm service"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/android/server/BatteryService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cancel monitorTempwhenOverheat"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    # getter for: Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    # setter for: Lcom/android/server/BatteryService;->mOverHeatIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$502(Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
