.class Lcom/android/server/BatteryService$CPUOverheatRunnable;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CPUOverheatRunnable"
.end annotation


# instance fields
.field private mEventData:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$CPUOverheatRunnable;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BatteryService$CPUOverheatRunnable;->mEventData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.power.CPU_OVERHEAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event_data"

    iget-object v2, p0, Lcom/android/server/BatteryService$CPUOverheatRunnable;->mEventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/BatteryService$CPUOverheatRunnable;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
