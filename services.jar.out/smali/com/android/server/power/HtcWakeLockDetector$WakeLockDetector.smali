.class Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;
.super Ljava/lang/Object;
.source "HtcWakeLockDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/HtcWakeLockDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLockDetector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;,
        Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;
    }
.end annotation


# instance fields
.field private final HZ:J

.field private final LOCATION_PERMISSION:Ljava/lang/String;

.field private final MAX_NUM:I

.field private mAbnormalGpsCount:I

.field private mBlackList:Lorg/w3c/dom/Element;

.field private mCCUCpuUsage:F

.field private mCCUImportance:I

.field private mCCUThroughput:J

.field private mConfig:Lorg/w3c/dom/Document;

.field private mDetectPeriod:J

.field private mSleepTimeToMeasureCpu:J

.field private mTestFlag:Z

.field private mWhiteList:Lorg/w3c/dom/Element;

.field private maxWakeLockDuration:J

.field private minCPUusage:F

.field private minNetwork:J

.field final synthetic this$0:Lcom/android/server/power/HtcWakeLockDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/power/HtcWakeLockDetector;)V
    .locals 10

    const-wide/32 v8, 0x1b7740

    const-wide/16 v6, 0x5000

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    iput-boolean v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mTestFlag:Z

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    iput-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->LOCATION_PERMISSION:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->MAX_NUM:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->HZ:J

    iput v2, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mAbnormalGpsCount:I

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    iput-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    div-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    iget-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    div-long/2addr v0, v4

    mul-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    const-string v0, "HtcWLD_v2.0.0"

    const-string v1, "[version] v2.0.0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private RecordSemiUsageForAllCandidates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    add-int/lit8 v1, v0, 0x1

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    iget v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    iget-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private RecordSemiUsageForAllProcesses(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    new-instance v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    add-int/lit8 v2, v1, 0x1

    iput v1, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->id:I

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->packageName:Ljava/lang/String;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, v6, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v40

    if-nez v40, :cond_1

    :cond_0
    const/16 v40, 0x0

    :goto_0
    return-object v40

    :cond_1
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, " "

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "    # Check abnormal process for crazy CPU usage case."

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->RecordSemiUsageForAllProcesses(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v27

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "    Sleep "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "ms to get CPU/Net usage"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v40, v0

    invoke-static/range {v40 .. v41}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "    Sleep end ... Start analyze"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v40

    if-nez v40, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v40

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, "Error Cannot sleep"

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v0, v6, v11}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v33

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v41

    monitor-enter v41

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v38

    monitor-exit v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v32, -0x1

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    add-int/lit8 v32, v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v41, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v40 .. v41}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    if-eqz v5, :cond_4

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    if-eqz v11, :cond_4

    const-string v25, ""

    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    if-lez v40, :cond_6

    iget-object v4, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    array-length v0, v4

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v30, v4, v18

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_5

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    :cond_5
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :catchall_0
    move-exception v40

    :try_start_2
    monitor-exit v41
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v40

    :cond_6
    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-gt v0, v1, :cond_4

    const-string v40, ""

    iget-object v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v25

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v10, v6, v11}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v26

    const/16 v40, 0x0

    cmpg-float v40, v26, v40

    if-ltz v40, :cond_4

    const/16 v16, 0x0

    if-eqz v38, :cond_8

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object/from16 v0, v39

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    move/from16 v40, v0

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    const/16 v16, 0x1

    :cond_8
    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v40

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    move-wide/from16 v42, v0

    sub-long v36, v40, v42

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v40

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    move-wide/from16 v42, v0

    sub-long v28, v40, v42

    add-long v34, v36, v28

    const/16 v24, -0x1

    const/4 v13, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    add-float v40, v40, v26

    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v40, v0

    add-long v40, v40, v36

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v40, v0

    add-long v40, v40, v28

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    add-long v40, v40, v34

    move-wide/from16 v0, v40

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_b

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    :goto_4
    move/from16 v0, v40

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_c

    const/16 v40, 0x1

    :goto_5
    move/from16 v0, v40

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x1

    :cond_a
    if-nez v13, :cond_4

    new-instance v21, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    const/16 v40, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->id:I

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move/from16 v0, v26

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move-wide/from16 v0, v36

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v0, v28

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    iget v0, v8, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v40, v0

    goto :goto_4

    :cond_c
    move/from16 v40, v16

    goto :goto_5

    :cond_d
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v40

    if-lez v40, :cond_2

    const-string v19, "         "

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;

    const-string v40, "HtcWLD_v2.0.0"

    const-string v41, " "

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "    pkg: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Uid: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->uid:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Importance: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ")"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "System CPU usage: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Process CPU usage : "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "TX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->tx:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "   RX = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->rx:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Held wakelock over "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " ms: "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_13

    const-string v40, "true"

    :goto_7
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-ltz v40, :cond_f

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_10

    :cond_f
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_16

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-nez v40, :cond_16

    :cond_10
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package founded: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v41, v0

    cmpl-float v40, v40, v41

    if-ltz v40, :cond_14

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "CPU usage "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "% >= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "%"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_8
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Held wakelock over "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ms: false"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipByProcessImportance(I)Z

    move-result v40

    if-eqz v40, :cond_15

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package skipped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Importance "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->importance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ") < "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "("

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, ")"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :cond_12
    :goto_9
    if-eqz v7, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v40 .. v40}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v40

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package force stopped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_13
    const-string v40, "false"

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    cmp-long v40, v40, v42

    if-ltz v40, :cond_11

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Throughput "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " bytes >= "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " bytes"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    move-object/from16 v40, v0

    const-string v41, "enable"

    invoke-interface/range {v40 .. v41}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v41, "true"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_12

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Abnormal package skipped: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "Monitor only."

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto/16 :goto_9

    :cond_16
    const-string v40, "HtcWLD_v2.0.0"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "==== Package is normal: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ===="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "CPU usage "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "% "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->cpuUsage:F

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v43, v0

    cmpl-float v40, v40, v43

    if-lez v40, :cond_17

    const-string v40, ">= "

    :goto_a
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    move/from16 v42, v0

    move-object/from16 v0, v40

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "%"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Throughput "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v42, v0

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " bytes "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->throughput:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v46, v0

    cmp-long v40, v44, v46

    if-lez v40, :cond_18

    const-string v40, ">= "

    :goto_b
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    move-wide/from16 v42, v0

    move-object/from16 v0, v40

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " bytes"

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v41, "HtcWLD_v2.0.0"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, "Held wakelock over "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v42, " ms: "

    move-object/from16 v0, v40

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$WLDPackage;->holdWakeLockFlag:Z

    move/from16 v40, v0

    if-eqz v40, :cond_19

    const-string v40, "true"

    :goto_c
    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_17
    const-string v40, "< "

    goto/16 :goto_a

    :cond_18
    const-string v40, "< "

    goto :goto_b

    :cond_19
    const-string v40, "false"

    goto :goto_c
