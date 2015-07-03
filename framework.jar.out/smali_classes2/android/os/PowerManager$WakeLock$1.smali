.class Landroid/os/PowerManager$WakeLock$1;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock$1;->this$1:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock$1;->this$1:Landroid/os/PowerManager$WakeLock;

    # getter for: Landroid/os/PowerManager$WakeLock;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/PowerManager$WakeLock;->access$000(Landroid/os/PowerManager$WakeLock;)Landroid/os/IBinder;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$WakeLock$1;->this$1:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PowerManager"

    const-string v3, "mReleaser: Exception caught. restore it."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock$1;->this$1:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
