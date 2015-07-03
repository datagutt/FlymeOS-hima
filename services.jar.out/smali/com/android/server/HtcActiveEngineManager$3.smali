.class Lcom/android/server/HtcActiveEngineManager$3;
.super Landroid/content/BroadcastReceiver;
.source "HtcActiveEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HtcActiveEngineManager;->registerPowerSavingRelatedStatusBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcActiveEngineManager;


# direct methods
.method constructor <init>(Lcom/android/server/HtcActiveEngineManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/HtcActiveEngineManager;->DEBUG_HTC:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcActiveEngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and takes handle of it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htcpowermanager.action.ENTER_EPS"

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.htcpowermanager.action.LEAVE_EPS"

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    iget-object v1, v0, Lcom/android/server/HtcActiveEngineManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcActiveEngineManager$3;->this$0:Lcom/android/server/HtcActiveEngineManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.htc.htcpowermanager.action.ENTER_EPS"

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/server/HtcActiveEngineManager;->handleHtcActiveEngineForPowerSavingLocked(Z)V
    invoke-static {v2, v0}, Lcom/android/server/HtcActiveEngineManager;->access$100(Lcom/android/server/HtcActiveEngineManager;Z)V

    monitor-exit v1

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
