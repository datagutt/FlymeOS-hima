.class public abstract Lcom/htc/service/IWirelessDisplayService$Stub;
.super Landroid/os/Binder;
.source "IWirelessDisplayService.java"

# interfaces
.implements Lcom/htc/service/IWirelessDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/service/IWirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.service.IWirelessDisplayService"

.field static final TRANSACTION_changeVideoBitRate:I = 0x1f

.field static final TRANSACTION_extendTurnOffHotspotTimer:I = 0x1d

.field static final TRANSACTION_getConnectedDongleIP:I = 0x9

.field static final TRANSACTION_getConnectedDongleIPLong:I = 0xa

.field static final TRANSACTION_getCurrentDongle:I = 0x1b

.field static final TRANSACTION_getDLNAPreloadEnable:I = 0x14

.field static final TRANSACTION_getDefaultDongle:I = 0x6

.field static final TRANSACTION_getDefaultVideoBitRate:I = 0x20

.field static final TRANSACTION_getDiscoveryDongleList:I = 0x4

.field static final TRANSACTION_getDonglePattern:I = 0x19

.field static final TRANSACTION_getFingerGestureEnable:I = 0x12

.field static final TRANSACTION_getInterface:I = 0xf

.field static final TRANSACTION_getMirrorDisplayStatus:I = 0x3

.field static final TRANSACTION_getMirrorModeState:I = 0xb

.field static final TRANSACTION_getunConfigDongleList:I = 0x5

.field static final TRANSACTION_mirrorModeStartStop:I = 0xc

.field static final TRANSACTION_mirrorNow:I = 0x15

.field static final TRANSACTION_notifyScreenOff:I = 0x23

.field static final TRANSACTION_notifyUserUnConfigDoneleResult:I = 0x16

.field static final TRANSACTION_playOnTV:I = 0x2

.field static final TRANSACTION_popDialog:I = 0x10

.field static final TRANSACTION_requestDelayTimerStop:I = 0x1e

.field static final TRANSACTION_requestWivuDiscovery:I = 0x7

.field static final TRANSACTION_selectDongle:I = 0xd

.field static final TRANSACTION_setCQEEnabled:I = 0x22

.field static final TRANSACTION_setDLNAPreloadEnable:I = 0x13

.field static final TRANSACTION_setDonglePattern:I = 0x1a

.field static final TRANSACTION_setFingerGestureEnable:I = 0x11

.field static final TRANSACTION_setInterface:I = 0xe

.field static final TRANSACTION_setL2peApInfo:I = 0x17

.field static final TRANSACTION_setMirrorDisplayOnOff:I = 0x1

.field static final TRANSACTION_setWifiNetworkLimit:I = 0x21

.field static final TRANSACTION_startPatternLockFakeMirror:I = 0x18

.field static final TRANSACTION_stopWivuDiscovery:I = 0x8

.field static final TRANSACTION_usedDongleFound:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/service/IWirelessDisplayService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.htc.service.IWirelessDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/service/IWirelessDisplayService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/htc/service/IWirelessDisplayService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/htc/service/IWirelessDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    :sswitch_0
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setMirrorDisplayOnOff(Z)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :sswitch_2
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    :goto_2
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->playOnTV(Z)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_2

    :sswitch_3
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getMirrorDisplayStatus()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    move v7, v6

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDiscoveryDongleList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_5
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getunConfigDongleList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_6
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_7
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v2, v6

    :goto_3
    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/service/IWirelessDisplayService$Stub;->requestWivuDiscovery(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_4
    move v2, v7

    goto :goto_3

    :sswitch_8
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->stopWivuDiscovery()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getConnectedDongleIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getConnectedDongleIPLong()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :sswitch_b
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getMirrorModeState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_c
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    move v0, v6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->mirrorModeStartStop(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    move v7, v6

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    move v0, v7

    goto :goto_4

    :sswitch_d
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->selectDongle(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_e
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setInterface(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->popDialog()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_11
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    move v0, v6

    :goto_5
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setFingerGestureEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_8
    move v0, v7

    goto :goto_5

    :sswitch_12
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getFingerGestureEnable()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    move v0, v6

    :goto_6
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setDLNAPreloadEnable(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto :goto_6

    :sswitch_14
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDLNAPreloadEnable()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_15
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->mirrorNow()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_16
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    move v0, v6

    :goto_7
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->notifyUserUnConfigDoneleResult(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_c
    move v0, v7

    goto :goto_7

    :sswitch_17
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setL2peApInfo(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_d

    move v0, v6

    :goto_8
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->startPatternLockFakeMirror(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_d
    move v0, v7

    goto :goto_8

    :sswitch_19
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDonglePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/service/IWirelessDisplayService$Stub;->setDonglePattern(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1b
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getCurrentDongle()Lcom/htc/service/DongleInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Lcom/htc/service/DongleInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1c
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->usedDongleFound()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_f

    move v7, v6

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->extendTurnOffHotspotTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1e
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    move v0, v6

    :goto_9
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->requestDelayTimerStop(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_10
    move v0, v7

    goto :goto_9

    :sswitch_1f
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->changeVideoBitRate(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_20
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->getDefaultVideoBitRate()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_21
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    move v0, v6

    :goto_a
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setWifiNetworkLimit(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_11
    move v0, v7

    goto :goto_a

    :sswitch_22
    const-string v8, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    move v0, v6

    :goto_b
    invoke-virtual {p0, v0}, Lcom/htc/service/IWirelessDisplayService$Stub;->setCQEEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_12
    move v0, v7

    goto :goto_b

    :sswitch_23
    const-string v7, "com.htc.service.IWirelessDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/service/IWirelessDisplayService$Stub;->notifyScreenOff()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
