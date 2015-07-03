.class public Landroid/media/htcsoundfx/HtcEffectManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "HtcEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/HtcEffectManager$1;,
        Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;
    }
.end annotation


# static fields
.field private static final SET_SYSTEM_EFFECT_PROFILE:I = 0x0

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static SUPPORT_DTS:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcEffectManager"

.field private static eADSReaderName:Ljava/lang/String;

.field private static manager:Lcom/htc/customization/HtcCustomizationManager;

.field private static reader:Lcom/htc/customization/HtcCustomizationReader;

.field private static readerNeedSIMReady:Z


# instance fields
.field private mBeatsSpeaker:Z

.field private mDefaultSoundEffect:I

.field private mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

.field private mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

.field private mEffectNotification:Ljava/lang/Object;

.field private mEffectNotificationStatus:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

.field private mIconId:I

.field private mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

.field private mVideoOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Android_Multimedia"

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    sput-boolean v1, Landroid/media/htcsoundfx/HtcEffectManager;->readerNeedSIMReady:Z

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->manager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager;->eADSReaderName:Ljava/lang/String;

    const/4 v3, 0x1

    sget-boolean v4, Landroid/media/htcsoundfx/HtcEffectManager;->readerNeedSIMReady:Z

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    :goto_0
    sput-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager;->reader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_theater_effect_logo"

    invoke-interface {v0, v2, v1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_1
    sput-boolean v0, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V
    .locals 8

    const/16 v7, -0x64

    const/16 v6, 0x386

    const/16 v5, 0x384

    const/16 v4, 0x320

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=none"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=Beats"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    :cond_0
    :goto_0
    iput v7, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    iput v7, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-direct {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->initEffectView()V

    return-void

    :cond_1
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_effect=SRS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    goto :goto_0
.end method

.method private checkBeatsSupport()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBeatsSupport mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBeatsSpeaker="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAllPlayOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mAllPlayOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    if-ne v2, v0, :cond_4

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v2, :cond_3

    :cond_1
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mAllPlayOn:Z

    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMirrorOn:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mMiracastOn:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferOn:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_8

    :cond_5
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTA2dpHeadset:Z

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHDMIOn:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v2, :cond_8

    :cond_7
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mAllPlayOn:Z

    if-eqz v2, :cond_2

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method private convertEffect(I)I
    .locals 4

    const/16 v0, 0x386

    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertEffect before="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x320

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    :goto_0
    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertEffect after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_1
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBeatsSpeaker:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v1, :cond_2

    move p1, v0

    :cond_2
    goto :goto_0
.end method

.method private generateEffectItem(Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;)Ljava/lang/Object;
    .locals 10

    const/4 v1, -0x1

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x307020c

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/media/htcsoundfx/HtcEffectManager$1;->$SwitchMap$android$media$htcsoundfx$HtcEffectManager$EffectNotificationStatus:[I

    invoke-virtual {p1}, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->ordinal()I

    move-result v9

    aget v0, v0, v9

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "HtcEffectManager"

    const-string v9, "dts"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x30200b1

    :goto_1
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "effect_enable"

    invoke-virtual {v6, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Landroid/media/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "HtcEffectManager"

    const-string v9, "beats"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x30200af

    goto :goto_1

    :pswitch_2
    const-string v0, "HtcEffectManager"

    const-string v9, "speaker"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x302008e

    goto :goto_1

    :pswitch_3
    const-string v0, "HtcEffectManager"

    const-string v9, "headset on : show turn off"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x302008e

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x3070219

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x307020f

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x3020028

    const/4 v8, 0x0

    goto :goto_1

    :pswitch_4
    const v1, 0x302008e

    const-string v0, "HtcEffectManager"

    const-string v9, "headset off : show turn on"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x3070218

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x3070210

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v4, 0x3020026

    const/4 v8, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getEffectItem(ZI)Ljava/lang/Object;
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->checkBeatsSupport()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, v5

    :goto_0
    return-object v3

    :cond_1
    iget v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/16 v7, 0x320

    if-eq v6, v7, :cond_3

    iget v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/16 v7, -0x64

    if-eq v6, v7, :cond_3

    move v0, v3

    :goto_1
    iget-boolean v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mHeadsetConnected:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mBTHeadsetConnected:Z

    if-nez v6, :cond_4

    move v1, v3

    :goto_2
    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    if-eqz v0, :cond_6

    packed-switch p2, :pswitch_data_0

    :cond_2
    :goto_3
    sget-object v3, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->No:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    if-ne v2, v3, :cond_8

    move-object v3, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :cond_4
    move v1, v4

    goto :goto_2

    :pswitch_0
    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Dts:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :pswitch_1
    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->Beats:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :pswitch_2
    if-eqz v1, :cond_5

    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :cond_5
    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOn:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :cond_6
    iget v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_7

    const-string v3, "HtcEffectManager"

    const-string v4, "speaker : srs disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_Speaker:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :cond_7
    sget-object v2, Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;->SRS_HeadsetOff:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    goto :goto_3

    :cond_8
    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    if-ne v3, v2, :cond_9

    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    if-nez v3, :cond_a

    :cond_9
    iput-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;

    invoke-direct {p0, v2}, Landroid/media/htcsoundfx/HtcEffectManager;->generateEffectItem(Landroid/media/htcsoundfx/HtcEffectManager$EffectNotificationStatus;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    :cond_a
    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectNotification:Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initEffectView()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSenseVersion:F

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "beats_effect"

    const v1, 0x30200af

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-direct {v0, v1, v2}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    sget-boolean v0, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    if-eqz v0, :cond_0

    const-string v0, "beats_effect"

    const v1, 0x30200b1

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v0, "beats_effect"

    const v1, 0x30200b0

    invoke-static {v0, v1, v4, v3}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0

    :cond_2
    iput-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/media/htcsoundfx/view/EffectViewNotification;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    goto :goto_1
.end method

.method private showView(ZI)V
    .locals 4

    const/16 v3, 0x385

    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSenseVersion:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_2

    const/16 v1, 0x384

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_2

    :cond_0
    invoke-virtual {p0, p2}, Landroid/media/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_5

    const/16 v1, 0x386

    if-eq p2, v1, :cond_4

    if-ne p2, v3, :cond_5

    :cond_4
    invoke-virtual {p0, p2}, Landroid/media/htcsoundfx/HtcEffectManager;->showBeatsIcon(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->hideBeatsIcon()V

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Landroid/media/htcsoundfx/HtcEffectManager;->getEffectItem(ZI)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1, v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0
.end method


# virtual methods
.method public getSoundEffect(Z)I
    .locals 2

    const-string v0, "HtcEffectManager"

    const-string v1, "getSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSystemProperty(I)I
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/htcsoundfx/HtcEffectManager;->getSoundEffect(Z)I

    move-result v0

    if-nez p1, :cond_1

    const/16 v2, 0x320

    if-eq v0, v2, :cond_0

    const/16 v2, -0x64

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public hideBeatsIcon()V
    .locals 2

    const-string v0, "HtcEffectManager"

    const-string v1, "disableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    return-void
.end method

.method public loadSoundEffect()V
    .locals 4

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    const/16 v3, -0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    :goto_0
    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v2

    return-void

    :cond_0
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMessageBeatsNotify()V
    .locals 5

    iget-object v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    sget-boolean v2, Landroid/media/htcsoundfx/HtcEffectManager;->SUPPORT_DTS:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x320

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    if-eqz v2, :cond_0

    const/16 v1, 0x385

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    const-string v2, "HtcEffectManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageBeatsNotify active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Landroid/media/htcsoundfx/HtcEffectManager;->showView(ZI)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onPersistProperty(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown property name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "audio.soundenhancer.effect"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HtcEffectManager"

    const-string v1, "can\'t update system sound effect in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVideoEvent(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoEvent client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_2

    :try_start_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    iget-object v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->mClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    :cond_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;-><init>(Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/media/htcsoundfx/HtcEffectManagerBase;Landroid/os/IBinder;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    :cond_1
    :goto_0
    iput-boolean p3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoOn:Z

    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    invoke-virtual {v0}, Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;->unlinkToDeath()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mVideoEvent:Landroid/media/htcsoundfx/HtcEffectManagerBase$VideoEvent;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSoundEffect()V
    .locals 2

    const-string v0, "HtcEffectManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/16 v0, -0x64

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    const/16 v0, -0x64

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSystemProperty(II)V
    .locals 1

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Landroid/media/htcsoundfx/HtcEffectManager;->setSystemSoundEffect(I)V

    goto :goto_0
.end method

.method public setSystemSoundEffect(I)V
    .locals 8

    const-string v0, "HtcEffectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemSoundEffect id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    if-ne v0, p1, :cond_0

    const-string v0, "HtcEffectManager"

    const-string v1, "system sound effect is the same as previous"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x64

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/HtcEffectManager;->isValidSystemSoundEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    invoke-virtual {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->updateSoundEffect()V

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v7

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDefaultSoundEffect:I

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public showBeatsIcon(I)V
    .locals 2

    const-string v0, "HtcEffectManager"

    const-string v1, "enableBeats notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    iget-object v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mDtsIcon:Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    invoke-interface {v0, v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x385
        :pswitch_0
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 14

    const/4 v5, 0x0

    const/16 v3, 0x320

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/media/htcsoundfx/HtcEffectManager;->checkBeatsSupport()Z

    move-result v10

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_3

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    :cond_0
    :goto_0
    if-eqz v9, :cond_5

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HtcEffectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    iget-object v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mAudioService:Landroid/media/AudioService;

    iget v1, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-nez v10, :cond_4

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v3, :cond_4

    iput v3, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    if-eqz v10, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSystemSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/htcsoundfx/HtcEffectManager;->convertEffect(I)I

    move-result v8

    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_0

    iput v8, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/media/htcsoundfx/HtcEffectManager;->mSenseVersion:F

    float-to-double v2, v0

    const-wide/high16 v12, 0x401c000000000000L    # 7.0

    cmpl-double v0, v2, v12

    if-ltz v0, :cond_2

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HtcEffectManager;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_1
.end method
