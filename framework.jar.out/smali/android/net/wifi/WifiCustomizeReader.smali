.class public Landroid/net/wifi/WifiCustomizeReader;
.super Ljava/lang/Object;
.source "WifiCustomizeReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiCustomizeReader"

.field public static final WLAN_HOTSPOT_REMIND_DEFAULT:I = 0x1

.field public static final WLAN_HOTSPOT_REMIND_SPRINT:I = 0x3

.field public static final WLAN_HOTSPOT_REMIND_VZW:I = 0x2

.field public static final WLAN_NOTIFICATION_EAP_AKA_DEFAULT:I = 0x1

.field public static final WLAN_NOTIFICATION_EAP_AKA_KT:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_CMCC:I = 0x3

.field public static final WLAN_PRECONFIG_TYPE_CT:I = 0x2

.field public static final WLAN_PRECONFIG_TYPE_DEFAULT:I = 0x1

.field public static final WLAN_PRECONFIG_TYPE_EU:I = 0x6

.field public static final WLAN_PRECONFIG_TYPE_TELCEL:I = 0x8

.field public static final WLAN_PRECONFIG_TYPE_TMI:I = 0x5

.field public static final WLAN_PRECONFIG_TYPE_TMONL:I = 0x7

.field public static final WLAN_PRECONFIG_TYPE_VODAFONE:I = 0x4

.field public static final WLAN_SETNOTIFICATION_CMCC:I = 0x2

.field public static final WLAN_SETNOTIFICATION_DEFAULT:I = 0x1

.field public static final WLAN_SOLUTION_ATHEROS:I = 0x3

.field public static final WLAN_SOLUTION_BROADCOM:I = 0x1

.field public static final WLAN_SOLUTION_QUALCOMM:I = 0x2

.field public static final WLAN_SOLUTION_TI:I = 0x4

.field public static final WLAN_STATUS_DEFAULT:I = 0x1

.field public static final WLAN_STATUS_VZW:I = 0x2

.field private static mAuthenticationErrorRetry:I

.field private static mDisableNetworkFocibly:Z

.field private static mDnsAddressForWanDetection:Ljava/lang/String;

.field private static mLowerOpenPriority:Z

.field private static mPreconfigType:I

.field private static mSenseVersion:Ljava/lang/String;

.field private static mSupportAssociateManual:Z

.field private static mSupportDockWifi:Z

.field private static mSupportHotspotEncryption:Z

.field private static mSupportMiracast:Z

.field private static mSupportP2pConcurrent:Z

.field private static mVzwWifiAggregation:Z

.field private static mWifiStatusType:I

.field private static mWlanDetectionType:I

.field private static mWlanSolution:I

.field private static sAuthenticationErrorRetry:Ljava/lang/String;

.field private static sCust5GHotspot:Ljava/lang/String;

.field private static sCustDnsAddressForWanDetection:Ljava/lang/String;

.field private static sCustDockWifi:Ljava/lang/String;

.field private static sCustDualBand:Ljava/lang/String;

.field private static sCustHas3LM:Ljava/lang/String;

.field private static sCustHasBlistFilter:Ljava/lang/String;

.field private static sCustHasCW:Ljava/lang/String;

.field private static sCustHasIMEI:Ljava/lang/String;

.field private static sCustHasMDN:Ljava/lang/String;

.field private static sCustHotspotDhcpStartIp:Ljava/lang/String;

.field private static sCustHotspotPasswordCount:Ljava/lang/String;

.field private static sCustHotspotRemind:Ljava/lang/String;

.field private static sCustHotspotSecurityType:Ljava/lang/String;

.field private static sCustMHSEnable:Ljava/lang/String;

.field private static sCustMiracast:Ljava/lang/String;

.field private static sCustP2pConcurrent:Ljava/lang/String;

.field private static sCustPreconfigType:Ljava/lang/String;

.field private static sCustReaderName:Ljava/lang/String;

.field private static sCustReaderNameNetwork:Ljava/lang/String;

.field private static sCustReaderNameSystem:Ljava/lang/String;

