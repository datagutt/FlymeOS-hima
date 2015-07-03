.class public interface abstract Lcom/sprint/net/cdma/ICdmaConnectionManager;
.super Ljava/lang/Object;
.source "ICdmaConnectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/ICdmaConnectionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCdma2000Info()Lcom/sprint/net/cdma/Cdma2000Info;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCdmaRoamingIndicator()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceInfo()Lcom/sprint/net/cdma/DeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEvdoInfo()Lcom/sprint/net/cdma/EvdoInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIpAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastMipResponce()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
