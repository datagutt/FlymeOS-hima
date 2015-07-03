.class public Landroid/media/htcsoundfx/DolbyManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "DolbyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/htcsoundfx/DolbyManager$2;,
        Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;
    }
.end annotation


# static fields
.field private static final DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

.field public static final DOLBY_EARBUDS:I = 0x2

.field private static final DOLBY_EARBUDS_NAME:Ljava/lang/String; = "Earbuds"

.field public static final DOLBY_ENABLE:I = 0x0

.field public static final DOLBY_ERROR:I = -0x1

.field public static final DOLBY_HIRES:I = 0x4

.field private static final DOLBY_HIRES_NAME:Ljava/lang/String; = "Hi_Res"

.field public static final DOLBY_INEAR:I = 0x3

.field private static final DOLBY_INEAR_NAME:Ljava/lang/String; = "In_Ear"

.field public static final DOLBY_OFF:I = 0x0

.field private static final DOLBY_OFF_NAME:Ljava/lang/String; = "Off"

.field public static final DOLBY_OTHER:I = 0x5

.field private static final DOLBY_OTHER_NAME:Ljava/lang/String; = "Others"

.field public static final DOLBY_PROFILE:I = 0x1

.field public static final DOLBY_SPEAKER:I = 0x1

.field private static final DOLBY_SPEAKER_NAME:Ljava/lang/String; = "Speaker"

.field private static final TAG:Ljava/lang/String; = "DolbyManager"


# instance fields
.field private mBeatsSpeaker:Z

.field private mDefaultSoundEffect:I

.field private mDolbyController:Landroid/media/htcsoundfx/DolbyController;

.field private mDolbyEnabled:I

.field private final mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

.field private mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

.field private mEffectNotification:Ljava/lang/Object;

