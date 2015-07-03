.class final Lcom/android/server/Watchdog$FinalizeTimeoutTask;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FinalizeTimeoutTask"
.end annotation


# static fields
.field static final ACTION_WRITE_TRACEPOINT:Ljava/lang/String; = "com.htc.intent.action.WRITE_TRACEPOINT"


# instance fields
.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mPid:I

.field private mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    iput-object p3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mActivity:Lcom/android/server/am/ActivityManagerService;

    iput p4, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mPid:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v3, "Watchdog"

    const-string v4, "Dump CPU"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->batteryNeedsCpuUpdate()V

    const-string v3, "dumpsys cpuinfo"

    invoke-static {v3}, Lcom/htc/profileflag/ProfileConfig;->runCommand(Ljava/lang/String;)Z

    const-string v3, "Watchdog"

    const-string v4, "Dump call stack"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mPid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    const-string v3, "Watchdog"

    const-string v4, "Dump /proc/sysrq-trigger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/server/Watchdog;->dumpSysrq()V
    invoke-static {}, Lcom/android/server/Watchdog;->access$000()V

    const-string v3, "Watchdog"

    const-string v4, "Dump tracepoint"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.WRITE_TRACEPOINT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-virtual {v3, v8}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->setRunning(Z)V

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mActivity:Lcom/android/server/am/ActivityManagerService;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "Watchdog"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-virtual {v3, v8}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->setRunning(Z)V

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mActivity:Lcom/android/server/am/ActivityManagerService;

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-virtual {v4, v8}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;->setRunning(Z)V

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mContext:Landroid/content/Context;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mReceiver:Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    iput-object v7, p0, Lcom/android/server/Watchdog$FinalizeTimeoutTask;->mActivity:Lcom/android/server/am/ActivityManagerService;

    throw v3
.end method
