.class Lcom/android/server/BatteryService$9;
.super Ljava/lang/Thread;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->addErrorToDropBoxForHTC(Ljava/lang/String;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$entryTime:J

.field final synthetic val$logFile:Ljava/io/File;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Landroid/os/DropBoxManager;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    iput-object p3, p0, Lcom/android/server/BatteryService$9;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/BatteryService$9;->val$dbox:Landroid/os/DropBoxManager;

    iput-wide p6, p0, Lcom/android/server/BatteryService$9;->val$entryTime:J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/misc/HTC_BATT_LOG@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dbox_tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    invoke-direct {v8, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n----- KERNEL -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/version"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v8, v3}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    const-string v0, "\n----- CMDLINE -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/cmdline"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V
    invoke-static {v0, v1, v8, v3}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "\n----- LOG FILE -----\n"

    invoke-virtual {v8, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/BatteryService$9;->this$0:Lcom/android/server/BatteryService;

    iget-object v1, p0, Lcom/android/server/BatteryService$9;->val$logFile:Ljava/io/File;

    # invokes: Lcom/android/server/BatteryService;->logTextFile(Ljava/io/File;Ljava/io/FileWriter;)V
    invoke-static {v0, v1, v8}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;Ljava/io/File;Ljava/io/FileWriter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$9;->val$dbox:Landroid/os/DropBoxManager;

    const-string v1, "HTC_BATT_LOG"

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/server/BatteryService$9;->val$entryTime:J

    invoke-virtual/range {v0 .. v5}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;IJ)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move-object v7, v8

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v8

    goto :goto_0

    :catch_1
    move-exception v6

    :goto_1
    :try_start_3
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in dumping error information"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    :cond_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_5

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v7, v8

    goto :goto_2

    :catch_4
    move-exception v6

    move-object v7, v8

    goto :goto_1
.end method