.field private static sCustSecureNetworkNotification:Ljava/lang/String;

.field private static sCustSenseVersion:Ljava/lang/String;

.field private static sCustSetnotificationType:Ljava/lang/String;

.field private static sCustSupportApSta:Ljava/lang/String;

.field private static sCustSupportWimax:Ljava/lang/String;

.field private static sCustTMOUSSku:Ljava/lang/String;

.field private static sCustWifiOffload:Ljava/lang/String;

.field private static sCustWifiOffloadEnable:Ljava/lang/String;

.field private static sCustWifiSelection:Ljava/lang/String;

.field private static sCustWlanAggregation:Ljava/lang/String;

.field private static sCustWlanAssociateManual:Ljava/lang/String;

.field private static sCustWlanCheckOldDongle:Ljava/lang/String;

.field private static sCustWlanDetecionType:Ljava/lang/String;

.field private static sCustWlanDisableNetworkFocibly:Ljava/lang/String;

.field private static sCustWlanLowerOpenPriority:Ljava/lang/String;

.field private static sCustWlanNotificationEapAka:Ljava/lang/String;

.field private static sCustWlanSolution:Ljava/lang/String;

.field private static sCustWlanStatus:Ljava/lang/String;

.field private static sHotspotEncryption:Ljava/lang/String;


# instance fields
.field private mCheckOldDongle:Z

.field private mEnableCW:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMdnPassword:Z

.field private mEnableMhsFeature:Z

.field private mHasBlistFilter:Z

.field private mHotspotDhcpStartingIp:Ljava/lang/String;

.field private mHotspotPasswordCount:I

.field private mHotspotRemind:I

.field private mHotspotSecurityType:Ljava/lang/String;

.field private mIsTMOUSSku:Z

.field private mNotificationEapAka:I

.field private mSetnotificationType:I

.field private mSupport3LM:Z

.field private mSupport5GHotspot:Z

.field private mSupportApSta:Z

.field private mSupportDualBand:Z

.field private mSupportNetworkSelection:Z

.field private mSupportNotificationSecure:Z

.field private mSupportWifiOffload:Z

.field private mSupportWimax:Z

