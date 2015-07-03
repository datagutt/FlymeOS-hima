.class Landroid/media/HtcApplicationHelper;
.super Ljava/lang/Object;
.source "HtcApplicationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/HtcApplicationHelper$1;,
        Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HtcApplicationHelper"

    sput-object v0, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static currentApplication()Landroid/app/Application;
    .locals 2

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/media/HtcApplicationHelper;->getApplicationInfo()Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;->currentApplication()Landroid/app/Application;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getApplicationInfo()Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;
    .locals 6

    sget-object v4, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    const-string v5, "getApplicationInfo E"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;

    new-instance v4, Landroid/media/HtcApplicationHelper;

    invoke-direct {v4}, Landroid/media/HtcApplicationHelper;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/media/HtcApplicationHelper$HtcApplicationInfoRetriever;-><init>(Landroid/media/HtcApplicationHelper;Landroid/media/HtcApplicationHelper$1;)V

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    sget-object v4, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t get main looper"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v4, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    const-string v5, "getApplicationInfo X"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 12

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-static {}, Landroid/media/HtcApplicationHelper;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :cond_0
    sget-object v9, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get Package Name from Application : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v9, v2

    if-lez v9, :cond_2

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    move-object v1, v2

    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    sget-object v9, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Candidate Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    aget-object v7, v2, v9

    sget-object v9, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Get Package Name from Candiates: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    sget-object v9, Landroid/media/HtcApplicationHelper;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current Package Name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
