.class public Lcom/htc/service/DeviceManager3LM;
.super Ljava/lang/Object;
.source "DeviceManager3LM.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"


# instance fields
.field private mService:Landroid/os/IDeviceManager3LM;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DeviceManager3LM"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceManager3LM$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceManager3LM;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    return-void
.end method

.method public constructor <init>(Landroid/os/IDeviceManager3LM;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    return-void
.end method


# virtual methods
.method public getBluetoothEnabled()Z
    .locals 3

    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v1}, Landroid/os/IDeviceManager3LM;->getBluetoothEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceManager3LM"

    const-string v2, "getBluetoothEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getWifiEnabled()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/htc/service/DeviceManager3LM;->mService:Landroid/os/IDeviceManager3LM;

    invoke-interface {v3}, Landroid/os/IDeviceManager3LM;->getWifiState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DeviceManager3LM"

    const-string v4, "getWifiState: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
