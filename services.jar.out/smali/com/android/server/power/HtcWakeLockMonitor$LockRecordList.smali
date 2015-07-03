.class final Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;
.super Ljava/util/ArrayList;
.source "HtcWakeLockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LockRecordList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private skipScan:Z

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/HtcWakeLockMonitor;Lcom/android/server/power/HtcWakeLockMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->dump()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->updateAllHeldDuration()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->calcRatio()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getAbnormalPkg()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->stopDeadRecord(Landroid/os/IBinder;)V

    return-void
.end method

.method private addRecord(ILjava/lang/String;IILandroid/os/IBinder;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;-><init>(Lcom/android/server/power/HtcWakeLockMonitor;ILjava/lang/String;IILandroid/os/IBinder;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->add(Ljava/lang/Object;)Z

    :cond_1
    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->start(Landroid/os/IBinder;)V
    invoke-static {v0, p5}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning on."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private calcRatio()V
    .locals 10

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->getPackageName()V
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$4000(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1300(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)[J

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->MINIMUM_DURATION:J
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4100(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getTotalHeldDuration([JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x64

    mul-long/2addr v6, v2

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v8

    div-long/2addr v6, v8

    long-to-int v0, v6

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "HtcWLM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calcRatio: ratio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v7}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->WL_HELD_RATIO:I
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4200(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v5

    if-lt v0, v5, :cond_2

    # operator++ for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1608(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    goto/16 :goto_0
.end method

.method private dump()V
    .locals 9

    const/16 v8, 0xa

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "WakeLock Record Dumping:\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalScreenOffTime:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3400(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mTotalTime:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3500(Lcom/android/server/power/HtcWakeLockMonitor;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->update()V

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v8, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " more...\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v4, "HtcWLM"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Lock("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->info()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3600(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getAbnormalPkg()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->shouldMonitor()Z
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isAbnormal()Z
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->pkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->abnormal_count:I
    invoke-static {v3, v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1602(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;I)I

    const/4 v4, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->heldDuration:[J
    invoke-static {v3, v4}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1302(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;[J)[J

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAbnormalPkg: pkgName is null for record.tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getTotalHeldDuration([JJ)J
    .locals 16

    const-wide/16 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v9

    const/4 v12, 0x0

    aget-object v9, v9, v12

    array-length v6, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, p2

    const-wide/16 v12, 0x0

    cmp-long v9, v4, v12

    if-lez v9, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-gtz v9, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Abnormal case found. ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v12, 0x0

    :goto_0
    return-wide v12

    :cond_2
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v9

    const/4 v12, 0x1

    aget-object v9, v9, v12

    aget-wide v12, v9, v8

    cmp-long v9, v2, v12

    if-gtz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v9

    const/4 v12, 0x0

    aget-object v9, v9, v12

    aget-wide v12, v9, v8

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenTimeStamp:[[J
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3700(Lcom/android/server/power/HtcWakeLockMonitor;)[[J

    move-result-object v9

    const/4 v12, 0x1

    aget-object v9, v9, v12

    aget-wide v12, v9, v8

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    aget-wide v12, p1, v8

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-lez v9, :cond_3

    aget-wide v12, p1, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v10, v12

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v9}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "HtcWLM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getTotalHeldDuration: Exception caught. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-wide v12, v10

    goto :goto_0
.end method

.method private isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->TAG_WHITE_LIST_PREFIX:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4300(Lcom/android/server/power/HtcWakeLockMonitor;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->WHITELIST_VALID_UID:I
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockMonitor;->access$4400(Lcom/android/server/power/HtcWakeLockMonitor;)I

    move-result v5

    if-ge v4, v5, :cond_2

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInWhiteList: tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->uid:I
    invoke-static {p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "HtcWLM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInWhiteList: Exception caught. Skip. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private shouldSkipAll()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v4}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    if-eqz v4, :cond_1

    monitor-exit p0

    move v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->isStart()Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$4500(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    monitor-exit p0

    move v2, v3

    goto :goto_0

    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stopDeadRecord(Landroid/os/IBinder;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v1, p1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HtcWLM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopDeadRecord: tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->tag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$1900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in white list. Treat it as screen turning off."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private stopRecord(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->getRecord(Ljava/lang/String;)Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->stop(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$3200(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->ENABLE_MONITOR:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1000(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->isInWhiteList(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->skipScan:Z

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->isScreenOn()Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3300(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->mScreenState:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$2400(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->shouldSkipAll()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    # getter for: Lcom/android/server/power/HtcWakeLockMonitor;->DEBUG_ON:Z
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor;->access$1100(Lcom/android/server/power/HtcWakeLockMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcWLM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopRecord: tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in white list. Treat it as screen turning off."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->this$0:Lcom/android/server/power/HtcWakeLockMonitor;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor;->saveScreenTimeStamp(Z)V
    invoke-static {v1, v2}, Lcom/android/server/power/HtcWakeLockMonitor;->access$3100(Lcom/android/server/power/HtcWakeLockMonitor;Z)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private update()V
    .locals 4

    const/16 v3, 0x32

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->update()V
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$2800(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v2

    if-le v2, v3, :cond_1

    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->trimToSize()V

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private updateAllHeldDuration()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/HtcWakeLockMonitor$LockRecordList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;

    # invokes: Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->saveHeldDuration()V
    invoke-static {v1}, Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;->access$2900(Lcom/android/server/power/HtcWakeLockMonitor$WakeLockRecord;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
