.class public Lcom/android/server/HtcHardwareService;
.super Landroid/os/IHtcHardwareService$Stub;
.source "HtcHardwareService.java"


# static fields
.field private static sService:Landroid/os/IHtcHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IHtcHardwareService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/HtcHardwareService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getService()Landroid/os/IHtcHardwareService;
    .locals 2

    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "htchardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    sput-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    sget-object v1, Lcom/android/server/HtcHardwareService;->sService:Landroid/os/IHtcHardwareService;

    goto :goto_0
.end method

.method private static native getVTEBrightness_native(I)I
.end method

.method private static native hasFrontFlashlight_native()I
.end method

.method private static native setFlashlightBrightness_native(I)V
.end method

.method private static native setVTEBrightness_native(II)I
.end method


# virtual methods
.method public getFrontFlashlightBrightness(I)I
    .locals 1

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->getVTEBrightness_native(I)I

    move-result v0

    return v0
.end method

.method public hasFrontFlashlight()I
    .locals 1

    invoke-static {}, Lcom/android/server/HtcHardwareService;->hasFrontFlashlight_native()I

    move-result v0

    return v0
.end method

.method public setFlashlightBrightness(I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/HtcHardwareService;->setFlashlightBrightness_native(I)V

    return-void
.end method

.method public setFrontFlashlightBrightness(II)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/HtcHardwareService;->setVTEBrightness_native(II)I

    move-result v0

    return v0
.end method
