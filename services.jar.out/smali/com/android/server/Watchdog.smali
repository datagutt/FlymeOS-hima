.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$DumpHeapTask;,
        Lcom/android/server/Watchdog$HeapMonitor;,
        Lcom/android/server/Watchdog$DumpExtraInfoThread;,
        Lcom/android/server/Watchdog$FinalizeTimeoutTask;,
        Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field static final DEFAULT_TIMEOUT:J = 0xea60L

.field static final EXTRAS_PID:Ljava/lang/String; = "pid"

.field static final INTENT_WATCHDOG_FINALIZE_TIMEOUT:Ljava/lang/String; = "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final RECORD_KERNEL_THREADS:Z = true

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static final localLOGV:Z

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field private final mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/system/bin/mediaserver"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/system/bin/sdcard"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/system/bin/mm-qcamera-daemon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "zygote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-wide/32 v4, 0xea60

    const-string v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "foreground thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v3, "main thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "ui thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "i/o thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "display thread"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/server/Watchdog;->dumpSysrq()V

    return-void
.end method

.method private describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private dumpExtraInfo()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/server/Watchdog$DumpExtraInfoThread;

    iget-object v2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/Watchdog$DumpExtraInfoThread;-><init>(Lcom/android/server/Watchdog;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v1}, Lcom/android/server/Watchdog$DumpExtraInfoThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "Watchdog"

    const-string v2, "skip dumpExtraInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpKernelStackTraces()Ljava/io/File;
    .locals 3

    const/4 v1, 0x0

    const-string v2, "dalvik.vm.stack-trace-file"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/Watchdog;->native_dumpKernelStacks(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static dumpSysrq()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/proc/sysrq-trigger"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    const-string v3, "Watchdog"

    const-string v4, "dumpSysrq fail!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v3

    :catch_3
    move-exception v4

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private native native_dumpKernelStacks(Ljava/lang/String;)V
.end method

.method private startDropboxThread(Ljava/lang/Thread;J)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/Watchdog$FinalizeTimeoutReceiver;-><init>(Lcom/android/server/Watchdog;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "com.htc.intent.WATCHDOG_FINALIZE_TIMEOUT"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    sget-boolean v0, Lcom/htc/profileflag/ProfileConfig;->HtcDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/Watchdog$HeapMonitor;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/Watchdog$HeapMonitor;-><init>(Lcom/android/server/Watchdog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    iget-object v0, p0, Lcom/android/server/Watchdog;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v0}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    :cond_1
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 4

    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rebooting system because: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public run()V
    .locals 40

    const/16 v34, 0x0

    :goto_0
    const/4 v10, 0x0

    monitor-enter p0

    const-wide/16 v32, 0x7530

    const/16 v18, 0x0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    if-lez v10, :cond_1

    add-int/lit8 v10, v10, -0x1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    :goto_2
    const-wide/16 v36, 0x0

    cmp-long v35, v32, v36

    if-lez v35, :cond_4

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v35

    if-eqz v35, :cond_2

    const/4 v10, 0x2

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v35

    if-eqz v35, :cond_3

    const/4 v10, 0x2

    :cond_3
    const-wide/16 v36, 0x7530

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v38

    sub-long v38, v38, v26

    sub-long v32, v36, v38

    goto :goto_2

    :catch_0
    move-exception v14

    const-string v35, "Watchdog"

    move-object/from16 v0, v35

    invoke-static {v0, v14}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catchall_0
    move-exception v35

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v35

    :cond_4
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v31

    const/16 v35, 0x3

    move/from16 v0, v35

    move/from16 v1, v31

    if-ne v0, v1, :cond_5

    if-nez v34, :cond_5

    const-string v35, "Watchdog"

    const-string v36, "No waitedHalf but OVERDUE, force waitedHalf"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v31, 0x2

    :cond_5
    if-nez v31, :cond_6

    const/16 v34, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    const/16 v35, 0x1

    move/from16 v0, v31

    move/from16 v1, v35

    if-ne v0, v1, :cond_7

    monitor-exit p0

    goto/16 :goto_0

    :cond_7
    const/16 v35, 0x2

    move/from16 v0, v31

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    if-nez v34, :cond_9

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v35, 0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    sget-object v38, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    sget-boolean v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v35, :cond_8

    invoke-static {}, Lcom/android/server/Watchdog;->dumpSysrq()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    :cond_8
    const/16 v34, 0x1

    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-boolean v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v35, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpExtraInfo()V

    :cond_b
    const/16 v35, 0xaf2

    move/from16 v0, v35

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v35, v0

    if-lez v35, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/Watchdog;->mPhonePid:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-nez v34, :cond_e

    const/16 v35, 0x1

    :goto_4
    const/16 v36, 0x0

    const/16 v37, 0x0

    sget-object v38, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    move/from16 v0, v35

    move-object/from16 v1, v22

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v24

    const-wide/16 v36, 0x7d0

    invoke-static/range {v36 .. v37}, Landroid/os/SystemClock;->sleep(J)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->dumpKernelStackTraces()Ljava/io/File;

    :try_start_4
    new-instance v30, Ljava/io/FileWriter;

    const-string v35, "/proc/sysrq-trigger"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const-string v35, "w"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    new-instance v11, Lcom/android/server/Watchdog$1;

    const-string v35, "watchdogWriteToDropbox"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v29

    move-object/from16 v3, v24

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    const-wide/16 v12, 0x1388

    monitor-enter p0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v9, :cond_f

    const-string v35, "Watchdog"

    const-string v36, "Reporting stuck state to activity controller"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    const-string v35, "Service dumps disabled due to hung system process."

    invoke-static/range {v35 .. v35}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V

    sget-boolean v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v35, :cond_d

    const-string v35, "Watchdog"

    const-string v36, "controller"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_f

    const-string v35, "Watchdog"

    const-string v36, "Activity controller requested to coninue to wait"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    const/16 v34, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v35, 0x0

    goto :goto_4

    :catch_1
    move-exception v14

    const-string v35, "Watchdog"

    const-string v36, "Failed to write to /proc/sysrq-trigger"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v35, "Watchdog"

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v35

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v35

    :catch_2
    move-exception v35

    :cond_f
    sget-boolean v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v35, :cond_10

    const-string v35, "Watchdog"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "debuggerWasConnected="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v35

    if-eqz v35, :cond_11

    const/4 v10, 0x2

    :cond_11
    const/16 v35, 0x2

    move/from16 v0, v35

    if-lt v10, v0, :cond_12

    const-string v35, "Watchdog"

    const-string v36, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    const/16 v34, 0x0

    goto/16 :goto_0

    :cond_12
    if-lez v10, :cond_13

    const-string v35, "Watchdog"

    const-string v36, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_13
    if-nez v6, :cond_14

    const-string v35, "Watchdog"

    const-string v36, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const-string v35, "Watchdog"

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v35, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v35, :cond_15

    if-eqz v29, :cond_15

    const-string v35, "main thread"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->dumpServerThreadLooper()V

    :cond_15
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v35

    if-nez v35, :cond_16

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v35

    if-nez v35, :cond_16

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v35

    if-eqz v35, :cond_17

    :cond_16
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v35, "yyyy-MM-dd kk:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpAllProcesses()Z

    move-result v36

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpSysNative()Z

    move-result v37

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDumpMediaNative()Z

    move-result v38

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->dumpAllProcessStack(ZZZLjava/lang/String;)Z

    const-wide/16 v12, 0x4e20

    :cond_17
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13}, Lcom/android/server/Watchdog;->startDropboxThread(Ljava/lang/Thread;J)V

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungDoBugreport()Z

    move-result v35

    if-eqz v35, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ActivityManagerService;->doBugReport()V

    :cond_18
    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugHungKeepAlive()Z

    move-result v35

    if-eqz v35, :cond_19

    const-string v35, "Watchdog"

    const-string v36, "Keep the device life. Please Pass it to RD"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const/16 v18, 0x0

    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v18

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    const-string v36, "Watchdog"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/Watchdog$HandlerChecker;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v37, " stack trace:"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v25

    move-object/from16 v7, v25

    array-length v0, v7

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_8
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    aget-object v15, v7, v19

    const-string v35, "Watchdog"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "    at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    :cond_1a
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    :cond_1b
    const-string v35, "Watchdog"

    const-string v36, "*** GOODBYE!"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Landroid/os/Process;->killProcess(I)V

    const/16 v35, 0xa

    invoke-static/range {v35 .. v35}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_6
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setExtraRunning(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/Watchdog;->mDumpExtraRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
