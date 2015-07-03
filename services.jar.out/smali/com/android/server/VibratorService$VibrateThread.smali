.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private delay(J)V
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v0, p1, v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long p1, v0, v2

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 24

    const/16 v21, -0x8

    invoke-static/range {v21 .. v21}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService$Vibration;->access$1100(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v15

    array-length v13, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService$Vibration;->access$1400(Lcom/android/server/VibratorService$Vibration;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService$Vibration;->access$700(Lcom/android/server/VibratorService$Vibration;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mUsageHint:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v20

    const/4 v11, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService$Vibration;->mPid:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService$Vibration;->access$500(Lcom/android/server/VibratorService$Vibration;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService;->mEnlargeDuration:I
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)I

    move-result v5

    invoke-static {}, Landroid/os/Vibrator;->isLoggableVibrator()Z

    move-result v21

    if-eqz v21, :cond_1

    new-instance v18, Ljava/lang/StringBuilder;

    array-length v0, v15

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x7

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v15

    array-length v14, v4

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_0

    aget-wide v8, v4, v10

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v21, "VibratorService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "vib dbg, vibrate, pid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", repeat: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", length: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", pattern: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", enlarge:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v12, v11

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    if-ge v12, v13, :cond_2

    add-int/lit8 v11, v12, 0x1

    aget-wide v22, v15, v12

    add-long v6, v6, v22

    move v12, v11

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move v11, v12

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v22

    monitor-enter v22

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    :cond_4
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_5
    if-ge v12, v13, :cond_6

    add-int/lit8 v11, v12, 0x1

    :try_start_2
    aget-wide v6, v15, v12

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_1

    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    # invokes: Lcom/android/server/VibratorService;->doVibratorOn(JII)V
    invoke-static {v0, v6, v7, v1, v2}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;JII)V

    move v12, v11

    goto/16 :goto_1

    :cond_6
    if-gez v17, :cond_7

    move v11, v12

    goto/16 :goto_2

    :cond_7
    move/from16 v11, v17

    const-wide/16 v6, 0x0

    move v12, v11

    goto/16 :goto_1

    :catchall_0
    move-exception v21

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21

    :cond_8
    move v11, v12

    goto/16 :goto_2
.end method
