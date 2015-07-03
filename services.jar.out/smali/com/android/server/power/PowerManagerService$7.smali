.class Lcom/android/server/power/PowerManagerService$7;
.super Ljava/lang/Thread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->watchdogInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v1, "PMS"

    const-string v2, "PowerManagerService.watchdog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$7;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const-wide/32 v4, 0x493e0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PMS"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
