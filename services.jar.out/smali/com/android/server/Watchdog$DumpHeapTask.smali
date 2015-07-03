.class final Lcom/android/server/Watchdog$DumpHeapTask;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpHeapTask"
.end annotation


# static fields
.field static final HPROF_EXTENSION:Ljava/lang/String; = ".syshprof"

.field static final HPROF_FOLDER:Ljava/lang/String; = "/data/htclog/"


# instance fields
.field private mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

.field private mHeapSize:J


# direct methods
.method public constructor <init>(Lcom/android/server/Watchdog$HeapMonitor;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    iput-wide p2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    return-void
.end method

.method private deleteAllHprof()Z
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v8, "/data/htclog/"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "Watchdog"

    const-string v9, "no /data/htclog/"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v7

    :cond_1
    new-instance v8, Lcom/android/server/Watchdog$DumpHeapTask$1;

    invoke-direct {v8, p0}, Lcom/android/server/Watchdog$DumpHeapTask$1;-><init>(Lcom/android/server/Watchdog$DumpHeapTask;)V

    invoke-virtual {v1, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v0, v6

    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    const-string v8, "Watchdog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v8, "Watchdog"

    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getHprofName(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-kkmm_"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htclog/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".syshprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isAvailableStorage(J)Z
    .locals 7

    new-instance v2, Landroid/os/StatFs;

    const-string v3, "/data"

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    const-string v3, "Watchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " heapSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v0, p1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask++"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapSize:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/Watchdog$DumpHeapTask;->isAvailableStorage(J)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Watchdog"

    const-string v3, "Not available storage"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/Watchdog$DumpHeapTask;->deleteAllHprof()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Watchdog"

    const-string v3, "deleteAllHprof error"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/Watchdog$DumpHeapTask;->getHprofName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpHeap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "Watchdog"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v2, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    const-string v2, "Watchdog"

    const-string v3, "DumpHeapTask--"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    invoke-virtual {v3}, Lcom/android/server/Watchdog$HeapMonitor;->monitor()V

    iput-object v5, p0, Lcom/android/server/Watchdog$DumpHeapTask;->mHeapMonitor:Lcom/android/server/Watchdog$HeapMonitor;

    const-string v3, "Watchdog"

    const-string v4, "DumpHeapTask--"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method
