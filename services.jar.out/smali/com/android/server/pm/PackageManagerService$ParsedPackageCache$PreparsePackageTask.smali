.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparsePackageTask"
.end annotation


# instance fields
.field private mCore:I

.field private mID:I

.field private mTotals:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mID:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mCore:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :cond_0
    :goto_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5600(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->mTotals:I

    if-lt v3, v11, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v11, "PackageManager"

    const-string v12, "Exception in PreparsePackageTask"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # invokes: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I
    invoke-static {v11, v9}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$5900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I

    move-result v6

    const/4 v11, -0x1

    if-eq v11, v6, :cond_0

    new-instance v8, Landroid/content/pm/PackageParser;

    invoke-direct {v8}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6000(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v8, v1, v6}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_0

    :try_start_3
    new-instance v4, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;

    invoke-direct {v4, v7}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # invokes: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->isDataApk(Ljava/lang/String;)Z
    invoke-static {v11, v9}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6100(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v11

    if-eqz v11, :cond_6

    const/4 v2, 0x0

    :try_start_4
    invoke-static {v1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/android/internal/content/NativeLibraryHelper;->getSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Fail to parse library:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :goto_3
    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_6
    :goto_4
    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6300(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v11

    invoke-virtual {v11, v9, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v11, "PackageManager"

    const-string v12, "PackageParserException"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_7
    :try_start_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;->this$0:Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;

    # getter for: Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->EMPTY_LIST:Ljava/util/List;
    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->access$6200(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v4, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->lstAbis:Ljava/util/List;

    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No native library:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_7
    const-string v11, "PackageManager"

    const-string v12, "NativeLibraryParseException"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_4

    :cond_8
    :try_start_9
    iput-object v5, v4, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->lstAbis:Ljava/util/List;

    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Abis:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v11

    :try_start_a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
.end method
