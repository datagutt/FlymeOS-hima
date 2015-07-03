.class public abstract Landroid/net/wifi/IWifiManager$Stub;
.super Landroid/os/Binder;
.source "IWifiManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field static final TRANSACTION_NotifyWifiPhoneCallComeIn:I = 0x5a

.field static final TRANSACTION_NotifyWifiPhoneCallEnd:I = 0x5b

.field static final TRANSACTION_RemoveOpenNetworkFromBlockedList:I = 0x68

.field static final TRANSACTION_SetAutoInterworking:I = 0x84

.field static final TRANSACTION_SetSignInStatus:I = 0x6a

.field static final TRANSACTION_acquireMulticastLock:I = 0x1f

.field static final TRANSACTION_acquireWifiLock:I = 0x1a

.field static final TRANSACTION_addOpenNetworkToBlockedList:I = 0x67

.field static final TRANSACTION_addOrUpdateNetwork:I = 0x5

.field static final TRANSACTION_addToBlacklist:I = 0x28

.field static final TRANSACTION_checkWifiApEnabledMhsRequest:I = 0x49

.field static final TRANSACTION_clearBlacklist:I = 0x29

.field static final TRANSACTION_decryptConfPassword:I = 0x4e

.field static final TRANSACTION_disableNetwork:I = 0x8

.field static final TRANSACTION_disconnect:I = 0xd

.field static final TRANSACTION_enableAggressiveHandover:I = 0x3b

.field static final TRANSACTION_enableNetwork:I = 0x7

.field static final TRANSACTION_enablePowerActiveForFotaDownload:I = 0x35

.field static final TRANSACTION_enablePowerActiveMode:I = 0x34

.field static final TRANSACTION_enableTdls:I = 0x2c

.field static final TRANSACTION_enableTdlsWithMacAddress:I = 0x2d

.field static final TRANSACTION_enableVerboseLogging:I = 0x38

.field static final TRANSACTION_encryptConfPassword:I = 0x4f

.field static final TRANSACTION_getAggressiveHandover:I = 0x3a

.field static final TRANSACTION_getAllowScansWithTraffic:I = 0x3c

.field static final TRANSACTION_getAssocListStr:I = 0x4c

.field static final TRANSACTION_getAssociationManual:I = 0x6e

.field static final TRANSACTION_getAutoInterworkingState:I = 0x83

.field static final TRANSACTION_getBatchedScanResults:I = 0x30

.field static final TRANSACTION_getCaptivePortalState:I = 0x6c

.field static final TRANSACTION_getChannelList:I = 0xa

.field static final TRANSACTION_getClientInfo:I = 0x44

.field static final TRANSACTION_getConfigFile:I = 0x2b

.field static final TRANSACTION_getConfiguredNetworks:I = 0x3

.field static final TRANSACTION_getConnectionInfo:I = 0x10

.field static final TRANSACTION_getConnectionStatistics:I = 0x3e

.field static final TRANSACTION_getDhcpInfo:I = 0x18

.field static final TRANSACTION_getDockWifiApAutoEnabled:I = 0x64

.field static final TRANSACTION_getDockWifiAutoEnabled:I = 0x66

.field static final TRANSACTION_getDongleScanList:I = 0x7f

.field static final TRANSACTION_getEapSimAkaSlot:I = 0x5d

.field static final TRANSACTION_getFrequencyBand:I = 0x15

.field static final TRANSACTION_getHotspotNumAllowedChannels:I = 0x46

.field static final TRANSACTION_getHotspotState:I = 0x4b

.field static final TRANSACTION_getHtcNewSenseWifiApConfiguration:I = 0x40

.field static final TRANSACTION_getHtcWifiApConfiguration:I = 0x3f

.field static final TRANSACTION_getMostPreferredNetwork:I = 0x8e

.field static final TRANSACTION_getOpenNetworkBlockedList:I = 0x69

.field static final TRANSACTION_getPPPOEInfo:I = 0x8d

