.class public Lcom/htc/service/WirelessDisplayManager;
.super Ljava/lang/Object;
.source "WirelessDisplayManager.java"


# static fields
.field public static final CONFIG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifidisplay.conf"

.field public static final ERROR_MIRROR_DONGLE_NOT_FOUND:I = -0x6

.field public static final ERROR_MIRROR_MEDIA_RECORDER:I = -0x4

.field public static final ERROR_MIRROR_NETWORK_FAILURE:I = -0x1

.field public static final ERROR_MIRROR_OUT_OF_RANGE:I = -0x3

.field public static final ERROR_MIRROR_PLUGGED_FAILED:I = -0x5

.field public static final ERROR_MIRROR_WIFI_TURN_OFF:I = -0x2

.field public static final EXTRA_MIRROR_DISPLAY_STATE:Ljava/lang/String; = "mirror_display_state"

.field public static final EXTRA_MIRROR_DISPLAY_STATUS:Ljava/lang/String; = "mirror_display_status"

.field public static final EXTRA_MIRROR_ERROR_MESSAGE:Ljava/lang/String; = "mirror_error_message"

.field public static final MIRROR_DISPLAY_DONGLE_AVAILABLE_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DISPLAY_DONGLE_AVAILABLE"

.field public static final MIRROR_DISPLAY_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

.field public static final MIRROR_DONGLE_LIST_CHANGED_ACTION:Ljava/lang/String; = "com.htc.MIRROR_DONGLE_LIST_CHANGED"

.field public static final MIRROR_MODE_APP_PAUSE:I = 0x7

.field public static final MIRROR_MODE_CALL_PAUSE:I = 0x9

.field public static final MIRROR_MODE_DISPLAY_DISABLED:I = 0x1

.field public static final MIRROR_MODE_DISPLAY_DISABLING:I = 0x0

.field public static final MIRROR_MODE_DISPLAY_ENABLED:I = 0x3

.field public static final MIRROR_MODE_DISPLAY_ENABLING:I = 0x2

.field public static final MIRROR_MODE_DISPLAY_PAUSE:I = 0x4

.field public static final MIRROR_MODE_DISPLAY_UNKNOWN:I = 0x5

.field public static final MIRROR_MODE_DONGLE_WAIT:I = 0x8

.field public static final MIRROR_MODE_OUT_OF_RANGE:I = 0x6

.field public static final SWVER_FILE_PATH:Ljava/lang/String; = "/data/misc/wifidisplay.swver"

.field private static final TAG:Ljava/lang/String; = "WirelessDisplayManager"


# instance fields
.field private mService:Lcom/htc/service/IWirelessDisplayService;


# direct methods
.method public constructor <init>(Lcom/htc/service/IWirelessDisplayService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    return-void
.end method


# virtual methods
.method public changeVideoBitRate(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->changeVideoBitRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "changeVideoBitRate: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public extendTurnOffHotspotTimer()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->extendTurnOffHotspotTimer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "extendTurnOffHotspotTimer: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDongleIP()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getConnectedDongleIP()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getConnectedDongleIP: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectedDongleIPLong()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getConnectedDongleIPLong()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getConnectedDongleIPLong: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCurrentDongle()Lcom/htc/service/DongleInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getCurrentDongle()Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getCurrentDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDLNAPreloadEnable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDLNAPreloadEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDLNAPreloadEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultDongle()Lcom/htc/service/DongleInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDefaultDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultVideoBitRate()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v2}, Lcom/htc/service/IWirelessDisplayService;->getDefaultVideoBitRate()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "WirelessDisplayManager"

    const-string v3, "getDefaultVideoBitRate: RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDiscoveryDongleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getDiscoveryDongleList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDiscoveryDongleList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->getDonglePattern(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getDonglePattern: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFingerGestureEnable()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getFingerGestureEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getFingerGestureEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getInterface()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorDisplayStatus()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getMirrorDisplayStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getMirrorDisplayStatus: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMirrorModeState()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getMirrorModeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getMirrorModeState: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getunConfigDongleList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->getunConfigDongleList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string v2, "getunConfigDongleList: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mirrorModeStartStop(Z)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->mirrorModeStartStop(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "mirrorModeStartStop: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mirrorNow()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->mirrorNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "mirrorNow: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyScreenOff()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->notifyScreenOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "notifyScreenOff: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyUserUnConfigDoneleResult(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->notifyUserUnConfigDoneleResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "notifyUserUnConfigDoneleResult: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public playOnTV(Z)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->playOnTV(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "playOnTV: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public popDialog()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->popDialog()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDelayTimerStop(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->requestDelayTimerStop(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "requestDelayTimerStop: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/service/IWirelessDisplayService;->requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "requestWivuDiscovery: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public selectDongle(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->selectDongle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "selectDongle: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCQEEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setCQEEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setCQEEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDLNAPreloadEnable(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setDLNAPreloadEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setDLNAPreloadEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1, p2}, Lcom/htc/service/IWirelessDisplayService;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setDonglePattern: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerGestureEnable(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setFingerGestureEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setFingerGestureEnable: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setInterface: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setL2peApInfo(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setL2peApInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setL2peApInfo: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMirrorDisplayOnOff(Z)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setMirrorDisplayOnOff(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setMirrorDisplayOnOff: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiNetworkLimit(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->setWifiNetworkLimit(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "setWifiNetworkLimit: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startPatternLockFakeMirror(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1, p1}, Lcom/htc/service/IWirelessDisplayService;->startPatternLockFakeMirror(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "startPatternLockFakeMirror: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopWivuDiscovery()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->stopWivuDiscovery()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "stopWivuDiscovery: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public usedDongleFound()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/WirelessDisplayManager;->mService:Lcom/htc/service/IWirelessDisplayService;

    invoke-interface {v1}, Lcom/htc/service/IWirelessDisplayService;->usedDongleFound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "WirelessDisplayManager"

    const-string/jumbo v2, "usedDongleFound: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
