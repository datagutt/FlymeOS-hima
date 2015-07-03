.class public Lcom/android/internal/telephony/DctConstants;
.super Ljava/lang/Object;
.source "DctConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DctConstants$Activity;,
        Lcom/android/internal/telephony/DctConstants$State;
    }
.end annotation


# static fields
.field public static final APN_CALLER_NAME_ID_ID:I = 0xe

.field public static final APN_CBS_ID:I = 0x7

.field public static final APN_DEFAULT_ID:I = 0x0

.field public static final APN_DUN_ID:I = 0x3

.field public static final APN_EMERGENCY_ID:I = 0x9

.field public static final APN_FOTA_ID:I = 0x6

.field public static final APN_HIPRI_ID:I = 0x4

.field public static final APN_HTTPPROXY_ID:I = 0xc

.field public static final APN_IA_ID:I = 0x8

.field public static final APN_IMS_ID:I = 0x5

.field public static final APN_INTERNET_ID:I = 0xa

.field public static final APN_INVALID_ID:I = -0x1

.field public static final APN_MMS_ID:I = 0x1

.field public static final APN_NUM_TYPES:I = 0xa

.field public static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final APN_VERIZON_800_ID:I = 0xd

.field public static final APN_VERIZON_ID:I = 0xb

.field public static final BASE:I = 0x42000

.field public static final CMD_CLEAR_PROVISIONING_SPINNER:I = 0x4202a

.field public static final CMD_ENABLE_MOBILE_PROVISIONING:I = 0x42025

.field public static final CMD_IS_PROVISIONING_APN:I = 0x42026

.field public static final CMD_NET_STAT_POLL:I = 0x42028

.field public static final CMD_PRE_SET_DATA_ENABLE:I = 0x42069

.field public static final CMD_SET_DATA_SUBSCRIPTION_ENABLE:I = 0x42080

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_ENABLE_FAIL_FAST_MOBILE_DATA:I = 0x42024

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_SINGAL_ACTIVE_FOR_DATA_SUBSCRIPTION:I = 0x4207a

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201e

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field public static final EVENT_ACCESS_SPCS_LTE_ROAMING_SETTING_DB:I = 0x42087

.field public static final EVENT_APN_CHANGED:I = 0x42013

.field public static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field public static final EVENT_CDMA_LINK_ERROR:I = 0x42067

.field public static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field public static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x42015

.field public static final EVENT_CHECK_IS_DATA_ALLOWED:I = 0x4207e

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201d

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field public static final EVENT_CW_REG_STATE_CHANGED:I = 0x4206c

.field public static final EVENT_CW_SIP:I = 0x4206f

.field public static final EVENT_CW_WIFI_STATE_CHANGED:I = 0x4206d

.field public static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field public static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field public static final EVENT_DATA_RAT_CHANGED:I = 0x42029

.field public static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field public static final EVENT_DATA_SETUP_COMPLETE_ERROR:I = 0x42023

.field public static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field public static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field public static final EVENT_DISCONNECT_DC_CONNECTING:I = 0x4207c

.field public static final EVENT_DISCONNECT_DC_RETRYING:I = 0x42022

.field public static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field public static final EVENT_DO_RECOVERY:I = 0x42012

.field public static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field public static final EVENT_ERI_UPDATE:I = 0x4206b

.field public static final EVENT_GET_PDP_LIST_COMPLETE:I = 0x42077

.field public static final EVENT_GET_UPDATE_APN_PARAMS_DONE:I = 0x420cb

.field public static final EVENT_GET_WWAN_IWLAN_COEXISTENCE_DONE:I = 0x42086

.field public static final EVENT_HTCCW_ENABLE:I = 0x4206e

.field public static final EVENT_HTC_BASE:I = 0x42064

.field public static final EVENT_HTC_DATA_ROAM_NOTIFICATION:I = 0x42066

.field public static final EVENT_HTC_DATA_STATE_CHECK:I = 0x42075

.field public static final EVENT_HTC_SWITCH_APN:I = 0x42065

.field public static final EVENT_ICC_CARD_READY:I = 0x42070

.field public static final EVENT_ICC_CHANGED:I = 0x42021

.field public static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field public static final EVENT_LTE_BASE:I = 0xc8

.field public static final EVENT_MODEM_LINK_STATUS_UPDATE:I = 0x42068

.field public static final EVENT_MVNO_CHANGED:I = 0x42074

.field public static final EVENT_NATIONAL_ROAMING_SETTING_CHANGE:I = 0x42085

.field public static final EVENT_NETWORK_ATTACH:I = 0x42078

.field public static final EVENT_OMADM_FINISH:I = 0x4207b

.field public static final EVENT_POLL_PDP:I = 0x42005

.field public static final EVENT_PROVISIONING_APN_ALARM:I = 0x42027

.field public static final EVENT_PROVISION_QUERY:I = 0x42079

.field public static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field public static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field public static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field public static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RADIO_ON:I = 0x4207d

.field public static final EVENT_RADIO_TECH_CHANGED:I = 0x42072

.field public static final EVENT_READ_CARRIER:I = 0x42073

.field public static final EVENT_RECORDS_LOADED:I = 0x42002

.field public static final EVENT_REDISCONNECT_DATACALL:I = 0x42081

.field public static final EVENT_RESET_DONE:I = 0x4201c

.field public static final EVENT_RESTART_RADIO:I = 0x4201a

.field public static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field public static final EVENT_RETRY_SETUP_DATA:I = 0x4206a

.field public static final EVENT_ROAMING_OFF:I = 0x4200c

.field public static final EVENT_ROAMING_ON:I = 0x4200b

.field public static final EVENT_ROAMING_STATUS_CHANGED:I = 0x42076

.field public static final EVENT_RUIM_READY:I = 0x42071

.field public static final EVENT_SERVICE_STATE_CHANGED:I = 0x42083

.field public static final EVENT_SET_APN_PARAMS_DONE:I = 0x420c9

.field public static final EVENT_SET_DATA_SUBSCRIPTION_DONE:I = 0x42082

.field public static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field public static final EVENT_SET_PS_STATE:I = 0x4207f

.field public static final EVENT_SILENT_FLIGHT_MODE:I = 0x42089

.field public static final EVENT_SPCS_DATA_ROAMING_SETTING_CHANGED:I = 0x42084

.field public static final EVENT_SPCS_LTE_DATA_ROAMING_SETTING_CHANGED:I = 0x42088

.field public static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field public static final EVENT_UPDATE_ALL_APN_PARAMS:I = 0x420ca

.field public static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field public static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static final HTC_APN_ID_BASE:I = 0xa

.field public static final HTC_APN_NUM_TYPES:I = 0xf

.field public static final PROVISIONING_URL_KEY:Ljava/lang/String; = "provisioningUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
