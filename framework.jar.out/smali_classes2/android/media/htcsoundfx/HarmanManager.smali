.class public Landroid/media/htcsoundfx/HarmanManager;
.super Landroid/media/htcsoundfx/HtcEffectManagerBase;
.source "HarmanManager.java"


# static fields
.field private static final DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

.field public static final HARMAN_LIVESTAGE_BUNDLED:I = 0x1

.field public static final HARMAN_LIVESTAGE_CL:I = 0x4

.field public static final HARMAN_LIVESTAGE_ENABLE:I = 0x1

.field public static final HARMAN_LIVESTAGE_ERROR:I = -0x1

.field public static final HARMAN_LIVESTAGE_NC:I = 0x3

.field public static final HARMAN_LIVESTAGE_OFF:I = 0x0

.field public static final HARMAN_LIVESTAGE_OTHER:I = 0x5

.field public static final HARMAN_LIVESTAGE_PROFILE:I = 0x2

.field public static final HARMAN_LIVESTAGE_SOHO:I = 0x2

.field public static final HARMAN_SIGNALDOCTOR_ENABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HarmanManager"


# instance fields
.field private mLSIconOn:Z

.field private mLiveStageEnabled:I

.field private mSDIconOn:Z

.field private mSignalDoctorEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio.harman.signaldoctor.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "audio.harman.livestage.enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "audio.harman.livestage.profile"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, v4}, Landroid/media/htcsoundfx/HtcEffectManagerBase;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/media/AudioService;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Bundle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Soho"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=NC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=CL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=OFF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Bundle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Soho"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=NC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=CL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mValidEffectCommands:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "global_HarmanLS=Other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput v5, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    iput v5, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    iput v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    iput v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    return-void
.end method

.method private checkLiveStageSupport()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HarmanManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLiveStageSupport mLiveStageEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMirrorOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mMirrorOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMiracastOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mMiracastOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mSubwooferOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubwooferHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mSubwooferHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTHeadsetConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mBTHeadsetConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBTA2dpHeadset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mBTA2dpHeadset:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHDMIOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mHDMIOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mAllPlayOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mAllPlayOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    if-ne v2, v0, :cond_3

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mMirrorOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mMiracastOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSubwooferOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSubwooferHeadset:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mHeadsetConnected:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mBTHeadsetConnected:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mAllPlayOn:Z

    if-nez v2, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private showHarmanIcon(ZZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mLSIconOn:Z

    if-nez v0, :cond_2

    const-string v0, "HarmanManager"

    const-string v1, "enable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    const v2, 0x30200b4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iput-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mLSIconOn:Z

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSDIconOn:Z

    if-nez v0, :cond_3

    const-string v0, "HarmanManager"

    const-string v1, "enable SignalDoctor notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "signal_doctor"

    const v2, 0x30200b7

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iput-boolean v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mSDIconOn:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p2, :cond_0

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mLSIconOn:Z

    if-eqz v0, :cond_0

    const-string v0, "HarmanManager"

    const-string v1, "disable LiveStage notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "beats_effect"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    iput-boolean v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mLSIconOn:Z

    goto :goto_0

    :cond_3
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSDIconOn:Z

    if-eqz v0, :cond_1

    const-string v0, "HarmanManager"

    const-string v1, "disable SignalDoctor notification!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "signal_doctor"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    iput-boolean v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mSDIconOn:Z

    goto :goto_1
.end method

.method private updateSignalDoctor()V
    .locals 4

    iget v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "global_HarmanSD=ON"

    :goto_0
    const-string v1, "HarmanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameters("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "global_HarmanSD=OFF"

    goto :goto_0
.end method


# virtual methods
.method public getSystemProperty(I)I
    .locals 4

    const-string v0, "HarmanManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemProperty name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "HarmanManager"

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
    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/htcsoundfx/HarmanManager;->checkLiveStageSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadSoundEffect()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/media/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/media/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Landroid/media/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/media/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x320

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/media/htcsoundfx/HarmanManager;->isValidSystemSoundEffect(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    const-string v3, "HarmanManager"

    const-string v4, "loadSoundEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/media/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iput v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    iput v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    iput v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    invoke-direct {p0}, Landroid/media/htcsoundfx/HarmanManager;->updateSignalDoctor()V

    invoke-virtual {p0}, Landroid/media/htcsoundfx/HarmanManager;->updateSoundEffect()V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onMessageBeatsNotify()V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    if-ne v6, v1, :cond_0

    move v2, v1

    :goto_0
    iget v6, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    if-eqz v6, :cond_1

    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "HD_stream_only"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    invoke-static {v5, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    const-string v4, "HarmanManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMessageBeatsNotify active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", SDEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LSEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "HD_stream_only=F"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    and-int/2addr v3, v4

    and-int v4, v3, v2

    and-int v5, v3, v1

    invoke-direct {p0, v4, v5}, Landroid/media/htcsoundfx/HarmanManager;->showHarmanIcon(ZZ)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onPersistProperty(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string v0, "HarmanManager"

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
    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/htcsoundfx/HarmanManager;->DB_HARMAN_PROPERTY_NAME:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HarmanManager"

    const-string v1, "can\'t update harman property in system setting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetSoundEffect()V
    .locals 2

    const-string v0, "HarmanManager"

    const-string v1, "resetSoundEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

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
    .locals 10

    const/4 v9, 0x0

    const-string v0, "HarmanManager"

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

    iget-object v8, p0, Landroid/media/htcsoundfx/HarmanManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    packed-switch p1, :pswitch_data_0

    :try_start_0
    const-string v0, "HarmanManager"

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
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v6, 0x1f4

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, v9

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    :cond_1
    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSignalDoctorEnabled:I

    invoke-direct {p0}, Landroid/media/htcsoundfx/HarmanManager;->updateSignalDoctor()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    const/4 v7, 0x1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroid/media/htcsoundfx/HarmanManager;->mLiveStageEnabled:I

    invoke-virtual {p0}, Landroid/media/htcsoundfx/HarmanManager;->updateSoundEffect()V

    const/4 v7, 0x1

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    if-eq v0, p2, :cond_0

    iput p2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    invoke-virtual {p0}, Landroid/media/htcsoundfx/HarmanManager;->updateSoundEffect()V

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSoundEffect()V
    .locals 11

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/media/htcsoundfx/HarmanManager;->checkLiveStageSupport()Z

    move-result v9

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    const/16 v2, 0x320

    if-ne v0, v2, :cond_3

    iput v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    :goto_0
    const/4 v8, 0x1

    :cond_0
    :goto_1
    if-eqz v8, :cond_2

    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mEffectCommands:Ljava/util/HashMap;

    iget v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HarmanManager"

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
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/media/htcsoundfx/HarmanManager;->sendMsg(IIIILjava/lang/Object;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mForcedEffectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;

    iget v0, v0, Landroid/media/htcsoundfx/HtcEffectManagerBase$ForcedEffectEntry;->mEffectId:I

    iput v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    if-eqz v0, :cond_5

    iput v1, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    if-eqz v9, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    iget v2, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mSystemSoundEffect:I

    iput v0, p0, Landroid/media/htcsoundfx/HarmanManager;->mCurrentSoundEffect:I

    const/4 v8, 0x1

    goto :goto_1
.end method
