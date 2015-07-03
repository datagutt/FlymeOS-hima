.class Lcom/android/server/input/InputManagerService$8;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerScreenStateBroadcastReceiver()V
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

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isActualScreenOn()Z

    move-result v0

    :goto_0
    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel all due to getting PMS screen off broadcast. ActualScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$8;->this$0:Lcom/android/server/input/InputManagerService;

    # getter for: Lcom/android/server/input/InputManagerService;->mPtr:J
    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const-string v1, "Actual Screen is off"

    # invokes: Lcom/android/server/input/InputManagerService;->nativeResetAndDropEverything(JLjava/lang/String;)V
    invoke-static {v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$1300(JLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
