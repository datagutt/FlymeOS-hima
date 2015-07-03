.class Lcom/android/server/input/InputManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerAutoMotiveModeBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v1, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v3, "AutoMotive_Current_Mode"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    # setter for: Lcom/android/server/input/InputManagerService;->mAutoMotiveMode:Z
    invoke-static {v2, v0}, Lcom/android/server/input/InputManagerService;->access$1402(Lcom/android/server/input/InputManagerService;Z)Z

    sget-boolean v0, Lcom/android/server/input/InputManagerService;->HTC_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoMotive_Current_Mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mAutoMotiveMode:Z
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$1400(Lcom/android/server/input/InputManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$9;->this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->handleHtcGestureStateLocked()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;)V

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
