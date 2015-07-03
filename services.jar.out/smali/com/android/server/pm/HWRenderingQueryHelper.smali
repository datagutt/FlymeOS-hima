.class Lcom/android/server/pm/HWRenderingQueryHelper;
.super Ljava/lang/Object;
.source "HWRenderingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;,
        Lcom/android/server/pm/HWRenderingQueryHelper$TableType;,
        Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final COLUMN_RENDERING_TYPE:Ljava/lang/String; = "rendering_type"

.field private static final DATA_DB_PATH:Ljava/lang/String; = "/data/data/com.htc.htccupd/lib/libcupdpmhwrl.so"

.field private static final DB_NAME:Ljava/lang/String; = "libpmhwrl.so"

.field private static final SELECTION_PACKAGE_NAME:Ljava/lang/String; = "package_name = ?"

.field private static final SYSTEM_DB_PATH:Ljava/lang/String; = "/system/etc/libpmhwrl.so"

.field private static final TABLE_APP_LIST:Ljava/lang/String; = "applist"

.field private static final TAG:Ljava/lang/String; = "HWRenderingQueryHelper"

.field private static mNewDataVersion:I

.field private static sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

.field private static final sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mUsedDatabasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mCtx:Landroid/content/Context;

    const-string v0, "libpmhwrl.so"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    return-void
.end method

.method private applyHWRenderingList(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/HWRenderingQueryHelper$TableType;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/HWRenderingQueryHelper;->queryHWRenderingList(Ljava/lang/String;)Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    move-result-object v4

    sget-object v5, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    if-ne v5, v4, :cond_0

    const/4 v5, 0x0

    :goto_1
    return v5

    :cond_0
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public static getDBDataVersion()I
    .locals 1

    sget v0, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return v0
.end method

.method private static getDataVersion(Landroid/database/sqlite/SQLiteOpenHelper;)I
    .locals 2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    return v1
.end method

.method private static getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-static {v0}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDbVersion(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private static getDbVersion(Ljava/io/File;)I
    .locals 7

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1
    :goto_1
    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v4, "HWRenderingQueryHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not open database :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v4
.end method

.method public static declared-synchronized getHelper(Landroid/content/Context;)Lcom/android/server/pm/HWRenderingQueryHelper;
    .locals 2

    const-class v1, Lcom/android/server/pm/HWRenderingQueryHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HWRenderingQueryHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;

    :cond_0
    sget-object v0, Lcom/android/server/pm/HWRenderingQueryHelper;->sQueryHelper:Lcom/android/server/pm/HWRenderingQueryHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initHWRenderingDatabaseLock()Z
    .locals 12

    const/4 v4, 0x0

    new-instance v5, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    const-string v9, "/system/etc/libpmhwrl.so"

    invoke-direct {v5, v9}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    const-string v9, "/data/data/com.htc.htccupd/lib/libcupdpmhwrl.so"

    invoke-direct {v0, v9}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mUsedDatabasePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v6

    invoke-static {v0}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v1

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v9}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Landroid/database/sqlite/SQLiteOpenHelper;)I

    move-result v8

    :goto_0
    move v2, v8

    const/4 v3, 0x0

    if-le v6, v2, :cond_0

    move-object v3, v5

    move v2, v6

    :cond_0
    if-le v1, v2, :cond_1

    move-object v3, v0

    move v2, v1

    :cond_1
    if-eqz v3, :cond_7

    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_2

    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get data from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_3
    invoke-virtual {v3, v7}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->updateDataToPath(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_4

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v9, :cond_4

    new-instance v9, Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;

    iget-object v10, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mCtx:Landroid/content/Context;

    const-string v11, "libpmhwrl.so"

    invoke-direct {v9, v10, v11, v2}, Lcom/android/server/pm/HWRenderingQueryHelper$DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v9, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_4
    sget-boolean v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v9, :cond_5

    const-string v9, "HWRenderingQueryHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initHWRenderingDatabaseLock, version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v2}, Lcom/android/server/pm/HWRenderingQueryHelper;->versionNumberToVersion(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput v2, Lcom/android/server/pm/HWRenderingQueryHelper;->mNewDataVersion:I

    return v4

    :cond_6
    invoke-static {v7}, Lcom/android/server/pm/HWRenderingQueryHelper;->getDataVersion(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)I

    move-result v8

    goto/16 :goto_0

    :cond_7
    if-ltz v2, :cond_8

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const-string v9, "HWRenderingQueryHelper"

    const-string v10, "No available data is found!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static versionNumberToVersion(I)Ljava/lang/String;
    .locals 2

    if-gez p0, :cond_0

    const-string v0, "NA"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xffff

    and-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method initData()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/HWRenderingQueryHelper;->initHWRenderingDatabaseLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return v0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method public queryAllHWRenderingList(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/HWRenderingQueryHelper$TableType;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "map can not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/HWRenderingQueryHelper;->applyHWRenderingList(Ljava/util/Map;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HWRenderingQueryHelper"

    const-string v3, "Fail in queryAllIfShouldEnable()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public queryHWRenderingList(Ljava/lang/String;)Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    .locals 13

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->UnknownOrError:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v1, :cond_1

    const-string v1, "HWRenderingQueryHelper"

    const-string v2, "DB helper is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v12, v11

    :goto_0
    return-object v12

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper;->mHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "applist"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rendering_type"

    aput-object v4, v2, v3

    const-string v3, "package_name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->WhiteList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_2
    move-object v12, v11

    goto :goto_0

    :cond_2
    :try_start_4
    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->BlackList:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;

    goto :goto_1

    :cond_3
    sget-object v11, Lcom/android/server/pm/HWRenderingQueryHelper$TableType;->None:Lcom/android/server/pm/HWRenderingQueryHelper$TableType;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v9

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    sget-object v2, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1

    :catch_1
    move-exception v10

    :try_start_7
    const-string v1, "HWRenderingQueryHelper"

    const-string v2, "Fail in queryHWRenderingList"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-object v1, Lcom/android/server/pm/HWRenderingQueryHelper;->sRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2
.end method
