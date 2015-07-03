.class Lcom/android/server/backup/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 51

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In BackupHandler, msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullRestoreRunning:Z

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v8, 0x1e

    move-object/from16 v0, v49

    invoke-virtual {v3, v8, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_EXTERNAL_BACKUP"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [[Ljava/lang/String;

    move-object/from16 v37, v3

    check-cast v37, [[Ljava/lang/String;

    if-nez v37, :cond_4

    const-string v3, "BackupManagerService"

    const-string v8, "name array from msg is null, do nothing"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    const/4 v3, 0x0

    aget-object v3, v37, v3

    if-nez v3, :cond_5

    const-string v3, "BackupManagerService"

    const-string v8, "can not get transport name from msg"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_5
    const/4 v3, 0x0

    aget-object v3, v37, v3

    const/4 v8, 0x0

    aget-object v50, v3, v8

    const/4 v3, 0x1

    aget-object v38, v37, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v50

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v0}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v3, "BackupManagerService"

    const-string v8, "External Backup requested but no transport available"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_6
    const/4 v5, 0x0

    :try_start_6
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v5

    :goto_1
    if-nez v5, :cond_7

    const-string v3, "BackupManagerService"

    const-string v8, "MSG_EXTERNAL_BACKUP fail: No transportDirName"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_0
    move-exception v31

    const-string v3, "BackupManagerService"

    const-string v8, "RemoteException when get transportDirName"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_3
    move-exception v3

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v3

    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v38, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    :goto_2
    if-ltz v32, :cond_c

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/PackageInfo;

    new-instance v45, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v42

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-direct {v0, v3, v8}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, -0x1

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    aget-object v3, v38, v3

    const-string v8, "customizeForBoomerang"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_3
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_4
    move-exception v3

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v3

    :cond_9
    :try_start_a
    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "BackupManagerService"

    const-string v9, "clearing pending Htc backups"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mHtcPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_b
    monitor-exit v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_c
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_4
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in Q->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_d
    move-object/from16 v29, v38

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v35, v0

    const/16 v33, 0x0

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v35

    if-ge v0, v1, :cond_c

    aget-object v39, v29, v33

    new-instance v45, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v45

    move-object/from16 v1, v39

    invoke-direct {v0, v3, v1}, Lcom/android/server/backup/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v33, v33, 0x1

    goto :goto_5

    :cond_e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_f
    const-string v3, "BackupManagerService"

    const-string v8, "External Full Backup requested but nothing pending"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    # invokes: Lcom/android/server/backup/BackupManagerService;->unregisterExternalTransport(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/android/server/backup/BackupManagerService;->access$400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_5
    move-exception v3

    :try_start_c
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v8, v8, Lcom/android/server/backup/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v14, 0x36ee80

    add-long/2addr v8, v14

    iput-wide v8, v3, Lcom/android/server/backup/BackupManagerService;->mNextBackupPass:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    # invokes: Lcom/android/server/backup/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v3, v8}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    if-nez v4, :cond_10

    const-string v3, "BackupManagerService"

    const-string v8, "Backup requested but no transport available"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_6
    move-exception v3

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v3

    :cond_10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_6
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/backup/BackupManagerService$BackupRequest;

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :catchall_7
    move-exception v3

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw v3

    :cond_11
    :try_start_10
    # getter for: Lcom/android/server/backup/BackupManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$300()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "BackupManagerService"

    const-string v9, "clearing pending backups"

    invoke-static {v3, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mJournal:Ljava/io/File;

    :cond_13
    monitor-exit v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const/16 v48, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    :try_start_11
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object v8, v2

    move-object v10, v4

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/server/backup/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1

    :goto_7
    if-nez v48, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x0

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    monitor-exit v8
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_1
    move-exception v31

    const-string v3, "BackupManagerService"

    const-string v8, "Transport became unavailable attempting backup"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    goto :goto_7

    :cond_14
    const-string v3, "BackupManagerService"

    const-string v8, "Backup requested but nothing pending"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v48, 0x0

    goto :goto_7

    :catchall_8
    move-exception v3

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v3

    :pswitch_3
    :try_start_14
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got next step for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", executing"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-interface {v12}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->execute()V
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v31

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid backup task in flight, obj="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    :try_start_15
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;

    invoke-interface {v12}, Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;->operationComplete()V
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v31

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid completion in flight, obj="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullRestoreRunning:Z

    if-eqz v3, :cond_17

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/4 v8, 0x2

    move-object/from16 v0, v49

    invoke-virtual {v3, v8, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_RUN_ADB_BACKUP"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$FullBackupParams;

    new-instance v12, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v40

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeApks:Z

    move/from16 v16, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeObbs:Z

    move/from16 v17, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeShared:Z

    move/from16 v18, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doWidgets:Z

    move/from16 v19, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->curPassword:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->allApps:Z

    move/from16 v22, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->includeSystem:Z

    move/from16 v23, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->doCompress:Z

    move/from16 v24, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->packages:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    invoke-direct/range {v12 .. v26}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Ljava/lang/Thread;

    const-string v8, "adb-backup"

    invoke-direct {v3, v12, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catchall_9
    move-exception v3

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    throw v3

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    new-instance v3, Ljava/lang/Thread;

    const-string v8, "transport-backup"

    invoke-direct {v3, v12, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v9, v3, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v3, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRestoreRunning++ , mRestoreRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v10, v10, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$RestoreParams;

    const-string v3, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_RUN_RESTORE observer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    if-nez v3, :cond_18

    const-string v3, "BackupManagerService"

    const-string v8, "transport is null for restoring, interrupt action."

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v9, v3, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v3, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRestoreRunning-- , mRestoreRunning="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v10, v10, Lcom/android/server/backup/BackupManagerService;->mRestoreRunning:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto/16 :goto_0

    :catchall_a
    move-exception v3

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    throw v3

    :catchall_b
    move-exception v3

    :try_start_1a
    monitor-exit v8
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw v3

    :cond_18
    new-instance v12, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v40

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v40

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->token:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v40

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->pmToken:I

    move/from16 v19, v0

    move-object/from16 v0, v40

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->isSystemRestore:Z

    move/from16 v20, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$RestoreParams;->filterSet:[Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v12 .. v21}, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;)V

    const/16 v3, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v46

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupRunning:Z

    if-nez v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullBackupRunning:Z

    if-eqz v3, :cond_1a

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v8, 0xa

    move-object/from16 v0, v49

    invoke-virtual {v3, v8, v0}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const-wide/16 v8, 0x1388

    move-object/from16 v0, v36

    invoke-virtual {v3, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    # getter for: Lcom/android/server/backup/BackupManagerService;->MORE_DEBUG:Z
    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "BackupManagerService"

    const-string v8, "DelayMessage MSG_RUN_ADB_RESTORE"

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v9, 0x1

    iput-boolean v9, v3, Lcom/android/server/backup/BackupManagerService;->mFullRestoreRunning:Z

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;

    new-instance v12, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    iget-object v14, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v0, v40

    iget-object v15, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->curPassword:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->encryptPassword:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    move-object/from16 v17, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Lcom/android/server/backup/BackupManagerService$PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v3, Ljava/lang/Thread;

    const-string v8, "adb-restore"

    invoke-direct {v3, v12, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    :catchall_c
    move-exception v3

    :try_start_1c
    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    throw v3

    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$ClearParams;

    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v0, v40

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {v3, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->transportName:Ljava/lang/String;

    move-object/from16 v0, v40

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/backup/BackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1d
    new-instance v43, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    monitor-exit v8
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    new-instance v3, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v43

    invoke-direct {v3, v8, v0}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_0

    :catchall_d
    move-exception v3

    :try_start_1e
    monitor-exit v8
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    throw v3

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v3, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v10, v8, v3}, Lcom/android/server/backup/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/backup/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v8, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    monitor-exit v9

    goto/16 :goto_0

    :catchall_e
    move-exception v3

    monitor-exit v9
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e

    throw v3

    :cond_1b
    const/4 v3, 0x0

    move v8, v3

    goto :goto_8

    :pswitch_d
    const/16 v47, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;

    :try_start_20
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v47

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    monitor-enter v8
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    move-object/from16 v0, v47

    iput-object v0, v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-nez v47, :cond_1c

    const/16 v3, 0xb0f

    const/4 v8, 0x0

    :try_start_22
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    :cond_1c
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_1d

    :try_start_23
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_5
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_6

    :cond_1d
    :goto_9
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v8, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catchall_f
    move-exception v3

    :try_start_24
    monitor-exit v8
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    :try_start_25
    throw v3
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_4
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    :catch_4
    move-exception v31

    :try_start_26
    const-string v3, "BackupManagerService"

    const-string v8, "Error from transport getting set list"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v3, :cond_1e

    :try_start_27
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v47

    invoke-interface {v3, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_7
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_8

    :cond_1e
    :goto_a
    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v3, 0x8

    const-wide/32 v8, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v9}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :catch_5
    move-exception v44

    const-string v3, "BackupManagerService"

    const-string v8, "Unable to report listing to observer"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_6
    move-exception v31

    const-string v3, "BackupManagerService"

    const-string v8, "Restore observer threw"

    move-object/from16 v0, v31

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_7
    move-exception v44

    const-string v3, "BackupManagerService"

    const-string v8, "Unable to report listing to observer"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_8
    move-exception v31

    const-string v3, "BackupManagerService"

    const-string v8, "Restore observer threw"

    move-object/from16 v0, v31

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catchall_10
    move-exception v3

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v8, :cond_1f

    :try_start_28
    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v0, v47

    invoke-interface {v8, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_9
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_a

    :cond_1f
    :goto_b
    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    const/16 v8, 0x8

    const-wide/32 v14, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v8, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    :catch_9
    move-exception v44

    const-string v8, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catch_a
    move-exception v31

    const-string v8, "BackupManagerService"

    const-string v9, "Restore observer threw"

    move-object/from16 v0, v31

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Lcom/android/server/backup/BackupManagerService;->handleTimeout(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    monitor-enter v8

    :try_start_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_20

    const-string v3, "BackupManagerService"

    const-string v9, "Restore session timed out; aborting"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;->markTimedOut()V

    new-instance v3, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v13, Lcom/android/server/backup/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, v9, v10, v13}, Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    monitor-exit v8

    goto/16 :goto_0

    :catchall_11
    move-exception v3

    monitor-exit v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_11

    throw v3

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/backup/BackupManagerService$FullParams;

    if-eqz v40, :cond_22

    const-string v3, "BackupManagerService"

    const-string v9, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/server/backup/BackupManagerService;->signalFullBackupRestoreCompletion(Lcom/android/server/backup/BackupManagerService$FullParams;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mFullConfirmations:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->delete(I)V

    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    if-eqz v3, :cond_21

    :try_start_2b
    move-object/from16 v0, v40

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$FullParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v3}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_12

    :cond_21
    :goto_c
    :try_start_2c
    monitor-exit v8

    goto/16 :goto_0

    :catchall_12
    move-exception v3

    monitor-exit v8
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_12

    throw v3

    :cond_22
    :try_start_2d
    const-string v3, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "couldn\'t find params for token "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_12

    goto :goto_c

    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/backup/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :catch_b
    move-exception v3

    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_8
        :pswitch_c
        :pswitch_a
        :pswitch_11
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
