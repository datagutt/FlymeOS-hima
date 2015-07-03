.class public Lcom/htc/service/MountManager;
.super Ljava/lang/Object;
.source "MountManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MountManager"


# instance fields
.field private mService:Landroid/os/storage/IMountService;


# direct methods
.method public constructor <init>(Landroid/os/storage/IMountService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    return-void
.end method


# virtual methods
.method public decryptStorage(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "decryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public enableModemLink()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->enableModemLink()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "enableModemLink: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "password cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "encryptStorage: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "formatVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStorageUsers(Ljava/lang/String;)[I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "getStorageUsers: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public isUsbMassStorageConnected()Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string v2, "isUsbMassStorageConnected: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mountISO(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountISO(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "mountISO: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "mountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAutoMountISOEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setAutoMountISOEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "setAutoMountISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMountISOEnabled(Z)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setMountISOEnabled(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "setMountISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setPCtoolISOEnabled(Z)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setPCtoolISOEnabled(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "setPCtoolISOEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setUsbMassStorageEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "setUsbMassStorageEnabled: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmountISO()I
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->unmountISO()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "unmountISO: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    goto :goto_0
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/htc/service/MountManager;->unmountVolume(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public unmountVolume(Ljava/lang/String;ZZ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/service/MountManager;->mService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MountManager"

    const-string/jumbo v2, "unmountVolume: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