.field static final TRANSACTION_getPrivilegedConfiguredNetworks:I = 0x4

.field static final TRANSACTION_getRequestedList:I = 0x47

.field static final TRANSACTION_getScanResults:I = 0xc

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getTetheringDhcpRange:I = 0x4d

.field static final TRANSACTION_getVFAutoJoin:I = 0x70

.field static final TRANSACTION_getVerboseLoggingLevel:I = 0x39

.field static final TRANSACTION_getWanDetectionEnabled:I = 0x61

.field static final TRANSACTION_getWifiApConfiguration:I = 0x23

.field static final TRANSACTION_getWifiApEnabledState:I = 0x22

.field static final TRANSACTION_getWifiBatteryUsageHint:I = 0x36

.field static final TRANSACTION_getWifiDisplayApConfig:I = 0x78

.field static final TRANSACTION_getWifiEnabledState:I = 0x12

.field static final TRANSACTION_getWifiOffloadEnabled:I = 0x88

.field static final TRANSACTION_getWifiServiceMessenger:I = 0x2a

.field static final TRANSACTION_getWifidisplayApEnabled:I = 0x75

.field static final TRANSACTION_getWifidisplayApState:I = 0x74

.field static final TRANSACTION_getWirelessDisplayCommonApConfiguration:I = 0x24

.field static final TRANSACTION_getWpsNfcConfigurationToken:I = 0x37

.field static final TRANSACTION_initializeMulticastFiltering:I = 0x1d

.field static final TRANSACTION_isBatchedScanSupported:I = 0x31

.field static final TRANSACTION_isDualBandSupported:I = 0x16

.field static final TRANSACTION_isHotspotRestricted:I = 0x55

.field static final TRANSACTION_isMdmHotspotRestricted:I = 0x59

.field static final TRANSACTION_isMdmWifiRestricted:I = 0x57

.field static final TRANSACTION_isMulticastEnabled:I = 0x1e

.field static final TRANSACTION_isScanAlwaysAvailable:I = 0x19

.field static final TRANSACTION_isSupport5GHotspot:I = 0x51

.field static final TRANSACTION_isSupportApSta:I = 0x50

.field static final TRANSACTION_isSupportHS20:I = 0x82

.field static final TRANSACTION_isWifiEnableNotifyPackageName:I = 0x86

.field static final TRANSACTION_isWifiRestricted:I = 0x53

.field static final TRANSACTION_pingSupplicant:I = 0x9

.field static final TRANSACTION_pollBatchedScan:I = 0x32

.field static final TRANSACTION_reassociate:I = 0xf

.field static final TRANSACTION_reconnect:I = 0xe

.field static final TRANSACTION_releaseMulticastLock:I = 0x20

.field static final TRANSACTION_releaseWifiLock:I = 0x1c

.field static final TRANSACTION_removeNetwork:I = 0x6

.field static final TRANSACTION_reportActivityInfo:I = 0x2

.field static final TRANSACTION_requestBatchedScan:I = 0x2e

.field static final TRANSACTION_resetDhcpConfig:I = 0x45

.field static final TRANSACTION_retryLanDetection:I = 0x5e

.field static final TRANSACTION_retryWanDetection:I = 0x5f

.field static final TRANSACTION_saveConfiguration:I = 0x17

.field static final TRANSACTION_setAllowScansWithTraffic:I = 0x3d

.field static final TRANSACTION_setAssociationManual:I = 0x6d

.field static final TRANSACTION_setCaptivePortalState:I = 0x6b

.field static final TRANSACTION_setCmccTimer:I = 0x71

.field static final TRANSACTION_setCountryCode:I = 0x13

.field static final TRANSACTION_setDockWifiApAutoEnabled:I = 0x63

.field static final TRANSACTION_setDockWifiAutoEnabled:I = 0x65

.field static final TRANSACTION_setEapSimAkaSlot:I = 0x5c

