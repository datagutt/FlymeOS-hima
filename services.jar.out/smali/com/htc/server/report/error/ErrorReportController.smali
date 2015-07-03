.class public final Lcom/htc/server/report/error/ErrorReportController;
.super Ljava/lang/Object;
.source "ErrorReportController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;
    }
.end annotation


# static fields
.field private static final ADD_EVENTS:I = 0x88

.field private static final ADD_REMOVE_EVENTS:I = 0x2c8

.field private static final DEBUG:Z

.field private static final REMOVE_EVENTS:I = 0x248

.field private static final SYSTEM_APP:Ljava/lang/String; = "/system/app"

.field private static final SYSTEM_FRAMEWORK:Ljava/lang/String; = "/system/framework"

.field private static final SYSTEM_LIB:Ljava/lang/String; = "/system/lib"

.field private static final SYSTEM_PRIV_APP:Ljava/lang/String; = "/system/priv-app"

.field private static final TAG:Ljava/lang/String; = "ErrorReportController"


# instance fields
.field private mRunning:Z

.field private final mWatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/FileObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/report/error/ErrorReportController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    return-void
.end method

.method private showWatchers()V
    .locals 5

    iget-object v2, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "ErrorReportController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/htc/server/report/error/ErrorReportController$SystemWatcher;-><init>(Lcom/htc/server/report/error/ErrorReportController;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catch Lcom/htc/server/report/error/ReportException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    iget-object v3, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v3, "ErrorReportController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to create SystemWatcher for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v3, "ErrorReportController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileObserver is null, path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private startRecursiveObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z
    .locals 7

    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v4, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v4}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x32

    if-lt v5, v6, :cond_2

    const-string v5, "ErrorReportController"

    const-string v6, "Has added too many folders to monitor, stop adding!"

    invoke-static {v5, v6}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, p2, p3}, Lcom/htc/server/report/error/ErrorReportController;->startObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized startWatching(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/server/report/error/ErrorReportController;->mRunning:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/server/report/error/ErrorReportController;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "/system/framework"

    const/16 v2, 0x2c8

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/server/report/error/ErrorReportController;->startObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z

    const-string v1, "/system/app"

    const/16 v2, 0x2c8

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/server/report/error/ErrorReportController;->startObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z

    const-string v1, "/system/priv-app"

    const/16 v2, 0x2c8

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/server/report/error/ErrorReportController;->startObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z

    const-string v1, "/system/lib"

    const/16 v2, 0x2c8

    invoke-direct {p0, v1, v2, p1}, Lcom/htc/server/report/error/ErrorReportController;->startRecursiveObserverToWatchers(Ljava/lang/String;ILandroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "ErrorReportController"

    const-string v2, "Exception in startWatching"

    invoke-static {v1, v2, v0}, Lcom/android/server/am/HtcErrorReportManager$Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_3
    const-string v1, "ErrorReportController"

    const-string v2, "The current state is running and don\'t start twice"

    invoke-static {v1, v2}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized stopWatching()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/server/report/error/ErrorReportController;->mRunning:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    sget-boolean v3, Lcom/htc/server/report/error/ErrorReportController;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ErrorReportController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove fileObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/server/report/error/ErrorReportController;->mWatchers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/server/report/error/ErrorReportController;->mRunning:Z

    const-string v3, "ErrorReportController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopWatching is called, mRunning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/server/report/error/ErrorReportController;->mRunning:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/HtcErrorReportManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method
