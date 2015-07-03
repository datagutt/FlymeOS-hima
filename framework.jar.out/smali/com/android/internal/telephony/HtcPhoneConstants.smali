.class public interface abstract Lcom/android/internal/telephony/HtcPhoneConstants;
.super Ljava/lang/Object;
.source "HtcPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcPhoneConstants$IPVersion;,
        Lcom/android/internal/telephony/HtcPhoneConstants$CallType;
    }
.end annotation


# static fields
.field public static final APN_TYPE_ADMIN:Ljava/lang/String; = "admin"

.field public static final APN_TYPE_CALLER_NAME_ID:Ljava/lang/String; = "callernameid"

.field public static final APN_TYPE_CMAIL:Ljava/lang/String; = "cmail"

.field public static final APN_TYPE_CMMail:Ljava/lang/String; = "cmmail"

.field public static final APN_TYPE_GAME:Ljava/lang/String; = "game"

.field public static final APN_TYPE_HTTPPROXY:Ljava/lang/String; = "httpproxy"

.field public static final APN_TYPE_INTERNET:Ljava/lang/String; = "internet"

.field public static final APN_TYPE_J2ME:Ljava/lang/String; = "j2me"

.field public static final APN_TYPE_MMS_EXT:Ljava/lang/String; = "mms_ext"

.field public static final APN_TYPE_MobileMarket:Ljava/lang/String; = "MM"

.field public static final APN_TYPE_NETSHARE:Ljava/lang/String; = "netshare"

.field public static final APN_TYPE_OMADM:Ljava/lang/String; = "omadm"

.field public static final APN_TYPE_OTASP:Ljava/lang/String; = "otasp"

.field public static final APN_TYPE_OTHER:Ljava/lang/String; = "OTHER"

.field public static final APN_TYPE_STREAM:Ljava/lang/String; = "stream"

.field public static final APN_TYPE_VZW800:Ljava/lang/String; = "verizon800"

.field public static final APN_TYPE_VZWAPP:Ljava/lang/String; = "verizon"

.field public static final APN_TYPE_WAPGATEWAY:Ljava/lang/String; = "wapgateway"

.field public static final CARDTYPE_POSTPAY:I = 0x2

.field public static final CARDTYPE_PREPAY:I = 0x1

.field public static final CARDTYPE_UNKNOWN:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_INITIAL_REQUIRED:I = 0xd

.field public static final DATA_APN_CARRIER_KEY:Ljava/lang/String; = "apnCarrier"

.field public static final DATA_APN_MMS_PROXY:Ljava/lang/String; = "ifaceApnHttpProxy"

.field public static final DATA_APN_PROXY:Ljava/lang/String; = "ifaceApnProxy"

.field public static final DATA_APN_PROXY_PORT:Ljava/lang/String; = "ifaceApnProxyPort"

.field public static final DATA_APN_TYPES:Ljava/lang/String; = "apnTypes"

.field public static final DATA_APN_TYPES_KEY:Ljava/lang/String; = "apnType"

.field public static final DATA_APN_TYPE_STATE:Ljava/lang/String; = "apnTypeState"

.field public static final DATA_GW_ADDRESS_KEY:Ljava/lang/String; = "igwaddress"

.field public static final DATA_IFACE_DNS:Ljava/lang/String; = "ifaceDNS"

.field public static final DATA_IFACE_GW:Ljava/lang/String; = "ifaceGW"

.field public static final DATA_IFACE_IP:Ljava/lang/String; = "ifaceIp"

.field public static final DATA_IPVERSION_KEY:Ljava/lang/String; = "ipVersion"

.field public static final DATA_IPVERSION_REAL_STATE_KEY:Ljava/lang/String; = "realipstate"

.field public static final DATA_RADIO_TECH_KEY:Ljava/lang/String; = "data_radio_tech_key"

.field public static final DATA_REQUEST_APN_TYPE:Ljava/lang/String; = "ifaceReqApn"

.field public static final FEATURE_ENABLE_ADMIN:Ljava/lang/String; = "enableADMIN"

.field public static final FEATURE_ENABLE_ATT_DEFAULT:Ljava/lang/String; = "enableATTDEFAULT"

.field public static final FEATURE_ENABLE_BIP:Ljava/lang/String; = "enableBIP"

.field public static final FEATURE_ENABLE_CALLER_NAME_ID:Ljava/lang/String; = "enableCALLERNAMEID"

.field public static final FEATURE_ENABLE_CDMA_ADMIN:Ljava/lang/String; = "enableCDMAADMIN"

.field public static final FEATURE_ENABLE_CDMA_MMS:Ljava/lang/String; = "enableCDMAMMS"

.field public static final FEATURE_ENABLE_CMAIL:Ljava/lang/String; = "enableCMAIL"

.field public static final FEATURE_ENABLE_CMMail:Ljava/lang/String; = "enableCMMail"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_ENTITLE:Ljava/lang/String; = "enableENTITLE"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_GAME:Ljava/lang/String; = "enableGAME"