.field static final TRANSACTION_setFrequencyBand:I = 0x14

.field static final TRANSACTION_setHotspotAutoChannel:I = 0x43

.field static final TRANSACTION_setHotspotRestricted:I = 0x54

.field static final TRANSACTION_setHtcNewSenseWifiApConfiguration:I = 0x42

.field static final TRANSACTION_setHtcWifiApConfiguration:I = 0x41

.field static final TRANSACTION_setMdmHotspotRestricted:I = 0x58

.field static final TRANSACTION_setMdmWifiRestricted:I = 0x56

.field static final TRANSACTION_setMostPreferredNetwork:I = 0x8f

.field static final TRANSACTION_setVFAutoJoin:I = 0x6f

.field static final TRANSACTION_setWanDetectionDialogEnabled:I = 0x62

.field static final TRANSACTION_setWanDetectionEnabled:I = 0x60

.field static final TRANSACTION_setWifiApConfiguration:I = 0x25

.field static final TRANSACTION_setWifiApEnabled:I = 0x21

.field static final TRANSACTION_setWifiApEnabledMhsRequest:I = 0x4a

.field static final TRANSACTION_setWifiApMacList:I = 0x48

.field static final TRANSACTION_setWifiDisplayApConfig:I = 0x79

.field static final TRANSACTION_setWifiDisplayApMacList:I = 0x7a

.field static final TRANSACTION_setWifiDisplayConfigure:I = 0x7b

.field static final TRANSACTION_setWifiDisplayConfigureGuestKey:I = 0x7c

.field static final TRANSACTION_setWifiDisplayUnscan:I = 0x81

.field static final TRANSACTION_setWifiEnableNotify:I = 0x85

.field static final TRANSACTION_setWifiEnabled:I = 0x11

.field static final TRANSACTION_setWifiOffloadEnabled:I = 0x87

.field static final TRANSACTION_setWifiPowerSavingMode:I = 0x33

.field static final TRANSACTION_setWifiRestricted:I = 0x52

.field static final TRANSACTION_setWifidisplayApEnabled:I = 0x77

.field static final TRANSACTION_setWifidisplayEnabled:I = 0x76

.field static final TRANSACTION_startDongleScan:I = 0x7d

.field static final TRANSACTION_startDongleSingleCscan:I = 0x7e

.field static final TRANSACTION_startDongleWakeUp:I = 0x80

.field static final TRANSACTION_startNetworkSelection:I = 0x8a

.field static final TRANSACTION_startPPPOE:I = 0x8b

.field static final TRANSACTION_startScan:I = 0xb

.field static final TRANSACTION_startWifi:I = 0x26

.field static final TRANSACTION_startWifiOffload:I = 0x89

.field static final TRANSACTION_startWpsRegistrar:I = 0x72

.field static final TRANSACTION_stopBatchedScan:I = 0x2f

.field static final TRANSACTION_stopPPPOE:I = 0x8c

.field static final TRANSACTION_stopWifi:I = 0x27

.field static final TRANSACTION_stopWpsRegistrar:I = 0x73

