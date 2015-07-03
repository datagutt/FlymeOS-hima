.class public Landroid/media/htcsoundfx/AudioSphereDolbyAdapter;
.super Landroid/media/htcsoundfx/AudioSphereManager;
.source "AudioSphereDolbyAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioSphereDolbyAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/htcsoundfx/AudioSphereManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onMessageBeatsNotify()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/htcsoundfx/AudioSphereDolbyAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Landroid/media/htcsoundfx/AudioSphereDolbyAdapter;->mCurrentSoundEffect:I

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/media/htcsoundfx/AudioSphereDolbyAdapter;->mCurrentSoundEffect:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v2, "AudioSphereDolbyAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setSystemProperty(II)V
    .locals 3

    const-string v0, "AudioSphereDolbyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/media/htcsoundfx/AudioSphereManager;->setSystemProperty(II)V

    return-void

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