.field public static final FEATURE_ENABLE_GSM_ADMIN:Ljava/lang/String; = "enableGSMADMIN"

.field public static final FEATURE_ENABLE_GSM_MMS:Ljava/lang/String; = "enableGSMMMS"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_HTTPPROXY:Ljava/lang/String; = "enableHTTPPROXY"

.field public static final FEATURE_ENABLE_INTERNET:Ljava/lang/String; = "enableINTERNET"

.field public static final FEATURE_ENABLE_J2ME:Ljava/lang/String; = "enableJ2ME"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_MobileMarket:Ljava/lang/String; = "enableMobileMarket"

.field public static final FEATURE_ENABLE_OMADM:Ljava/lang/String; = "enableOMADM"

.field public static final FEATURE_ENABLE_OTASP:Ljava/lang/String; = "enableOTASP"

.field public static final FEATURE_ENABLE_OTHER:Ljava/lang/String; = "enableOTHER"

.field public static final FEATURE_ENABLE_SLOT1_ADMIN:Ljava/lang/String; = "enableSLOT1ADMIN"

.field public static final FEATURE_ENABLE_SLOT1_MMS:Ljava/lang/String; = "enableSLOT1MMS"

.field public static final FEATURE_ENABLE_SLOT2_ADMIN:Ljava/lang/String; = "enableSLOT2ADMIN"

.field public static final FEATURE_ENABLE_SLOT2_MMS:Ljava/lang/String; = "enableSLOT2MMS"

.field public static final FEATURE_ENABLE_STREAM:Ljava/lang/String; = "enableSTREAM"

.field public static final FEATURE_ENABLE_SUB_GSM_ADMIN:Ljava/lang/String; = "enableSUBGSMADMIN"

.field public static final FEATURE_ENABLE_SUB_GSM_MMS:Ljava/lang/String; = "enableSUBGSMMMS"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final FEATURE_ENABLE_VZWAPPAPN:Ljava/lang/String; = "enableVZWAPPAPN"

.field public static final FEATURE_ENABLE_Verizon800:Ljava/lang/String; = "enableVerizon800"

.field public static final FEATURE_ENABLE_VerizonE911:Ljava/lang/String; = "enableVerizonE911"

.field public static final FEATURE_ENABLE_WAPGATEWAY:Ljava/lang/String; = "enableWAPGATEWAY"

.field public static final PHONE_NAME_CDMA:Ljava/lang/String; = "CDMA"

.field public static final PHONE_NAME_GSM:Ljava/lang/String; = "GSM"

.field public static final PHONE_NAME_SIP:Ljava/lang/String; = "SIP"

.field public static final PHONE_NAME_SUB_GSM:Ljava/lang/String; = "SubGSM"

.field public static final PHONE_SLOT_1:I = 0xa

.field public static final PHONE_SLOT_2:I = 0xb

.field public static final PHONE_SLOT_KEY:Ljava/lang/String; = "phone_slot"

.field public static final PHONE_SLOT_NONE:I = 0x0

.field public static final PHONE_TYPE_KEY:Ljava/lang/String; = "phone_type"

.field public static final PHONE_TYPE_STR_CDMA:Ljava/lang/String; = "CDMA"

.field public static final PHONE_TYPE_STR_GSM:Ljava/lang/String; = "GSM"

.field public static final PHONE_TYPE_STR_NONE:Ljava/lang/String; = "NONE"

.field public static final PHONE_TYPE_STR_SIP:Ljava/lang/String; = "SIP"

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_MISSING:Ljava/lang/String; = "apnMissing"

.field public static final REASON_APN_SETUP_COMPLETE:Ljava/lang/String; = "apnSetupComplete"

.field public static final REASON_DATACONNECTION_DENIED:Ljava/lang/String; = "dataConnectionDenied"

.field public static final REASON_ENABLE_NEW_APN:Ljava/lang/String; = "enableNewApn"

.field public static final REASON_ENTITLEMENTCHECK_SUCCESS:Ljava/lang/String; = "entilementCheckSuccess"

.field public static final REASON_HTC_NO_APN_FOR_FOTA:Ljava/lang/String; = "noApnForFOTA"

.field public static final REASON_HTC_ROAM_GUARD_DISABLED:Ljava/lang/String; = "roamGuardDisabled"

.field public static final REASON_HTC_ROAM_GUARD_ENABLED:Ljava/lang/String; = "roamGuardEnabled"

.field public static final REASON_PDP_DISCONNECT:Ljava/lang/String; = "pdpDisconnect"

.field public static final REASON_PDP_EXIST:Ljava/lang/String; = "pdpExist"

.field public static final REASON_PDP_TEARDOWN:Ljava/lang/String; = "pdpTeardown"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_ROAMING_DISABLED:Ljava/lang/String; = "roamingDisabled"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_UNKNOWN_PDP_DISCONNECT:Ljava/lang/String; = "unknowpdpDisconnect"
