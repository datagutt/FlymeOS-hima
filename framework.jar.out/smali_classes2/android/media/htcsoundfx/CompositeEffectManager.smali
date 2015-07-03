.class public Landroid/media/htcsoundfx/CompositeEffectManager;
.super Ljava/lang/Object;
.source "CompositeEffectManager.java"

# interfaces
.implements Landroid/media/htcsoundfx/HtcEffectManagerInterface;


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/htcsoundfx/HtcEffectManagerInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/htcsoundfx/HtcEffectManagerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/CompositeEffectManager;->addEffect(Landroid/media/htcsoundfx/HtcEffectManagerInterface;)V

    return-void
.end method


# virtual methods
.method public addEffect(Landroid/media/htcsoundfx/HtcEffectManagerInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getSoundEffect(Z)I
    .locals 3

    iget-object v1, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->getSoundEffect(Z)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x320

    goto :goto_0
.end method

.method public getSystemProperty(I)I
    .locals 3

    iget-object v1, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->getSystemProperty(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x320

    goto :goto_0
.end method

.method public loadSoundEffect()V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->loadSoundEffect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEventChanged(IZ)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->onEventChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetSoundEffect()V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->resetSoundEffect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public restoreSoundEffect(Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->restoreSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendMsg(IIIILjava/lang/Object;I)V
    .locals 8

    iget-object v1, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSystemProperty(II)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1, p2}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->setSystemProperty(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSystemSoundEffect(I)V
    .locals 3

    iget-object v2, p0, Landroid/media/htcsoundfx/CompositeEffectManager;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerInterface;

    invoke-interface {v0, p1}, Landroid/media/htcsoundfx/HtcEffectManagerInterface;->setSystemSoundEffect(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
