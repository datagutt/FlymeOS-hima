.class Lcom/android/server/BatteryService$BatteryOverheatRunnable;
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
    name = "BatteryOverheatRunnable"
.end annotation


# instance fields
.field private mEventData:I

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$BatteryOverheatRunnable;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/BatteryService$BatteryOverheatRunnable;->mEventData:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/BatteryService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/BatteryService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BatteryOverheatRunnable , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/BatteryService$BatteryOverheatRunnable;->mEventData:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.battery.OVERHEATING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "event_type"

    iget v2, p0, Lcom/android/server/BatteryService$BatteryOverheatRunnable;->mEventData:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.htc.permission.APP_PLATFORM"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