.end method

.method private checkAbnormalForGps(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    const/16 v16, 0x0

    :goto_0
    return-object v16

    :cond_1
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, " "

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "    # Check abnormal process for GPS case."

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v14, 0x1d4c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    # setter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v16 .. v17}, Lcom/android/server/power/HtcWakeLockDetector;->access$302(Lcom/android/server/power/HtcWakeLockDetector;I)I

    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Sleep "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "ms to get the count of non GPS fix"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "    Sleep end ... Start analyze"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v16

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v16, "HtcWLD_v2.0.0"

    const-string v17, "Error Cannot sleep"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    long-to-double v0, v14

    move-wide/from16 v16, v0

    const-wide v18, 0x40dd4c0000000000L    # 30000.0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v5, v0

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v16

    move/from16 v0, v16

    if-lt v0, v5, :cond_a

    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    Non GPS fix count ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") is not smaller than critical count ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    iget-object v12, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    if-eqz v12, :cond_5

    array-length v0, v12

    move/from16 v16, v0

    if-lez v16, :cond_5

    const/4 v2, 0x0

    const-string v13, ""

    move-object v3, v12

    array-length v10, v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_7

    aget-object v11, v3, v9

    if-nez v2, :cond_6

    const-string v16, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    :cond_6
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_9

    move-object v13, v11

    :cond_7
    if-eqz v2, :cond_5

    iget v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v16, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v16 .. v16}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    ==== Abnormal process force stopped: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") ===="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    const-string v16, "HtcWLD_v2.0.0"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "    No abnormal founded (NonFirstFixCount:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mNonFirstFixCount:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/power/HtcWakeLockDetector;->access$300(Lcom/android/server/power/HtcWakeLockDetector;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " < "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "), do nothing"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "    # Check abnormal process for wakelock case."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mSyncLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;

    move-result-object v29

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v35, 0x0

    if-eqz v29, :cond_2

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v35

    :cond_2
    if-lez v35, :cond_f

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    There are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wakelocks held over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->RecordSemiUsageForAllCandidates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v14

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    Sleep "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms to get CPU/Net usage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "    Sleep end ... Start analyze"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :catch_0
    move-exception v17

    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "Error Cannot sleep"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readSystemStat()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$900(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsSatelliteCount:J
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$000(Lcom/android/server/power/HtcWakeLockDetector;)J

    move-result-wide v6

    sub-long v30, v6, v14

    const-string v36, "        "

    const/16 v27, 0x0

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_5
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    if-ne v5, v6, :cond_5

    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, " "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    wl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v34

    iget v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->procStat:Ljava/lang/String;

    if-eqz v4, :cond_6

    if-eqz v18, :cond_6

    if-eqz v13, :cond_6

    if-nez v19, :cond_8

    :cond_6
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because of empty stat!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    :cond_8
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Package name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Process name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   Uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Importance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v26

    iget-boolean v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->permissionFlag:Z

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mGpsStarted:Z
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "There is GPS request, do nothing."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_9
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "No GPS request, continue to check CPU/network usage."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->getSystemCpuUsage(Ljava/lang/String;Ljava/lang/String;)F
    invoke-static {v5, v13, v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1000(Lcom/android/server/power/HtcWakeLockDetector;Ljava/lang/String;Ljava/lang/String;)F

    move-result v28

    const/4 v5, 0x0

    cmpg-float v5, v28, v5

    if-gez v5, :cond_b

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because fail to get cpu usage!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_b
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "System CPU usage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v4, v0, v13, v1}, Lcom/android/server/power/HtcWakeLockDetector;->getProcessCpuUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F

    move-result v9

    const/4 v5, 0x0

    cmpg-float v5, v9, v5

    if-gez v5, :cond_c

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Skip because fail to get cpu usage of process!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Process CPU usage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->tx:J

    move-wide/from16 v38, v0

    sub-long v32, v6, v38

    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    invoke-static {v5}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$SemiUsage;->rx:J

    move-wide/from16 v38, v0

    sub-long v24, v6, v38

    add-long v10, v32, v24

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "TX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   RX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v24

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpg-float v5, v9, v5

    if-gtz v5, :cond_d

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v10, v6

    if-gtz v5, :cond_d

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z

    move-result v5

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v5

    move-object/from16 v0, v34

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal WL released: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Abnormal package force stopped: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "==== Wakelock is reasonable to hold: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") ===="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    cmpl-float v5, v9, v5

    if-lez v5, :cond_e

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Because CPU usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "% > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    cmp-long v5, v10, v6

    if-lez v5, :cond_5

    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Because Throughput "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_f
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    There is no wakelock held over "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v38, v0

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v9, "enable"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v9, "item"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v1, v8, :cond_0

    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_6

    const-string v8, "name"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "category"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "operation"

    invoke-interface {v2, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, ""

    const-string v8, "package"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v0, p2

    :goto_1
    const-string v8, "equal"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    :cond_0
    :goto_2
    return v7

    :cond_1
    const-string v8, "process"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, p3

    goto :goto_1

    :cond_2
    const-string v8, "wakelock"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v0, p1

    goto :goto_1

    :cond_3
    move-object v0, p2

    goto :goto_1

    :cond_4
    const-string v8, "contain"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private checkIfInWhiteList(Lcom/android/server/power/HtcWakeLockDetector$WakeLock;)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "enable"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    iget-object v4, p1, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    const-string v5, "name"

    invoke-interface {v1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkIfSkipAbnormalWakeLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FJI)Z
    .locals 9

    const/4 v2, 0x0

    move-object v1, p1

    const-string v0, "        "

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal WL founded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal package founded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "CPU usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Throughput "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes <= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p2, p3}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkIfInBlackList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal WL skipped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "==== Abnormal package skipped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "It\'s in ignore list."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private checkIfSkipByProcessImportance(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPermissionBy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mInstalledPackages:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/power/HtcWakeLockDetector;->access$1800(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    :cond_0
    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_1

    aget-object v5, v2, v1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getCandidatesHoldingLongTime(J)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLock;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    move-object/from16 v16, v11

    :goto_0
    return-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/power/HtcWakeLockDetector;->access$1400(Lcom/android/server/power/HtcWakeLockDetector;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mAcquiredTime:J

    sub-long v14, v20, v12

    cmp-long v3, v14, p1

    if-ltz v3, :cond_1

    new-instance v2, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mLock:Landroid/os/IBinder;

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mFlags:I

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v22

    iget v9, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerUid:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mOwnerPid:I

    invoke-direct/range {v2 .. v10}, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;-><init>(Lcom/android/server/power/HtcWakeLockDetector;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;II)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "HtcWLD_v2.0.0"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    wl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v17

    const-string v3, "HtcWLD_v2.0.0"

    const-string v4, "Error copy wakelock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object/from16 v16, v11

    goto/16 :goto_0
.end method

.method private getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4, p2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const-string v4, "name"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v0

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 8

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "gps"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :cond_0
    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/power/HtcWakeLockDetector;->access$1700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/location/LocationManager;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    :cond_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4}, Landroid/location/Location;->getAccuracy()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move-object v5, v2

    :cond_2
    :goto_0
    return-object v5

    :cond_3
    move-object v5, v4

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    move-object v5, v2

    :cond_5
    if-eqz v4, :cond_2

    move-object v5, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "HtcWLD_v2.0.0"

    const-string v7, "[Warning] Fail to get location."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcessInfoBy(ILjava/util/List;)Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;"
        }
    .end annotation

    const-string v4, "no_name"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    :cond_1
    new-instance v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    iput-object v4, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->name:Ljava/lang/String;

    iput v1, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->importance:I

    invoke-direct {p0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->impCode2Str(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$ProcessInfo;->strImportance:Ljava/lang/String;

    return-object v3
.end method

.method private impCode2Str(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "foreground"

    goto :goto_0

    :sswitch_1
    const-string v0, "visible"

    goto :goto_0

    :sswitch_2
    const-string v0, "perceptible"

    goto :goto_0

    :sswitch_3
    const-string v0, "service"

    goto :goto_0

    :sswitch_4
    const-string v0, "background"

    goto :goto_0

    :sswitch_5
    const-string v0, "empty"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x82 -> :sswitch_2
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_5
    .end sparse-switch
.end method

.method private isDeviceIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1300(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNonIdleMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isScreenOn()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1200(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HtcWLD_v2.0.0"

    const-string v1, "    Screen on, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->isMusicActive()Z
    invoke-static {v0}, Lcom/android/server/power/HtcWakeLockDetector;->access$1300(Lcom/android/server/power/HtcWakeLockDetector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcWLD_v2.0.0"

    const-string v1, "    Audio is active, do nothing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateCandidatesByForceStopIdList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    iget v3, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v2, p1

    :cond_2
    return-object v2
.end method


# virtual methods
.method public loadConfiguration()V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    const-string v5, "WhiteList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mWhiteList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_0

    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] White list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    const-string v5, "BlackList"

    const-string v6, "items"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    iget-object v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mBlackList:Lorg/w3c/dom/Element;

    if-nez v5, :cond_1

    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Black list is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v5, "Setting"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "item"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_2

    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "DetectPeriod"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SleepTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    goto :goto_1

    :cond_4
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Setting from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v5, "Criteria"

    const-string v6, "tab"

    invoke-direct {p0, v5, v6}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->getElementByNameAndTagName(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v5, "item"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v1, v5, :cond_d

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_6

    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "HeldTime"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CpuUsage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    goto :goto_3

    :cond_8
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Throughput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    goto :goto_3

    :cond_9
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUCpuUsage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    goto :goto_3

    :cond_a
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUImportance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    goto :goto_3

    :cond_b
    const-string v5, "name"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CCUThroughput"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "value"

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    mul-long/2addr v6, v8

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    goto/16 :goto_3

    :cond_c
    const-string v5, "HtcWLD_v2.0.0"

    const-string v6, "[Warning] Criteria from configuration is invalid."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const-string v5, "HtcWLD_v2.0.0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Configuration] DetectPeriod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SleepTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mSleepTimeToMeasureCpu:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HeldTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CpuUsage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minCPUusage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Throughput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->minNetwork:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUCpuUsage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUCpuUsage:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUImportance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUImportance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " CCUThroughput="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mCCUThroughput:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadXmlDocument(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    iget-object v4, p0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "HtcWLD_v2.0.0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Warning] Fail to open file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 28

    :try_start_0
    const-string v24, "HtcWLD_v2.0.0"

    const-string v25, "<< Wake Lock Detector >>"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mConfig:Lorg/w3c/dom/Document;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    const-string v24, "/system/etc/wld_config.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadXmlDocument(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->loadConfiguration()V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->isDeviceIdle()Z

    move-result v24

    if-nez v24, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->showNonIdleMessage()V

    :goto_0
    const-string v24, "HtcWLD_v2.0.0"

    const-string v25, " "

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mWLD_Handler:Landroid/os/Handler;
    invoke-static/range {v24 .. v24}, Lcom/android/server/power/HtcWakeLockDetector;->access$700(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/os/Handler;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->mDetectPeriod:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v24 .. v24}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/power/HtcWakeLockDetector;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static/range {v24 .. v24}, Lcom/android/server/power/HtcWakeLockDetector;->access$400(Lcom/android/server/power/HtcWakeLockDetector;)Landroid/app/ActivityManager;

    move-result-object v24

    const/16 v25, 0x3e8

    invoke-virtual/range {v24 .. v25}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v15

    if-eqz v14, :cond_6

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_6

    if-eqz v15, :cond_6

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_6

    const/4 v5, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v5

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->this$0:Lcom/android/server/power/HtcWakeLockDetector;

    move-object/from16 v24, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    # invokes: Lcom/android/server/power/HtcWakeLockDetector;->readProcessStat(I)Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Lcom/android/server/power/HtcWakeLockDetector;->access$500(Lcom/android/server/power/HtcWakeLockDetector;I)Ljava/lang/String;

    move-result-object v13

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    if-eqz v13, :cond_3

    const-string v24, " "

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v20, 0x15

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    aget-object v24, v21, v20

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    :cond_2
    const-wide/16 v24, 0x3e8

    mul-long v24, v24, v18

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v16, v10, v22

    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v24, v0

    cmp-long v24, v16, v24

    if-lez v24, :cond_7

    new-instance v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v4, v0, v1}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;-><init>(Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;Lcom/android/server/power/HtcWakeLockDetector$1;)V

    add-int/lit8 v5, v6, 0x1

    iput v6, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->id:I

    iget v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pid:I

    iget v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->uid:I

    iget-object v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->processName:Ljava/lang/String;

    iget v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->importance:I

    iget-object v0, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->pkgList:[Ljava/lang/String;

    move-wide/from16 v0, v16

    iput-wide v0, v4, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector$Candidate;->heldTime:J

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    move v6, v5

    goto/16 :goto_2

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_5

    const-string v24, "HtcWLD_v2.0.0"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    There are "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " processes held over "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForWakeLock(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->checkAbnormalForCrazyCpuUsage(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    goto/16 :goto_0

    :cond_5
    const-string v24, "HtcWLD_v2.0.0"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    There is no process held over "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/HtcWakeLockDetector$WakeLockDetector;->maxWakeLockDuration:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ms, do nothing"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string v24, "HtcWLD_v2.0.0"

    const-string v25, "Exception on main runnable function."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_6
    :try_start_1
    const-string v24, "HtcWLD_v2.0.0"

    const-string v25, "    There is no running process, do nothing"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto/16 :goto_3
.end method
