.class public Lcom/sprint/net/cdma/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final CDMA_SERVICE:Ljava/lang/String; = "cdma"

.field private static final TAG:Ljava/lang/String; = "SpcsCdmaConnectionManager"


# instance fields
.field private mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;


# direct methods
.method public constructor <init>(Lcom/sprint/net/cdma/ICdmaConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    return-void
.end method


# virtual methods
.method public getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;

    move-result-object v1

    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdma2000Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdma2000Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 6

    const-string v2, ""

    :try_start_0
    iget-object v3, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v3}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprint/net/cdma/DeviceInfo;->getPrlVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpcsCdmaConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaPrlVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "SpcsCdmaConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCdmaPrlVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCdmaRoamingIndicator()I
    .locals 5

    const v0, 0x7fffffff

    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getCdmaRoamingIndicator()I

    move-result v0

    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaRoamingIndicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCdmaRoamingIndicator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationDownlink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIpAddress()Ljava/net/InetAddress;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v2}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "SpcsCdmaConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastMipResponce()I
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/ConnectionManager;->mService:Lcom/sprint/net/cdma/ICdmaConnectionManager;

    invoke-interface {v1}, Lcom/sprint/net/cdma/ICdmaConnectionManager;->getLastMipResponce()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "SpcsCdmaConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getModulationUplink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7fffffff

    goto :goto_0
.end method
