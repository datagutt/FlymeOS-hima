.class public Lcom/htc/lockscreen/framework/wrapper/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMasterStreamType(Landroid/media/AudioManager;)I
    .locals 1

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    return v0
.end method

.method public static isStreamMute(Landroid/media/AudioManager;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method
