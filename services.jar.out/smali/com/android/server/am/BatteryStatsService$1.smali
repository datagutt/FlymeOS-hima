.class Lcom/android/server/am/BatteryStatsService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    if-nez p2, :cond_1

    const-string v2, "BatSS"

    const-string v3, "onReceive, intent is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v2, "BatSS"

    const-string v3, "onReceive, action is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/server/am/BatteryStatsService;->DEBUG_ON:Z
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "BatSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$200(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$200(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService$1;->this$0:Lcom/android/server/am/BatteryStatsService;

    # getter for: Lcom/android/server/am/BatteryStatsService;->mHandler:Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;
    invoke-static {v2}, Lcom/android/server/am/BatteryStatsService;->access$200(Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/BatteryStatsService$BatteryStatsHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    const-string v2, "BatSS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
