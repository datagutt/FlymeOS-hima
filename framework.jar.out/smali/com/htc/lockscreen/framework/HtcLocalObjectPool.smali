.class public Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
.super Ljava/lang/Object;
.source "HtcLocalObjectPool.java"


# static fields
.field private static sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;


# instance fields
.field private mPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
    .locals 2

    const-class v1, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    invoke-direct {v0}, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;

    :cond_0
    sget-object v0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->sInstance:Lcom/htc/lockscreen/framework/HtcLocalObjectPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v2, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    iget-object v2, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/framework/HtcLocalObjectPool;->mPool:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