.field private mWifiOffloadEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "Android_Wifi"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    const-string v0, "Android_Networking"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    const-string v0, "System"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_has_imei"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_has_mdn"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    const-string/jumbo v0, "tethering_guard_support"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    const-string v0, "has_cw"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasCW:Ljava/lang/String;

    const-string/jumbo v0, "support_dualband"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    const-string/jumbo v0, "support_Wifioffload"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffload:Ljava/lang/String;

    const-string/jumbo v0, "support_network_selection"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiSelection:Ljava/lang/String;

    const-string/jumbo v0, "support_3lm"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHas3LM:Ljava/lang/String;

    const-string/jumbo v0, "support_wimax"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportWimax:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_security_type"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotSecurityType:Ljava/lang/String;

    const-string/jumbo v0, "wlan_blist_filter"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHasBlistFilter:Ljava/lang/String;

    const-string/jumbo v0, "wlan_wifi_status"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    const-string/jumbo v0, "wlan_wifi_aggregation"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_password_count"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotPasswordCount:Ljava/lang/String;

    const-string/jumbo v0, "support_dockwifi"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    const-string/jumbo v0, "wlan_setnotification"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSetnotificationType:Ljava/lang/String;

    const-string/jumbo v0, "wlan_securenetwork_notification"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSecureNetworkNotification:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_remind"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_start_ip"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotDhcpStartIp:Ljava/lang/String;

    const-string/jumbo v0, "wlan_notification_eapaka"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanNotificationEapAka:Ljava/lang/String;

    const-string/jumbo v0, "wlan_preconfig"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    const-string/jumbo v0, "wlan_check_old_dongle"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanCheckOldDongle:Ljava/lang/String;

    const-string/jumbo v0, "wlan_support_apsta"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportApSta:Ljava/lang/String;

    const-string/jumbo v0, "wlan_dns_address_for_wandetection"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    const-string/jumbo v0, "wlan_wifioffload_enable"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffloadEnable:Ljava/lang/String;

    const-string/jumbo v0, "support_associate_manual"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    const-string/jumbo v0, "wlan_security_openlast"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    const-string/jumbo v0, "wlan_disablenetwork_forcibly"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDisableNetworkFocibly:Ljava/lang/String;

    const-string/jumbo v0, "support_p2p_concurrent"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustP2pConcurrent:Ljava/lang/String;

    const-string/jumbo v0, "support_miracast"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustMiracast:Ljava/lang/String;

    const-string/jumbo v0, "wlan_solution"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    const-string/jumbo v0, "wlan_wan_detection_type"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    const-string/jumbo v0, "sense_version"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    const-string/jumbo v0, "wlan_hotspot_password_encryption"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    const-string/jumbo v0, "wlan_authentication_error_retry"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    const-string/jumbo v0, "wlan_support_5g_hotspot"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCust5GHotspot:Ljava/lang/String;

    const-string v0, "is_tmous_sku"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->sCustTMOUSSku:Ljava/lang/String;

    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    const-string/jumbo v0, "www.google.com"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    sput-boolean v2, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    sput-boolean v2, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    sput v2, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    const-string v0, "5.0"

    sput-object v0, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    sput-boolean v1, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    const/4 v0, 0x5

    sput v0, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v6, 0xd

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    iput-boolean v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    const-string/jumbo v5, "wpa2-psk"

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    iput v6, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    const-string v5, "192.168.1.10"

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    iput v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    iput-boolean v9, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    iput-boolean v8, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameSystem:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    :try_start_0
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffload:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_WIFIOFFLOAD = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHas3LM:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_3LM = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportWimax:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_WIMAX= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderNameNetwork:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    :try_start_1
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustMHSEnable:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_MHS_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustReaderName:Ljava/lang/String;

    invoke-virtual {v0, v5, v9, v8}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    :try_start_2
    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasIMEI:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_IMEI_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasMDN:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_MDN_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasCW:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_C+W_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDualBand:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_DUALBAND = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HOTSPOT_SECURITY_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHasBlistFilter:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HAS_BLISTER_FILTER = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanStatus:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_WIFI_STATUS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAggregation:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_VZW_WIFI_AGGREGATION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotPasswordCount:Ljava/lang/String;

    const/16 v6, 0xd

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_HOTSPOT_PASSWORD_COUNT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDockWifi:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DOCK_WIFI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSetnotificationType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SETNOTIFICATION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSecureNetworkNotification:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_NOTIFICATION_SECURE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotRemind:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SETNOTIFICATION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustHotspotDhcpStartIp:Ljava/lang/String;

    const-string v6, "192.168.1.10"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_HOTSPOT_DHCP_STARTING_IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanNotificationEapAka:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_NOTIFICATION_EAP_AKA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanLowerOpenPriority:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_LOWER_LOWER_PRIORITY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustPreconfigType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_PRECONFIG_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanCheckOldDongle:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_CHECK_OLD_DONGLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSupportApSta:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_APSTA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustDnsAddressForWanDetection:Ljava/lang/String;

    const-string/jumbo v6, "www.google.com"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_DNS_ADDRESS_FOR_WAN_DETECTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiOffloadEnable:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_WIFIOFFLOAD_ENABLE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanAssociateManual:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SUPPORT_ASSOCIATE_MANUAL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDisableNetworkFocibly:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DISABLE_NETWORK_FOCIBLY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWifiSelection:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SUPPORT_NETWOR_SELECTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustP2pConcurrent:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_P2P_CONCURRENT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustMiracast:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_Miracast = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanSolution:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_SULUTION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustWlanDetecionType:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_WLAN_DETECTION_TYPE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustSenseVersion:Ljava/lang/String;

    const-string v6, "5.0"

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SENSE_VERSION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sHotspotEncryption:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Support_Hotspot_Encryption = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sAuthenticationErrorRetry:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v5

    sput v5, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_Athentication_Error_Retry = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCust5GHotspot:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_5G_Hotspot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/net/wifi/WifiCustomizeReader;->sCustTMOUSSku:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    const-string v5, "WifiCustomizeReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTC_CUSTOMIZATION_SUPPORT_Is_TMOUS_Sku = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v4

    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization customize_hotspot_mdn"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization customize_hotspot_mdn"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string v5, "WifiCustomizeReader"

    const-string v6, "cannot read customization value"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getDnsAddressForWanDetection()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiCustomizeReader;->mDnsAddressForWanDetection:Ljava/lang/String;

    return-object v0
