.class Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;
.super Ljava/lang/Object;
.source "HtcWakeLockMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonitorTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$4800(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$4900(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->calcRatio()V
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$5000(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getAbnormalPkg()Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$5100(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLastScanTime:J
    invoke-static {v7, v10, v11}, Lcom/android/server/power/HtcWakeLockMonitor;->access$5202(Lcom/android/server/power/HtcWakeLockMonitor;J)J

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.htcpowermanager.batterymonitor.APP_LIST_DETECTED"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "bad_app_list"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$5300(Lcom/android/server/power/HtcWakeLockMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "HtcWLM"

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->criteriaToString()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/HtcWakeLockMonitor;->access$5400(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4300(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_1
    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skip tag w/ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", UID<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4400(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$MonitorTask;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mLockRecordList:Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2500(Lcom/android/server/power/HtcWakeLockMonitor;)Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;

    move-result-object v7

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z

    move-result v5

    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MonitorTask: shouldSkipAll="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "HtcWLM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v7, "HtcWLM"

    const-string v8, "    no abnormal app found!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
