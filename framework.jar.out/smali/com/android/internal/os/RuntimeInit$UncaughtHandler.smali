.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# static fields
.field private static crash_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    const/16 v7, 0xa

    sget v4, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    # getter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AndroidRuntime_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->crash_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_crash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "crash in the same process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    :try_start_0
    # setter for: Lcom/android/internal/os/RuntimeInit;->mCrashing:Z
    invoke-static {v4}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v4, v5, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v5

    new-instance v6, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v6, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->ISSHIPPING:Z

    if-nez v4, :cond_1

    # getter for: Lcom/android/internal/os/RuntimeInit;->mApplicationObject:Landroid/os/IBinder;
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "FinalizerWatchdogDaemon"

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    instance-of v4, p2, Ljava/lang/Exception;

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finalizer timeout exception in system server, pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # invokes: Lcom/android/internal/os/RuntimeInit;->dumpNativeStack(I)V
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->access$300(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->getCrashType(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/htc/profileflag/ProfileConfig;->ISSHIPPING:Z

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "FATAL EXCEPTION: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v4, "Process: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v4, "PID: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "AndroidRuntime"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v4, v5, p2}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "AndroidRuntime"

    const-string v5, "Error reporting crash"

    # invokes: Lcom/android/internal/os/RuntimeInit;->Clog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    invoke-static {v4, v5, v3}, Lcom/android/internal/os/RuntimeInit;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    throw v4

    :catch_1
    move-exception v4

    goto :goto_2
.end method