.field static final TRANSACTION_updateWifiLockWorkSource:I = 0x1b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.IWifiManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.net.wifi.IWifiManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWifiManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    :goto_0
    return v11

    :sswitch_0
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_1
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getSupportedFeatures()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_2
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_0

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiActivityEnergyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_3
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_4
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto :goto_0

    :sswitch_5
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_2
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_6
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->removeNetwork(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_3

    :sswitch_7
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableNetwork(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4

    const/4 v11, 0x1

    :goto_5
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    goto :goto_5

    :sswitch_8
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->disableNetwork(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5

    const/4 v11, 0x1

    :goto_6
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x0

    goto :goto_6

    :sswitch_9
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pingSupplicant()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6

    const/4 v11, 0x1

    :goto_7
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_7

    :sswitch_a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getChannelList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Landroid/net/wifi/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanSettings;

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    :sswitch_c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->disconnect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reconnect()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->reassociate()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_10
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_9

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_11
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_b

    const/4 v11, 0x1

    :goto_c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    goto :goto_c

    :sswitch_12
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiEnabledState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_13
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_c

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setCountryCode(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    :sswitch_14
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_d

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setFrequencyBand(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    :sswitch_15
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getFrequencyBand()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_16
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isDualBandSupported()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_e

    const/4 v11, 0x1

    :goto_f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v11, 0x0

    goto :goto_f

    :sswitch_17
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->saveConfiguration()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_f

    const/4 v11, 0x1

    :goto_10
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_f
    const/4 v11, 0x0

    goto :goto_10

    :sswitch_18
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_10

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/DhcpInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :sswitch_19
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isScanAlwaysAvailable()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_11

    const/4 v11, 0x1

    :goto_12
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v11, 0x0

    goto :goto_12

    :sswitch_1a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_12

    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource;

    :goto_13
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_13

    const/4 v11, 0x1

    :goto_14
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_12
    const/4 v3, 0x0

    goto :goto_13

    :cond_13
    const/4 v11, 0x0

    goto :goto_14

    :sswitch_1b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_14

    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    :goto_15
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x0

    goto :goto_15

    :sswitch_1c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->releaseWifiLock(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_15

    const/4 v11, 0x1

    :goto_16
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_15
    const/4 v11, 0x0

    goto :goto_16

    :sswitch_1d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->initializeMulticastFiltering()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMulticastEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_16

    const/4 v11, 0x1

    :goto_17
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v11, 0x0

    goto :goto_17

    :sswitch_1f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_20
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->releaseMulticastLock()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_21
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_17

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_18

    const/4 v1, 0x1

    :goto_19
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_18

    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    :sswitch_22
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApEnabledState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_23
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_19

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_19
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    :sswitch_24
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWirelessDisplayCommonApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1a

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1b
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1a
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    :sswitch_25
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1b

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_1c
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    :sswitch_26
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startWifi()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_27
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWifi()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_28
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addToBlacklist(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_29
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->clearBlacklist()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_2a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1c

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :sswitch_2b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConfigFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_2c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v1, 0x1

    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdls(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1e

    :sswitch_2d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1f

    :sswitch_2e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_1f

    sget-object v11, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_20

    sget-object v11, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    :goto_21
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/IWifiManager$Stub;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_21

    const/4 v11, 0x1

    :goto_22
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_20

    :cond_20
    const/4 v2, 0x0

    goto :goto_21

    :cond_21
    const/4 v11, 0x0

    goto :goto_22

    :sswitch_2f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_22

    sget-object v11, Landroid/net/wifi/BatchedScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/BatchedScanSettings;

    :goto_23
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    :sswitch_30
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_31
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isBatchedScanSupported()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_23

    const/4 v11, 0x1

    :goto_24
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v11, 0x0

    goto :goto_24

    :sswitch_32
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->pollBatchedScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_33
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiPowerSavingMode(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_24

    const/4 v11, 0x1

    :goto_25
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_24
    const/4 v11, 0x0

    goto :goto_25

    :sswitch_34
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveMode(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_26

    const/4 v11, 0x1

    :goto_27
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    :cond_26
    const/4 v11, 0x0

    goto :goto_27

    :sswitch_35
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enablePowerActiveForFotaDownload(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_28

    const/4 v11, 0x1

    :goto_29
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    const/4 v11, 0x0

    goto :goto_29

    :sswitch_36
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiBatteryUsageHint()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_37
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getWpsNfcConfigurationToken(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_38
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableVerboseLogging(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_39
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getVerboseLoggingLevel()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_3a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAggressiveHandover()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_3b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->enableAggressiveHandover(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_3c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAllowScansWithTraffic()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_3d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAllowScansWithTraffic(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_3e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_29

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConnectionStatistics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2a
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_29
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    :sswitch_3f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHtcWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2a

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2b
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2a
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    :sswitch_40
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHtcNewSenseWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_2b

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2b
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    :sswitch_41
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2c

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_2d
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHtcWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2d

    :sswitch_42
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2d

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHtcNewSenseWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2e

    :sswitch_43
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotAutoChannel(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_44
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getClientInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_45
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->resetDhcpConfig()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_46
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotNumAllowedChannels()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_47
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getRequestedList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_48
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2e

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_2f
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2f

    :sswitch_49
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->checkWifiApEnabledMhsRequest()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2f

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_30

    const/4 v1, 0x1

    :goto_31
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiApEnabledMhsRequest(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_31

    const/4 v11, 0x1

    :goto_32
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_30

    :cond_30
    const/4 v1, 0x0

    goto :goto_31

    :cond_31
    const/4 v11, 0x0

    goto :goto_32

    :sswitch_4b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getHotspotState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssocListStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getTetheringDhcpRange()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->decryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_4f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->encryptConfPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_50
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportApSta()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_32

    const/4 v11, 0x1

    :goto_33
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_32
    const/4 v11, 0x0

    goto :goto_33

    :sswitch_51
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupport5GHotspot()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_33

    const/4 v11, 0x1

    :goto_34
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_33
    const/4 v11, 0x0

    goto :goto_34

    :sswitch_52
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_34

    const/4 v0, 0x1

    :goto_35
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiRestricted(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_35

    const/4 v11, 0x1

    :goto_36
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_34
    const/4 v0, 0x0

    goto :goto_35

    :cond_35
    const/4 v11, 0x0

    goto :goto_36

    :sswitch_53
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiRestricted()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_36

    const/4 v11, 0x1

    :goto_37
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_36
    const/4 v11, 0x0

    goto :goto_37

    :sswitch_54
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_37

    const/4 v0, 0x1

    :goto_38
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setHotspotRestricted(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_38

    const/4 v11, 0x1

    :goto_39
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_37
    const/4 v0, 0x0

    goto :goto_38

    :cond_38
    const/4 v11, 0x0

    goto :goto_39

    :sswitch_55
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isHotspotRestricted()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_39

    const/4 v11, 0x1

    :goto_3a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_39
    const/4 v11, 0x0

    goto :goto_3a

    :sswitch_56
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3a

    const/4 v0, 0x1

    :goto_3b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMdmWifiRestricted(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3b

    const/4 v11, 0x1

    :goto_3c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3b
    const/4 v11, 0x0

    goto :goto_3c

    :sswitch_57
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMdmWifiRestricted()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3c

    const/4 v11, 0x1

    :goto_3d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_3c
    const/4 v11, 0x0

    goto :goto_3d

    :sswitch_58
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_3d

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMdmHotspotRestricted(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3e

    const/4 v11, 0x1

    :goto_3f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3e

    :cond_3e
    const/4 v11, 0x0

    goto :goto_3f

    :sswitch_59
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isMdmHotspotRestricted()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_3f

    const/4 v11, 0x1

    :goto_40
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_3f
    const/4 v11, 0x0

    goto :goto_40

    :sswitch_5a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallComeIn()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_40

    const/4 v11, 0x1

    :goto_41
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_40
    const/4 v11, 0x0

    goto :goto_41

    :sswitch_5b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->NotifyWifiPhoneCallEnd()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_41

    const/4 v11, 0x1

    :goto_42
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_41
    const/4 v11, 0x0

    goto :goto_42

    :sswitch_5c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setEapSimAkaSlot(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_42

    const/4 v11, 0x1

    :goto_43
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_42
    const/4 v11, 0x0

    goto :goto_43

    :sswitch_5d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getEapSimAkaSlot()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_5e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retryLanDetection()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_43

    const/4 v11, 0x1

    :goto_44
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_43
    const/4 v11, 0x0

    goto :goto_44

    :sswitch_5f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->retryWanDetection()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_44

    const/4 v11, 0x1

    :goto_45
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_44
    const/4 v11, 0x0

    goto :goto_45

    :sswitch_60
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_45

    const/4 v0, 0x1

    :goto_46
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWanDetectionEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_46

    const/4 v11, 0x1

    :goto_47
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_45
    const/4 v0, 0x0

    goto :goto_46

    :cond_46
    const/4 v11, 0x0

    goto :goto_47

    :sswitch_61
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWanDetectionEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_47

    const/4 v11, 0x1

    :goto_48
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_47
    const/4 v11, 0x0

    goto :goto_48

    :sswitch_62
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_48

    const/4 v0, 0x1

    :goto_49
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWanDetectionDialogEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_49

    const/4 v11, 0x1

    :goto_4a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_48
    const/4 v0, 0x0

    goto :goto_49

    :cond_49
    const/4 v11, 0x0

    goto :goto_4a

    :sswitch_63
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4a

    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiApAutoEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4b

    const/4 v11, 0x1

    :goto_4c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_4b

    :cond_4b
    const/4 v11, 0x0

    goto :goto_4c

    :sswitch_64
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiApAutoEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4c

    const/4 v11, 0x1

    :goto_4d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4c
    const/4 v11, 0x0

    goto :goto_4d

    :sswitch_65
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4d

    const/4 v0, 0x1

    :goto_4e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setDockWifiAutoEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4e

    const/4 v11, 0x1

    :goto_4f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4d
    const/4 v0, 0x0

    goto :goto_4e

    :cond_4e
    const/4 v11, 0x0

    goto :goto_4f

    :sswitch_66
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDockWifiAutoEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_4f

    const/4 v11, 0x1

    :goto_50
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_4f
    const/4 v11, 0x0

    goto :goto_50

    :sswitch_67
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_68
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_69
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_6a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->SetSignInStatus(II)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_50

    const/4 v11, 0x1

    :goto_51
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_50
    const/4 v11, 0x0

    goto :goto_51

    :sswitch_6b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_51

    const/4 v0, 0x1

    :goto_52
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCaptivePortalState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_51
    const/4 v0, 0x0

    goto :goto_52

    :sswitch_6c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getCaptivePortalState()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_52

    const/4 v11, 0x1

    :goto_53
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_52
    const/4 v11, 0x0

    goto :goto_53

    :sswitch_6d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setAssociationManual(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_53

    const/4 v11, 0x1

    :goto_54
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_53
    const/4 v11, 0x0

    goto :goto_54

    :sswitch_6e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAssociationManual()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_6f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_54

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setVFAutoJoin(ZI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_55

    const/4 v11, 0x1

    :goto_56
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_54
    const/4 v0, 0x0

    goto :goto_55

    :cond_55
    const/4 v11, 0x0

    goto :goto_56

    :sswitch_70
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->getVFAutoJoin(I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_71
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_56

    const/4 v0, 0x1

    :goto_57
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setCmccTimer(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_57

    const/4 v11, 0x1

    :goto_58
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_56
    const/4 v0, 0x0

    goto :goto_57

    :cond_57
    const/4 v11, 0x0

    goto :goto_58

    :sswitch_72
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_58

    sget-object v11, Landroid/net/wifi/WpsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WpsInfo;

    :goto_59
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startWpsRegistrar(Landroid/net/wifi/WpsInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_58
    const/4 v0, 0x0

    goto :goto_59

    :sswitch_73
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopWpsRegistrar()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_74
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApState()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_75
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifidisplayApEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_59

    const/4 v11, 0x1

    :goto_5a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_59
    const/4 v11, 0x0

    goto :goto_5a

    :sswitch_76
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v0, 0x1

    :goto_5b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5b

    const/4 v11, 0x1

    :goto_5c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_5b

    :cond_5b
    const/4 v11, 0x0

    goto :goto_5c

    :sswitch_77
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5c

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5d

    const/4 v1, 0x1

    :goto_5e
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5c
    const/4 v0, 0x0

    goto :goto_5d

    :cond_5d
    const/4 v1, 0x0

    goto :goto_5e

    :sswitch_78
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_5e

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5f
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5e
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    :sswitch_79
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5f

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_60
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_5f
    const/4 v0, 0x0

    goto :goto_60

    :sswitch_7a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_60

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    :goto_61
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_60
    const/4 v0, 0x0

    goto :goto_61

    :sswitch_7b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigure(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_61

    const/4 v11, 0x1

    :goto_62
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_61
    const/4 v11, 0x0

    goto :goto_62

    :sswitch_7c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayConfigureGuestKey(ILjava/lang/String;[BI)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_62

    const/4 v11, 0x1

    :goto_63
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_62
    const/4 v11, 0x0

    goto :goto_63

    :sswitch_7d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_7e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleSingleCscan(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_7f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getDongleScanList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_80
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startDongleWakeUp(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_81
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_63

    const/4 v0, 0x1

    :goto_64
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiDisplayUnscan(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_64

    const/4 v11, 0x1

    :goto_65
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_63
    const/4 v0, 0x0

    goto :goto_64

    :cond_64
    const/4 v11, 0x0

    goto :goto_65

    :sswitch_82
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->isSupportHS20()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_65

    const/4 v11, 0x1

    :goto_66
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_65
    const/4 v11, 0x0

    goto :goto_66

    :sswitch_83
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getAutoInterworkingState()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_66

    const/4 v11, 0x1

    :goto_67
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_66
    const/4 v11, 0x0

    goto :goto_67

    :sswitch_84
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_67

    const/4 v0, 0x1

    :goto_68
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->SetAutoInterworking(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_67
    const/4 v0, 0x0

    goto :goto_68

    :sswitch_85
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiManager$Stub;->setWifiEnableNotify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_68

    const/4 v11, 0x1

    :goto_69
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_68
    const/4 v11, 0x0

    goto :goto_69

    :sswitch_86
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->isWifiEnableNotifyPackageName(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_69

    const/4 v11, 0x1

    :goto_6a
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_69
    const/4 v11, 0x0

    goto :goto_6a

    :sswitch_87
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6a

    const/4 v0, 0x1

    :goto_6b
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setWifiOffloadEnabled(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6b

    const/4 v11, 0x1

    :goto_6c
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6a
    const/4 v0, 0x0

    goto :goto_6b

    :cond_6b
    const/4 v11, 0x0

    goto :goto_6c

    :sswitch_88
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getWifiOffloadEnabled()Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6c

    const/4 v11, 0x1

    :goto_6d
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6c
    const/4 v11, 0x0

    goto :goto_6d

    :sswitch_89
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6d

    const/4 v0, 0x1

    :goto_6e
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startWifiOffload(Z)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_6e

    const/4 v11, 0x1

    :goto_6f
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6d
    const/4 v0, 0x0

    goto :goto_6e

    :cond_6e
    const/4 v11, 0x0

    goto :goto_6f

    :sswitch_8a
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_6f

    const/4 v0, 0x1

    :goto_70
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startNetworkSelection(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6f
    const/4 v0, 0x0

    goto :goto_70

    :sswitch_8b
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_70

    sget-object v11, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/PPPOEConfig;

    :goto_71
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_70
    const/4 v0, 0x0

    goto :goto_71

    :sswitch_8c
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->stopPPPOE()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_8d
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_71

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v4, p3, v11}, Landroid/net/wifi/PPPOEInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_72
    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_71
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_72

    :sswitch_8e
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiManager$Stub;->getMostPreferredNetwork()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :sswitch_8f
    const-string v11, "android.net.wifi.IWifiManager"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiManager$Stub;->setMostPreferredNetwork(I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_72

    const/4 v11, 0x1

    :goto_73
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_72
    const/4 v11, 0x0

    goto :goto_73

    nop

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
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
