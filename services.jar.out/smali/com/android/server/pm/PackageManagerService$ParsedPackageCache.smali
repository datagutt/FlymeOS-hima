.class Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsedPackageCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;,
        Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;
    }
.end annotation


# instance fields
.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private MAX_TIMEOUT_NANOS:J

.field private mArySeparateProcesses:[Ljava/lang/String;

.field private final mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mDataAppPath:Ljava/lang/String;

.field private mDataPreloadAppPath:Ljava/lang/String;

.field private mDataPreloadAppPath2:Ljava/lang/String;

.field private mDefaultParseFlags:I

.field private mExit:Z

.field private mFinished:Z

.field private mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSysAppPath:Ljava/lang/String;

.field private mSysFramePath:Ljava/lang/String;

.field private mSysPrivAppPath:Ljava/lang/String;

.field private final mlstApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mlstSkips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide v0, 0x45d964b800L

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mParseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->isDataApk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getParseFlags(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x45

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_4

    :cond_3
    const v0, 0x300004

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-ne v1, v0, :cond_5

    iget v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    or-int/lit16 v0, v0, 0xc5

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isDataApk(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath2:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addSkipPackage(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->getParseFlags(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstSkips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mExit:Z

    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->pkg:Landroid/content/pm/PackageParser$Package;

    goto :goto_0
.end method

.method public getSupportedAbis(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mCachedPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$ParsedPackage;->lstAbis:Ljava/util/List;

    goto :goto_0
.end method

.method public run()V
    .locals 26

    const-string v23, "PackageManager"

    const-string v24, "preparsing++"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v13

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ge v13, v0, :cond_7

    const/4 v13, 0x2

    :cond_0
    :goto_0
    new-instance v21, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v23

    const-string v24, "framework"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v22, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v23

    const-string v24, "priv-app"

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v20, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v23

    const-string v24, "app"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v23

    const-string v24, "app"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v23

    const-string v24, "preload"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    const-string v23, "/preload"

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysFramePath:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysPrivAppPath:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mSysAppPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataAppPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDataPreloadAppPath2:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_6
    const/4 v12, 0x0

    const-string v23, "debug.separate_processes"

    invoke-static/range {v23 .. v23}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_9

    const-string v23, "*"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    :goto_1
    invoke-static {v13}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mlstApks:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v14

    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "preparsing apk:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " core:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v14, :cond_a

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v13, :cond_a

    new-instance v23, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache$PreparsePackageTask;-><init>(Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;III)V

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    const/16 v23, 0x4

    move/from16 v0, v23

    if-le v13, v0, :cond_0

    const/4 v13, 0x4

    goto/16 :goto_0

    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    const-string v23, ","

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_1

    :cond_9
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mDefaultParseFlags:I

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mArySeparateProcesses:[Ljava/lang/String;

    goto :goto_1

    :cond_a
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    move-wide/from16 v16, v0

    const/4 v4, 0x0

    :cond_b
    :try_start_0
    sget-object v23, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    move-object/from16 v2, v23

    invoke-interface {v10, v0, v1, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v23

    if-eqz v23, :cond_c

    :goto_4
    if-nez v4, :cond_e

    const/16 v23, 0x1

    :goto_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    const-string v23, "PackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "preparsing--, finished:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->mFinished:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    sub-long v8, v24, v18

    const-wide/16 v24, 0x0

    cmp-long v23, v8, v24

    if-gtz v23, :cond_d

    const-wide/16 v8, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerService$ParsedPackageCache;->MAX_TIMEOUT_NANOS:J

    move-wide/from16 v24, v0

    sub-long v16, v24, v8

    const-wide/16 v24, 0x0

    cmp-long v23, v16, v24

    if-gtz v23, :cond_b

    const/4 v4, 0x1

    goto :goto_4

    :cond_e
    const/16 v23, 0x0

    goto :goto_5

    :catch_0
    move-exception v23

    goto :goto_3
.end method
