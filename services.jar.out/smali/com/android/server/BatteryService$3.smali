.class Lcom/android/server/BatteryService$3;
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

    iput-object p1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CPU_TEMP"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/BatteryService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPU UEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/BatteryService$CPUOverheatRunnable;

    iget-object v3, p0, Lcom/android/server/BatteryService$3;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {v2, v3, v0}, Lcom/android/server/BatteryService$CPUOverheatRunnable;-><init>(Lcom/android/server/BatteryService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
