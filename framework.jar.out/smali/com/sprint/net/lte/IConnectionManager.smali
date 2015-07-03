.class public interface abstract Lcom/sprint/net/lte/IConnectionManager;
.super Ljava/lang/Object;
.source "IConnectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/lte/IConnectionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getConnectionInfo()Lcom/sprint/net/lte/ConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeviceInfo()Lcom/sprint/net/lte/DeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getModulationDownlink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getModulationUplink()Lcom/sprint/net/lte/BaseStationInfo$Modulation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getState()Lcom/sprint/net/lte/ConnectionManager$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/sprint/net/lte/ConnectionManager$Status;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract test(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
