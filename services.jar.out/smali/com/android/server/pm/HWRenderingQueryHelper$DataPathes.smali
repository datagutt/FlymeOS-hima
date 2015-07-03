.class Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;
.super Ljava/lang/Object;
.source "HWRenderingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/HWRenderingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataPathes"
.end annotation


# instance fields
.field final mDbFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, p2}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "HWRenderingQueryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to copy file from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move-object v2, v3

    move v5, v4

    :goto_1
    return v5

    :catch_0
    move-exception v1

    const-string v5, "HWRenderingQueryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to copy file while open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "HWRenderingQueryHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException while close "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private deleteAllFiles()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HWRenderingQueryHelper"

    const-string v2, "Fail to delete db"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method getSource()Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    move v6, v5

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v7, v0, v1

    add-int/lit8 v5, v6, 0x1

    const/4 v8, 0x2

    if-lt v6, v8, :cond_0

    :goto_1
    return-object v7

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    goto :goto_0

    :cond_1
    const-string v7, ""

    move v5, v6

    goto :goto_1
.end method

.method updateDataToPath(Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;)Z
    .locals 2

    invoke-direct {p1}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->deleteAllFiles()Z

    iget-object v0, p0, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->mDbFile:Ljava/io/File;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/HWRenderingQueryHelper$DataPathes;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
