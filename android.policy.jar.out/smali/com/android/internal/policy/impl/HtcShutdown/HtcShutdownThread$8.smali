.class Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;
.super Landroid/os/FileObserver;
.source "HtcShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

.field final synthetic val$pm:Landroid/os/IPowerManager;

.field final synthetic val$screenObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;Ljava/lang/String;Landroid/os/IPowerManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->this$0:Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread;

    iput-object p3, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->val$pm:Landroid/os/IPowerManager;

    iput-object p4, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->val$screenObject:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    const-string v0, "HtcShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenStateObserver, event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->val$pm:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isActualScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcShutdownThread"

    const-string v1, "event, screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->val$screenObject:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/HtcShutdown/HtcShutdownThread$8;->val$screenObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
