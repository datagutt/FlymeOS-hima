.class public Landroid/media/htcsoundfx/DolbyAudioSphereAdapter;
.super Landroid/media/htcsoundfx/DolbyManager;
.source "DolbyAudioSphereAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/DolbyAudioSphereAdapter$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DolbyAudioSphereAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/media/htcsoundfx/DolbyManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method protected generatEffectItem(Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;)Ljava/lang/Object;
    .locals 13

    const v1, 0x302008e

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x3070212

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/media/htcsoundfx/DolbyAudioSphereAdapter$1;->$SwitchMap$android$media$htcsoundfx$DolbyManager$EffectNotificaionStatus:[I

    invoke-virtual {p1}, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->ordinal()I

    move-result v11

    aget v0, v0, v11

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v11, "speaker on : show switch therater mode"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const v8, 0x3070215

    const v4, 0x3020026

    const v10, 0x3070216

    :goto_1
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "DolbyAudioSphereAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "actionTurnOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyAudioSphereAdapter;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Landroid/media/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v11, "speaker off : show swithc music mode"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const v8, 0x3070215

    const v4, 0x3020026

    const v10, 0x3070217

    goto :goto_1

    :pswitch_2
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v11, "headset on : show turn off"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const v8, 0x307020f

    const v4, 0x3020028

    const v10, 0x3070219

    goto :goto_1

    :pswitch_3
    const-string v0, "DolbyAudioSphereAdapter"

    const-string v11, "headset off : show turn on"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const v8, 0x3070210

    const v4, 0x3020026

    const v10, 0x3070218

    const/4 v7, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
