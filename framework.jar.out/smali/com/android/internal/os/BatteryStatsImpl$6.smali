.class Lcom/android/internal/os/BatteryStatsImpl$6;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->sendBroadcastHelperWithPermission(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v1, "BatSI"

    const-string/jumbo v2, "send intent S"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$1300(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    # getter for: Lcom/android/internal/os/BatteryStatsImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$1300(Lcom/android/internal/os/BatteryStatsImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$6;->val$intent:Landroid/content/Intent;

    const-string v3, "com.htc.permission.APP_PLATFORM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    const-string v1, "BatSI"

    const-string/jumbo v2, "send intent E"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BatSI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send intent exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
