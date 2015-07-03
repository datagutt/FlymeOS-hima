.class Lcom/android/server/input/InputManagerService$19;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerCoverOffBroadcastReceiver()V
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

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.cover.closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v1, v0, Lcom/android/server/input/InputManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/server/input/InputManagerService;->mIsDotViewClosed:Z
    invoke-static {v0, v2}, Lcom/android/server/input/InputManagerService;->access$2402(Lcom/android/server/input/InputManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mGloveModeSetting:I
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$1800(Lcom/android/server/input/InputManagerService;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const-string v0, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GloveMode] mIsDotViewClosed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/input/InputManagerService$19;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mIsDotViewClosed:Z
    invoke-static {v3}, Lcom/android/server/input/InputManagerService;->access$2400(Lcom/android/server/input/InputManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
