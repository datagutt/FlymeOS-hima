.class public final Lcom/nxp/nfc/NfcAla;
.super Ljava/lang/Object;
.source "NfcAla.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcAla"


# instance fields
.field private mService:Lcom/nxp/nfc/INfcAla;


# direct methods
.method public constructor <init>(Lcom/nxp/nfc/INfcAla;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    return-void
.end method


# virtual methods
.method public appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Lcom/nxp/nfc/INfcAla;->appletLoadApplet(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to Load applet"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "NfcAla"

    const-string v3, "RemoteException in AppletLoadApplet(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in AppletLoadApplet()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getKeyCertificate()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2}, Lcom/nxp/nfc/INfcAla;->getKeyCertificate()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "invalid data received"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "NfcAla"

    const-string v3, "RemoteException in getKeyCertificate(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in getKeyCertificate()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/nxp/nfc/NfcAla;->mService:Lcom/nxp/nfc/INfcAla;

    invoke-interface {v2, p1, p2}, Lcom/nxp/nfc/INfcAla;->getListofApplets(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const-string v2, "NfcAla"

    const-string v3, "RemoteException in GetListofApplets(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string v3, "RemoteException in GetListofApplets()"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