.end method

.method public static getPreconfigType()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mPreconfigType:I

    return v0
.end method

.method public static getSenseVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiCustomizeReader;->mSenseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiStatusType()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWifiStatusType:I

    return v0
.end method

.method public static getWlanDetectionType()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWlanDetectionType:I

    return v0
.end method

.method public static getWlanSolution()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mWlanSolution:I

    return v0
.end method

.method public static isDisableNetworkFocibly()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mDisableNetworkFocibly:Z

    return v0
.end method

.method public static isLowerOpenPriority()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mLowerOpenPriority:Z

    return v0
.end method

.method public static isSupportAssociateManual()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportAssociateManual:Z

    return v0
.end method

.method public static isSupportDockWifi()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDockWifi:Z

    return v0
.end method

.method public static isSupportHotspotEncryption()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportHotspotEncryption:Z

    return v0
.end method

.method public static isSupportMiracast()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportMiracast:Z

    return v0
.end method

.method public static isSupportP2pConcurrent()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mSupportP2pConcurrent:Z

    return v0
.end method

.method public static isVzwWifiAggregation()Z
    .locals 1

    sget-boolean v0, Landroid/net/wifi/WifiCustomizeReader;->mVzwWifiAggregation:Z

    return v0
.end method


# virtual methods
.method public getAuthenticationErrorRetry()I
    .locals 1

    sget v0, Landroid/net/wifi/WifiCustomizeReader;->mAuthenticationErrorRetry:I

    return v0
.end method

.method public getHotspotDhcpStartingIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotDhcpStartingIp:Ljava/lang/String;

    return-object v0
.end method

.method public getHotspotPasswordCount()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotPasswordCount:I

    return v0
.end method

.method public getHotspotRemindType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotRemind:I

    return v0
.end method

.method public getHotspotSecurityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHotspotSecurityType:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationEapAka()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mNotificationEapAka:I

    return v0
.end method

.method public getNotificationType()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSetnotificationType:I

    return v0
.end method

.method public isCWEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableCW:Z

    return v0
.end method

.method public isCheckOldDongle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mCheckOldDongle:Z

    return v0
.end method

.method public isEnableImeiPassword()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiPassword:Z

    return v0
.end method

.method public isEnableImeiSsid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableImeiSsid:Z

    return v0
.end method

.method public isEnableMdnPassword()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMdnPassword:Z

    return v0
.end method

.method public isHasBlistFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mHasBlistFilter:Z

    return v0
.end method

.method public isMHSEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mEnableMhsFeature:Z

    return v0
.end method

.method public isSupport3LM()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport3LM:Z

    return v0
.end method

.method public isSupport5GHotspot()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupport5GHotspot:Z

    return v0
.end method

.method public isSupportApSta()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportApSta:Z

    return v0
.end method

.method public isSupportDualBand()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportDualBand:Z

    return v0
.end method

.method public isSupportNetworkSelection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNetworkSelection:Z

    return v0
.end method

.method public isSupportNotificationSecure()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportNotificationSecure:Z

    return v0
.end method

.method public isSupportWifiOffload()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWifiOffload:Z

    return v0
.end method

.method public isSupportWimax()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mSupportWimax:Z

    return v0
.end method

.method public isTMOUSSku()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mIsTMOUSSku:Z

    return v0
.end method

.method public isWifiOffloadEnable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiCustomizeReader;->mWifiOffloadEnable:Z

    return v0
.end method
