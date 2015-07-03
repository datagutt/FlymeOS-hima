.class public interface abstract Landroid/media/htcsoundfx/HtcEffectManagerInterface;
.super Ljava/lang/Object;
.source "HtcEffectManagerInterface.java"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract forceSoundEffect(ILandroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getSoundEffect(Z)I
.end method

.method public abstract getSystemProperty(I)I
.end method

.method public abstract loadSoundEffect()V
.end method

.method public abstract onEventChanged(IZ)V
.end method

.method public abstract onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
.end method

.method public abstract resetSoundEffect()V
.end method

.method public abstract restoreSoundEffect(Ljava/lang/String;)V
.end method

.method public abstract sendMsg(IIIILjava/lang/Object;I)V
.end method

.method public abstract setSystemProperty(II)V
.end method

.method public abstract setSystemSoundEffect(I)V
.end method
