.class Lcom/htc/utils/os/DebugUtil$WorkingThread;
.super Ljava/lang/Thread;
.source "DebugUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/utils/os/DebugUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkingThread"
.end annotation


# instance fields
.field private nowDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/utils/os/DebugUtil$WorkingThread;->nowDate:Ljava/util/Date;

    iput-object p1, p0, Lcom/htc/utils/os/DebugUtil$WorkingThread;->nowDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-class v8, Lcom/htc/utils/os/DebugUtil$WorkingThread;

    monitor-enter v8

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/htclog/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "DebugUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " doesn\'t exist and fail to create it!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v7, "yyyyMMdd_kkmmss.SSS"

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/htclog/dumpstate_partial_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/htc/utils/os/DebugUtil$WorkingThread;->nowDate:Ljava/util/Date;

    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ".txt"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lcom/htc/utils/os/DebugUtil$WorkingThread$1;

    invoke-direct {v7, p0}, Lcom/htc/utils/os/DebugUtil$WorkingThread$1;-><init>(Lcom/htc/utils/os/DebugUtil$WorkingThread;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v7, v4

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v6, v7, 0x1

    if-lez v6, :cond_1

    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v7, v4, v5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "DebugUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dumpState to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dumpstate -y -w > "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/profileflag/ProfileConfig;->runCommand(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v8

    return-void

    :catch_0
    move-exception v1

    const-string v7, "DebugUtil"

    const-string v9, "Error while try to dumpState"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method
