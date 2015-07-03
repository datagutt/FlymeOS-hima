.class public Lcom/android/server/HtcFlashlightManager;
.super Ljava/lang/Object;
.source "HtcFlashlightManager.java"


# static fields
.field private static sService:Landroid/os/IHtcHardwareService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getService()Landroid/os/IHtcHardwareService;
    .locals 3

    const-string v1, "FlashlightControl"

    const-string v2, "HtcFlashlightManager getService()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    sget-object v1, Lcom/android/server/HtcFlashlightManager;->sService:Landroid/os/IHtcHardwareService;

    goto :goto_0
.end method


# virtual methods
.method public get_front_flashlight_brightness(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->getFrontFlashlightBrightness(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in get_front_flashlight_brightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public has_front_flashlight()I
    .locals 4

    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->hasFrontFlashlight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in hasFrontFlashlight"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setFLTBrightness(I)I
    .locals 4

    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IHtcHardwareService;->setFlashlightBrightness(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in setBrightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set_front_flashlight_brightness(II)I
    .locals 4

    invoke-static {}, Lcom/android/server/HtcFlashlightManager;->getService()Landroid/os/IHtcHardwareService;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/os/IHtcHardwareService;->setFrontFlashlightBrightness(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "HtcFlashlightManager"

    const-string v3, "Dead Flashlight object in setFrontFlashlightBrightness"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_0
.end method
