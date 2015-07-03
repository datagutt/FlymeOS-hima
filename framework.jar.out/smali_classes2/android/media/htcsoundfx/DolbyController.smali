.class public Landroid/media/htcsoundfx/DolbyController;
.super Ljava/lang/Object;
.source "DolbyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/DolbyController$DsClientListener;,
        Landroid/media/htcsoundfx/DolbyController$DsClientHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

.field private mDsClientBound:Z

.field private mDsClientConnected:Z

.field private mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

.field private mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

.field private mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    const-string v0, "DolbyController"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    new-instance v0, Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    invoke-direct {v0, p0, p0}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;-><init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/media/htcsoundfx/dolby/DsEffect;->isEffectExist()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->prepare()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Landroid/media/htcsoundfx/DolbyController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/htcsoundfx/DolbyController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->prepare()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/IDsClientEvents;
    .locals 1

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/htcsoundfx/DolbyController;)Landroid/media/htcsoundfx/dolby/DsClient;
    .locals 1

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    return-object v0
.end method

.method static synthetic access$402(Landroid/media/htcsoundfx/DolbyController;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    return p1
.end method

.method static synthetic access$500(Landroid/media/htcsoundfx/DolbyController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/htcsoundfx/DolbyController;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    return v0
.end method

.method private findProfileById(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v1}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, p1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findProfileByName(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getProfileCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDoblyInstanceExist()Z
    .locals 2

    :try_start_0
    const-string v1, "android.dolby.DsClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    const-string v1, "DolbyController"

    const-string v2, "prepare"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/media/htcsoundfx/DolbyController;->isInitialized(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    new-instance v1, Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-direct {v1}, Landroid/media/htcsoundfx/dolby/DsClient;-><init>()V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/DolbyController$DsClientListener;->getProxeyInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    :cond_1
    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_2

    const-string v1, "DolbyController"

    const-string v2, "Bound DsService successful"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "DolbyController"

    const-string v2, "Bound DsService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private prepareAsync()V
    .locals 5

    const-string v2, "DolbyController"

    const-string v3, "prepareAsync"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/media/htcsoundfx/dolby/DsEffect;->isEffectExist()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    if-nez v2, :cond_1

    new-instance v2, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    iget-object v4, p0, Landroid/media/htcsoundfx/DolbyController;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, p0, v4}, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;-><init>(Landroid/media/htcsoundfx/DolbyController;Landroid/media/htcsoundfx/DolbyController;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    :cond_1
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;

    invoke-virtual {v2, v1}, Landroid/media/htcsoundfx/DolbyController$DsClientHandler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "DolbyController"

    const-string v2, "release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    :cond_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/htcsoundfx/dolby/DsClient;->setEventListener(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private restart()V
    .locals 2

    const-string v0, "DolbyController"

    const-string v1, "restart DsClient"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->prepareAsync()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v1, "DolbyController"

    const-string v2, "finalize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientListener:Landroid/media/htcsoundfx/DolbyController$DsClientListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientHandler:Landroid/media/htcsoundfx/DolbyController$DsClientHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DolbyController"

    const-string v3, "exception occure at finalize"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getOn()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v3}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsOn()Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getProfile()Ljava/lang/String;
    .locals 6

    const-string v2, "DolbyController"

    const-string v3, "getProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v2}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/media/htcsoundfx/DolbyController;->findProfileById(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolbyController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3

    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized(Z)Z

    move-result v0

    return v0
.end method

.method public isInitialized(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClientBound:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "DolbyController"

    const-string v3, "Havn\'t bound to DsClient, try to restart"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->restart()V

    :cond_0
    monitor-exit v2

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setObserver(Landroid/media/htcsoundfx/dolby/IDsClientEvents;)V
    .locals 0

    iput-object p1, p0, Landroid/media/htcsoundfx/DolbyController;->mObserver:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    return-void
.end method

.method public setOn(Z)Z
    .locals 8

    const/4 v4, 0x0

    sget v3, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    iget-object v5, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v4

    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getDsOn()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, p1}, Landroid/media/htcsoundfx/dolby/DsClient;->setDsOnChecked(Z)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    const-string v1, "on"

    :goto_2
    sget v5, Landroid/media/htcsoundfx/dolby/DsConstants;->DS_NO_ERROR:I

    if-ne v3, v5, :cond_3

    const-string v4, "DolbyController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " successful"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/os/DeadObjectException;->printStackTrace()V

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    const-string v1, "off"

    goto :goto_2

    :cond_3
    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDs "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "DolbyController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProfile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/media/htcsoundfx/DolbyController;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyController;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v4

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/htcsoundfx/DolbyController;->findProfileByName(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I

    move-result v6

    if-ne v1, v6, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string v6, "DolbyController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProfile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " successed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v3

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6, v1}, Landroid/media/htcsoundfx/dolby/DsClient;->setSelectedProfile(I)V

    iget-object v6, p0, Landroid/media/htcsoundfx/DolbyController;->mDsClient:Landroid/media/htcsoundfx/dolby/DsClient;

    invoke-virtual {v6}, Landroid/media/htcsoundfx/dolby/DsClient;->getSelectedProfile()I
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-ne v1, v6, :cond_2

    move v2, v3

    :goto_2
    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyController;->release()V

    :cond_3
    :goto_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method