.field private mEffectNotificationStatus:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.dolby.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.dolby.profile"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    new-instance v0, Landroid/media/htcsoundfx/DolbyManager$1;

    invoke-direct {v0, p0}, Landroid/media/htcsoundfx/DolbyManager$1;-><init>(Landroid/media/htcsoundfx/DolbyManager;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Speaker"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Earbuds"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "In_Ear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Hi_Res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "In_Ear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Earbuds"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "In_Ear"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Hi_Res"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Others"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    iput v5, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    iput v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    iput v7, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    invoke-static {}, Landroid/media/AudioManager;->hasBeatsSpeaker()Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    new-instance v0, Landroid/media/htcsoundfx/DolbyController;

    invoke-direct {v0, p1, p2}, Landroid/media/htcsoundfx/DolbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDsClientListener:Landroid/media/htcsoundfx/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Landroid/media/htcsoundfx/DolbyController;->setObserver(Landroid/media/htcsoundfx/dolby/IDsClientEvents;)V

    sget-object v0, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->No:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    iput-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->initEffectView()V

    return-void
.end method

.method private checkDolbySupport()Z
    .locals 3

    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkDolbySupport mDolbyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMirrorOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mMirrorOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mMiracastOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mMiracastOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSubwooferOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSubwooferHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBTHeadsetConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBTA2dpHeadset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTA2dpHeadset:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHDMIOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mHDMIOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBeatsSpeaker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAllPlayOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mAllPlayOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mMirrorOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mMiracastOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSubwooferHeadset:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTA2dpHeadset:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mHDMIOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBeatsSpeaker:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mAllPlayOn:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEffectItem(ZZ)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    if-nez v3, :cond_4

    const/4 v0, 0x1

    :goto_1
    sget-object v2, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->No:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    if-eqz p2, :cond_6

    if-eqz v0, :cond_5

    sget-object v2, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->SpeakerOn:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    :goto_2
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    if-nez v3, :cond_3

    :cond_2
    iput-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotificationStatus:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    invoke-virtual {p0, v2}, Landroid/media/htcsoundfx/DolbyManager;->generatEffectItem(Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    :cond_3
    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectNotification:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    sget-object v2, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->HeadsetOn:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    sget-object v2, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->SpeakerOff:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    goto :goto_2

    :cond_7
    sget-object v2, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->HeadsetOff:Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;

    goto :goto_2
.end method

.method private initEffectView()V
    .locals 5

    iget v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mSenseVersion:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const-string v1, "beats_effect"

    const v2, 0x30200b0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;->generateStatusBarIcon(Ljava/lang/String;IILjava/lang/String;)Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;

    move-result-object v0

    new-instance v1, Landroid/media/htcsoundfx/view/EffectViewStatusBar;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/htcsoundfx/view/EffectViewStatusBar;-><init>(Landroid/content/Context;Landroid/media/htcsoundfx/view/EffectViewStatusBar$StatusBarIcon;)V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/media/htcsoundfx/view/EffectViewNotification;

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/media/htcsoundfx/view/EffectViewNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    goto :goto_0
.end method

.method private showView(ZZ)V
    .locals 3

    iget v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mSenseVersion:F

    const/high16 v2, 0x40e00000    # 7.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "DolbyManager"

    const-string v2, "enable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "DolbyManager"

    const-string v2, "disable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/media/htcsoundfx/DolbyManager;->getEffectItem(ZZ)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "DolbyManager"

    const-string v2, "enable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1, v0}, Landroid/media/htcsoundfx/view/EffectViewInterface;->setView(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->show()V

    goto :goto_0

    :cond_2
    const-string v1, "DolbyManager"

    const-string v2, "disable Dolby notification!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectIconView:Landroid/media/htcsoundfx/view/EffectViewInterface;

    invoke-interface {v1}, Landroid/media/htcsoundfx/view/EffectViewInterface;->hide()V

    goto :goto_0
.end method


# virtual methods
.method protected generatEffectItem(Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;)Ljava/lang/Object;
    .locals 13

    const v1, 0x302008e

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x3070212

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, -0x1

    const/4 v10, -0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/media/htcsoundfx/DolbyManager$2;->$SwitchMap$android$media$htcsoundfx$DolbyManager$EffectNotificaionStatus:[I

    invoke-virtual {p1}, Landroid/media/htcsoundfx/DolbyManager$EffectNotificaionStatus;->ordinal()I

    move-result v11

    aget v0, v0, v11

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "DolbyManager"

    const-string v11, "speaker on : show turn off"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const v8, 0x307020f

    const v4, 0x3020028

    const v10, 0x307020d

    :goto_1
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.SURROUNDSOUND_SETTINGS"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "DolbyManager"

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
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContext:Landroid/content/Context;

    invoke-static/range {v0 .. v7}, Landroid/media/htcsoundfx/view/EffectViewNotification;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Z)Landroid/app/Notification;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "DolbyManager"

    const-string v11, "speaker off : show turn on"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const v8, 0x3070210

    const v4, 0x3020026

    const v10, 0x307020d

    const/4 v7, 0x1

    goto :goto_1

    :pswitch_2
    const-string v0, "DolbyManager"

    const-string v11, "headset on : show turn off"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const v8, 0x307020f

    const v4, 0x3020028

    const v10, 0x3070219

    goto :goto_1

    :pswitch_3
    const-string v0, "DolbyManager"

    const-string v11, "headset off : show turn on"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    const v8, 0x3070210

    const v4, 0x3020026

    const v10, 0x3070218

    const/4 v7, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSoundEffect(Z)I
    .locals 7

    const/16 v2, 0x320

    const-string v3, "DolbyManager"

    const-string v4, "getSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/media/htcsoundfx/DolbyManager;->getSystemProperty(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    :pswitch_0
    return v2

    :cond_0
    const/4 v0, -0x1

    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p1, :cond_1

    :try_start_0
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    :goto_1
    monitor-exit v3

    packed-switch v0, :pswitch_data_0

    const/16 v2, 0x386

    goto :goto_0

    :cond_1
    const-string v4, "DolbyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentSoundEffect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_1
    const/16 v2, -0x64

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSystemProperty(I)I
    .locals 4

    const/4 v0, 0x1

    const-string v1, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemProperty name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-ne v2, v0, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadSoundEffect()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v3, v3, v5

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    :cond_0
    sparse-switch v0, :sswitch_data_0

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset to enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :cond_1
    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSoundEffect dolby_enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyManager;->updateSoundEffect()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :sswitch_0
    const-string v2, "DolbyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load effect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reset to default="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
        0x386 -> :sswitch_0
    .end sparse-switch
.end method

.method public onMessageBeatsNotify()V
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

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

    const-string v2, "DolbyManager"

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

    invoke-direct {p0, v0, v1}, Landroid/media/htcsoundfx/DolbyManager;->showView(ZZ)V

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

.method public onPersistProperty(II)V
    .locals 3

    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPersistProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    const-string v0, "DolbyManager"

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
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/htcsoundfx/DolbyManager;->DB_DOLBY_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DolbyManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSoundEffect()V
    .locals 2

    const-string v0, "DolbyManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

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
    .locals 8

    const-string v0, "DolbyManager"

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

    const/4 v7, 0x0

    iget-object v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown property name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v7, 0x1

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/media/htcsoundfx/DolbyManager;->updateSoundEffect()V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    :cond_2
    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    const/4 v7, 0x1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSystemSoundEffect(I)V
    .locals 4

    const-string v1, "DolbyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSystemSoundEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x64

    if-ne p1, v1, :cond_0

    iget p1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/htcsoundfx/DolbyManager;->isValidSystemSoundEffect(I)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_1
    iget p1, p0, Landroid/media/htcsoundfx/DolbyManager;->mDefaultSoundEffect:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/media/htcsoundfx/DolbyManager;->setSystemProperty(II)V

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x320 -> :sswitch_0
    .end sparse-switch
.end method

.method updateSoundEffect()V
    .locals 13

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/media/htcsoundfx/DolbyManager;->checkDolbySupport()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v10, 0x1

    :goto_0
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mHeadsetConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mBTHeadsetConnected:Z

    if-eqz v0, :cond_6

    :cond_0
    iget v8, p0, Landroid/media/htcsoundfx/DolbyManager;->mSystemSoundEffect:I

    :goto_1
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_8

    iget v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v1, 0x320

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    :goto_2
    const/4 v9, 0x1

    :cond_1
    :goto_3
    if-eqz v9, :cond_c

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mEffectCommands:Ljava/util/HashMap;

    iget v1, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DolbyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v12

    :cond_2
    :goto_4
    if-nez v12, :cond_b

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const-string v0, "DolbyManager"

    const-string v1, "updateSoundEffect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    :cond_4
    :goto_6
    return-void

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    goto :goto_2

    :cond_8
    if-nez v10, :cond_9

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    if-eqz v10, :cond_1

    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    if-eq v0, v8, :cond_1

    iput v8, p0, Landroid/media/htcsoundfx/DolbyManager;->mCurrentSoundEffect:I

    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/htcsoundfx/DolbyController;->setOn(Z)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mDolbyController:Landroid/media/htcsoundfx/DolbyController;

    invoke-virtual {v0, v7}, Landroid/media/htcsoundfx/DolbyController;->setProfile(Ljava/lang/String;)Z

    move-result v12

    goto :goto_4

    :cond_b
    const-string v0, "DolbyManager"

    const-string v1, "updateSoundEffect successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    iget v0, p0, Landroid/media/htcsoundfx/DolbyManager;->mSenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/DolbyManager;->sendMsg(IIIILjava/lang/Object;I)V

    goto :goto_6
.end method
