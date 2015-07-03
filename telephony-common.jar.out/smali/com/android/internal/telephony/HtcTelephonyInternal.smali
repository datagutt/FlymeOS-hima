.class public Lcom/android/internal/telephony/HtcTelephonyInternal;
.super Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephonyInternal$1;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$ECaveResult;
    }
.end annotation


# static fields
.field public static final AUTH_TYPE_3G_CONTEXT_AUTHENTICATE:I = 0x1

.field public static final AUTH_TYPE_GSM_AUTHENTICATE:I = 0x0

.field public static final AUTH_TYPE_IMS_AKA_AUTHENTICATE:I = 0x2

.field public static final AUTH_TYPE_ISIM_GBA_BOOTSTRAP_AUTHENTICATE:I = 0x3

.field public static final AUTH_TYPE_ISIM_GBA_NAF_AUTHENTICATE:I = 0x4

.field private static final CMD_ACCESS_SIM_ON_FLIGHT_MODE_STATUS:I = 0x6ed

.field private static final CMD_CDMA_EXIT_RADIO_POWER_SAVE_MODE:I = 0x7d2

.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_ENABLEPS_W2G_HANDOVER:I = 0x6f9

.field private static final CMD_ENABLE_REGISTRATION_STATE_WIFI_CALL:I = 0x6fa

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_GET_4G_PLUS_STATE:I = 0x7ec

.field private static final CMD_GET_ALL_DEVICE_ID_INFO:I = 0x6fc

.field private static final CMD_GET_ALL_IMSI:I = 0x6fe

.field private static final CMD_GET_CDMAMIN:I = 0xcd

.field private static final CMD_GET_CELL_LOCATION_BY_SLOT:I = 0x7ea

.field private static final CMD_GET_DETAIL_ICC_STATUS:I = 0x6ff

.field private static final CMD_GET_EHRPD_DEVICE_CAPABILITY:I = 0x7d3

.field private static final CMD_GET_EHRPD_DEVICE_CAPABILITY_RESULT:I = 0x7d4

.field private static final CMD_GET_EHRPD_DISABLE_CAPABILITY:I = 0x7d5

.field private static final CMD_GET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x7d6

.field private static final CMD_GET_ICCSN:I = 0xce

.field private static final CMD_GET_IMEI:I = 0xc8

.field private static final CMD_GET_IMEISV:I = 0xc9

.field private static final CMD_GET_IMS_REGISTERED:I = 0xd7

.field private static final CMD_GET_LTE_BAND_PRIORITY_LIST:I = 0x6e9

.field private static final CMD_GET_LTE_BAND_PRIORITY_LIST_DONE:I = 0x6ea

.field private static final CMD_GET_LTE_BAND_TYPE:I = 0xd9

.field private static final CMD_GET_LTE_BAND_TYPE_DONE:I = 0xda

.field private static final CMD_GET_MEID:I = 0xca

.field private static final CMD_GET_MOBILE_DATA_OVERALL_STATE:I = 0x6e8

.field private static final CMD_GET_NETWORK_SELECTION_MODE:I = 0x6e3

.field private static final CMD_GET_PDN_SETTINGS_2:I = 0x6f4

.field private static final CMD_GET_PDN_SETTINGS_2_RESULT:I = 0x6f5

.field private static final CMD_GET_PRI:I = 0xcb

.field private static final CMD_GET_PRL:I = 0xcc

.field private static final CMD_GET_RIL_RADIO_TECHNOLOGY:I = 0x6cf

.field private static final CMD_GET_SERIAL_NUMBER_WITH_CHAR:I = 0x6d7

.field private static final CMD_GET_UICC_APP_TYPE:I = 0x6e4

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_CDMA_ERI_CALL_GUARD:I = 0x6b8

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_CARD_AUTH:I = 0x6ee

.field private static final CMD_HTC_REQUEST_CARD_AUTH_DONE:I = 0x6ef

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT:I = 0x6b6

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b7

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB:I = 0x9e

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE:I = 0x9f

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_ACCT_INFOS:I = 0x6bd

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO:I = 0x6b9

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO_DONE:I = 0x6ba

.field private static final CMD_HTC_REQUEST_GET_BTID:I = 0x709

.field private static final CMD_HTC_REQUEST_GET_CDMA_CALL_FLASH_CODE:I = 0x6c4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SF_EUIMID:I = 0x6c3

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS:I = 0x6b0

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS_RESULT:I = 0x6b1

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT:I = 0x6b4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b5

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE:I = 0x6b2

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE_RESULT:I = 0x6b3

.field private static final CMD_HTC_REQUEST_GET_CDMA_VOICE_CAMPED_OPERATOR:I = 0x6c2

.field private static final CMD_HTC_REQUEST_GET_CFU_NUMBER:I = 0x7e1

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC:I = 0x9c

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE:I = 0x9d

.field private static final CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE:I = 0x6bc

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO:I = 0xad

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO_DONE:I = 0xae

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE:I = 0x6be

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE:I = 0x6bf

.field private static final CMD_HTC_REQUEST_GET_HASISIM:I = 0x70c

.field private static final CMD_HTC_REQUEST_GET_IS_GBA_SUPPORTED:I = 0x70d

.field private static final CMD_HTC_REQUEST_GET_KEYLIFETIME:I = 0x70b

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE:I = 0xab

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT:I = 0xac

.field private static final CMD_HTC_REQUEST_GET_O2_SIM_CARD_TYPE:I = 0x7e0

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO:I = 0xb1

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO_DONE:I = 0xb2

.field private static final CMD_HTC_REQUEST_GET_RAND:I = 0x70a

.field private static final CMD_HTC_REQUEST_GET_RF_BAND_INFO:I = 0x7db

.field private static final CMD_HTC_REQUEST_GET_RF_BAND_INFO_DONE:I = 0x7dc

.field private static final CMD_HTC_REQUEST_GET_SUBSIDY_LOCK_TYPES:I = 0x7e3

.field private static final CMD_HTC_REQUEST_GET_TxRx_POWER_INFO:I = 0x7d9

.field private static final CMD_HTC_REQUEST_GET_TxRx_POWER_INFO_DONE:I = 0x7da

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI:I = 0xa0

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE:I = 0xa1

.field private static final CMD_HTC_REQUEST_NOTIFY_KEY_EVENT:I = 0x7d1

.field private static final CMD_HTC_REQUEST_SEND_USER_TRIAL_FEEDBACK:I = 0x6bb

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK:I = 0x6ae

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK_RESULT:I = 0x6af

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB:I = 0x98

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE:I = 0x6c0

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE:I = 0x6c1

.field private static final CMD_HTC_REQUEST_SET_ITC:I = 0x6cd

.field private static final CMD_HTC_REQUEST_SET_ITC_DONE:I = 0x6ce

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB:I = 0x9a

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE:I = 0x9b

.field private static final CMD_HTC_REQUEST_SUPPLY_SIM_PIN:I = 0x7e4

.field private static final CMD_HTC_REQUEST_SUPPLY_SIM_PUK:I = 0x7e5

.field private static final CMD_HTC_REQUEST_SUPPLY_SUBSIDY_LOCK_PIN:I = 0x7e2

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_REQUEST_WRITE_ISIM_GBA_PARAM:I = 0x6f0

.field private static final CMD_HTC_REQUEST_WRITE_ISIM_GBA_PARAM_DONE:I = 0x6f1

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_HTC_SIM_GSM_AUTH:I = 0xb3

.field private static final CMD_HTC_SIM_GSM_AUTH_DONE:I = 0xb4

.field private static final CMD_HTC_USIM_AKA_AUTH:I = 0xaf

.field private static final CMD_HTC_USIM_AKA_AUTH_DONE:I = 0xb0

.field private static final CMD_INVOKE_OEM_RIL_REQUEST_STRINGS:I = 0x6fb

.field private static final CMD_IS_CT_DUAL_CARD_INSERTED:I = 0x6dd

.field private static final CMD_IS_CT_LTE_SIM_CARD:I = 0x6fd

.field private static final CMD_IS_DATA_CONNECTIVITY_POSSIBLE:I = 0x7e9

.field private static final CMD_IS_DUAL_CARD_INSERTED:I = 0x7e8

.field private static final CMD_IS_IMS_PHONE_IDLE:I = 0x6d0

.field private static final CMD_NAME_OMA_DM_ENABLED:I = 0xd6

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final CMD_OPEN_CHANNEL_EXT:I = 0x6ca

.field private static final CMD_PASS_HOTSPOT_STATE:I = 0x6e7

.field private static final CMD_REQUEST_GET_CD_PIN:I = 0x7e6

.field private static final CMD_REQUEST_GET_CD_PIN_DONE:I = 0x7e7

.field private static final CMD_RESET_PDN_FOR_SETTINGS_CHANGE_2:I = 0x6f8

.field private static final CMD_RESET_RIL:I = 0x6e1

.field private static final CMD_RESET_RIL_DONE:I = 0x6e2

.field private static final CMD_RESET_TO_DEFAULT_FOR_APN_SETTING:I = 0x6cc

.field private static final CMD_SET_EHRPD_DISABLE_CAPABILITY:I = 0x7d7

.field private static final CMD_SET_EHRPD_DISABLE_CAPABILITY_RESULT:I = 0x7d8

.field private static final CMD_SET_FAST_DORMANCY:I = 0x7df

.field private static final CMD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN:I = 0x6c9

.field private static final CMD_SET_LTE_BAND_PRIORITY_LIST:I = 0x6eb

.field private static final CMD_SET_LTE_BAND_PRIORITY_LIST_DONE:I = 0x6ec

.field private static final CMD_SET_LTE_BAND_TYPE:I = 0xdb

.field private static final CMD_SET_LTE_BAND_TYPE_DONE:I = 0xdc

.field private static final CMD_SET_MULTIRAB_TRAFFIC_THROTTLING:I = 0x7de

.field private static final CMD_SET_PDN_SETTINGS_2:I = 0x6f6

.field private static final CMD_SET_PDN_SETTINGS_2_RESULT:I = 0x6f7

.field private static final CMD_SET_SEND_AT_PUSHMAIL:I = 0x7dd

.field private static final CMD_SET_SERVICE_DOMAIN_PREF:I = 0x6e5

.field private static final CMD_SET_SERVICE_DOMAIN_PREF_DONE:I = 0x6e6

.field private static final CMD_SIM_IO:I = 0x96

.field private static final DBG:Z

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field private static final EVENT_SIM_IO_DONE:I = 0x97

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field public static final HTC_PERMISSION_APP_SHARED:Ljava/lang/String; = "com.htc.permission.APP_SHARED"

.field private static final INTER_DBG:Z = false

.field public static final METHOD_ACCESS_SIM_ON_FLIGHT_MODE_STATUS:Ljava/lang/String; = "accessSimOnFlightMode"

.field public static final METHOD_CDMA_EXIT_RADIO_POWER_SAVE_MODE:Ljava/lang/String; = "htcCdmaExitRadioPowerSaveMode"

.field public static final METHOD_ENABLEPS_W2G_HANDOVER:Ljava/lang/String; = "enablePS_W2G_Handover"

.field public static final METHOD_ENABLE_REGISTRATION_STATE_WIFI_CALL:Ljava/lang/String; = "enableRegistrationState_wifi_call"

.field public static final METHOD_GET_4G_PLUS_STATE:Ljava/lang/String; = "get4GPlusState"

.field public static final METHOD_GET_ALL_DEVICE_ID_INFO:Ljava/lang/String; = "getAllDeviceIdInfo"

.field public static final METHOD_GET_ALL_IMSI:Ljava/lang/String; = "getAllIMSI"

.field public static final METHOD_GET_CELL_LOCATION_BY_SLOT:Ljava/lang/String; = "getCellLocationBySlotId"

.field public static final METHOD_GET_DETAIL_ICC_STATUS:Ljava/lang/String; = "getDetailIccStatus"

.field public static final METHOD_GET_EHRPD_DEVICE_CAPABILITY:Ljava/lang/String; = "requestGetEhrpdDeviceCapability"

.field public static final METHOD_GET_EHRPD_DISABLE_CAPABILITY:Ljava/lang/String; = "requestGetEhrpdDisableCapability"

.field public static final METHOD_GET_LTE_BAND_PRIORITY_LIST:Ljava/lang/String; = "requestGetLTESupportedBandPriorityList"

.field public static final METHOD_GET_MOBILE_DATA_OVERALL_STATE:Ljava/lang/String; = "getMobileDataOverallState"

.field public static final METHOD_GET_NETWORK_SELECTION_MODE:Ljava/lang/String; = "isAutoNetworkSelectionMode"

.field public static final METHOD_GET_PDN_SETTINGS_2:Ljava/lang/String; = "getPdnSettings2"

.field public static final METHOD_GET_RIL_RADIO_TECHNOLOGY:Ljava/lang/String; = "getRilRadioTechnology"

.field public static final METHOD_GET_SERIAL_NUMBER_WITH_CHAR:Ljava/lang/String; = "getSimSerialNumberwithChar"

.field public static final METHOD_GET_UICC_APP_TYPE:Ljava/lang/String; = "getUiccAppType"

.field public static final METHOD_INVOKE_OEM_RIL_REQUEST_STRINGS:Ljava/lang/String; = "invokeOemRilRequestStrings"

.field public static final METHOD_IS_CT_DUAL_CARD_INSERTED:Ljava/lang/String; = "isCTDualCardInserted"

.field public static final METHOD_IS_CT_LTE_SIM_CARD:Ljava/lang/String; = "isCTLTESIMCard"

.field public static final METHOD_IS_DATA_CONNECTIVITY_POSSIBLE:Ljava/lang/String; = "isDataConnectivityPossible"

.field public static final METHOD_IS_DUAL_CARD_INSERTED:Ljava/lang/String; = "isDualCardInserted"

.field public static final METHOD_IS_IMS_PHONE_IDLE:Ljava/lang/String; = "isImsPhoneIdle"

.field private static final METHOD_NAME_CLEAR_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "clearCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_ACCT_INFOS:Ljava/lang/String; = "AccountInfos"

.field public static final METHOD_NAME_GET_ATR_INFO:Ljava/lang/String; = "getAtrInfo"

.field private static final METHOD_NAME_GET_BTID:Ljava/lang/String; = "getBTID"

.field public static final METHOD_NAME_GET_CDMAMIN:Ljava/lang/String; = "getCDMAMIN"

.field public static final METHOD_NAME_GET_CDMA_CALL_FLASH_CODE:Ljava/lang/String; = "CdmaCallFlashCode"

.field public static final METHOD_NAME_GET_CDMA_SF_EUIMID:Ljava/lang/String; = "CdmaSfEuimid"

.field public static final METHOD_NAME_GET_CDMA_SMART_NETWORK_STATUS:Ljava/lang/String; = "getCdmaSmartNetworkStatus"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "getCdmaSysRecordContent"

.field private static final METHOD_NAME_GET_CDMA_SYS_RECORD_SIZE:Ljava/lang/String; = "getCdmaSysRecordSize"

.field public static final METHOD_NAME_GET_CDMA_VOICE_CAMPED_OPERATOR:Ljava/lang/String; = "CdmaVoiceCampedOperator"

.field private static final METHOD_NAME_GET_CFU_NUMBER:Ljava/lang/String; = "getCFUNumber"

.field public static final METHOD_NAME_GET_DESIRED_POWER_STATE:Ljava/lang/String; = "DesiredPowerState"

.field private static final METHOD_NAME_GET_DRX_INFO:Ljava/lang/String; = "getDrxInfo"

.field public static final METHOD_NAME_GET_GPS_ONE_MODE:Ljava/lang/String; = "GetGpsOneMode"

.field private static final METHOD_NAME_GET_HASISIM:Ljava/lang/String; = "hasISIM"

.field public static final METHOD_NAME_GET_ICCSN:Ljava/lang/String; = "getICCSN"

.field public static final METHOD_NAME_GET_IMEI:Ljava/lang/String; = "getIMEI"

.field public static final METHOD_NAME_GET_IMEISV:Ljava/lang/String; = "getIMEISV"

.field public static final METHOD_NAME_GET_IMS_REGISTERED:Ljava/lang/String; = "getIMSregistered"

.field private static final METHOD_NAME_GET_IS_GBA_SUPPORTED:Ljava/lang/String; = "isGBASupported"

.field private static final METHOD_NAME_GET_KEYLIFETIME:Ljava/lang/String; = "getKeyLifeTime"

.field public static final METHOD_NAME_GET_LTE_BAND_TYPE:Ljava/lang/String; = "requestGetLteBandType"

.field public static final METHOD_NAME_GET_LTE_LAST_ERROR_CODE:Ljava/lang/String; = "getLTELastErrorCode"

.field public static final METHOD_NAME_GET_MEID:Ljava/lang/String; = "getMEID"

.field private static final METHOD_NAME_GET_O2_SIM_CARD_TYPE:Ljava/lang/String; = "getO2SimCardType"

.field private static final METHOD_NAME_GET_POWER_INFO:Ljava/lang/String; = "getPowerInfo"

.field public static final METHOD_NAME_GET_PRI:Ljava/lang/String; = "getPRI"

.field public static final METHOD_NAME_GET_PRL:Ljava/lang/String; = "getPRL"

.field private static final METHOD_NAME_GET_RAND:Ljava/lang/String; = "getRand"

.field public static final METHOD_NAME_GET_RF_BAND_INFO:Ljava/lang/String; = "getRFBandInfo"

.field private static final METHOD_NAME_GET_SUBSIDY_LOCK_TYPES:Ljava/lang/String; = "getSubsidyLockTypes"

.field public static final METHOD_NAME_GET_TxRx_POWER_INFO:Ljava/lang/String; = "getTxRxPowerInfo"

.field public static final METHOD_NAME_HTC_GET_CDMA_ERI_CALL_GUARD:Ljava/lang/String; = "htcGetCdmaEriCallGuard"

.field public static final METHOD_NAME_NOTIFY_KEY_EVENT:Ljava/lang/String; = "notifyKeyEvent"

.field public static final METHOD_NAME_OMA_DM_ENABLED:Ljava/lang/String; = "setOmaDmEnabled"

.field public static final METHOD_NAME_REQUEST_CARD_AUTH:Ljava/lang/String; = "requestCardAuth"

.field public static final METHOD_NAME_REQUEST_WRITE_ISIM_GBA_PARAM:Ljava/lang/String; = "writeISIMGBAParam"

.field private static final METHOD_NAME_SEND_USER_TRIAL_FEEDBACK:Ljava/lang/String; = "sendUserTrialFeedback"

.field public static final METHOD_NAME_SET_CDMA_SMART_NETWORK:Ljava/lang/String; = "setCdmaSmartNetwork"

.field public static final METHOD_NAME_SET_GPS_ONE_MODE:Ljava/lang/String; = "SetGpsOneMode"

.field public static final METHOD_NAME_SET_ITC:Ljava/lang/String; = "setITC"

.field public static final METHOD_NAME_SET_LTE_BAND_TYPE:Ljava/lang/String; = "requestSetLteBandType"

.field private static final METHOD_NAME_SUPPLY_SIM_PIN:Ljava/lang/String; = "supplySimPin"

.field private static final METHOD_NAME_SUPPLY_SIM_PUK:Ljava/lang/String; = "supplySimPuk"

.field private static final METHOD_NAME_SUPPLY_SUBSIDY_LOCK_PIN:Ljava/lang/String; = "supplySubsidyLockPin"

.field public static final METHOD_PASS_HOTSPOT_STATE:Ljava/lang/String; = "passHotSpotState"

.field public static final METHOD_REQUEST_GET_CD_PIN:Ljava/lang/String; = "requestGetCDPin"

.field public static final METHOD_RESET_PDN_FOR_SETTINGS_CHANGE_2:Ljava/lang/String; = "resetPdnForSettingsChange2"

.field public static final METHOD_RESET_RIL:Ljava/lang/String; = "resetRil"

.field public static final METHOD_RESET_TO_DEFAULT_FOR_APN_SETTING:Ljava/lang/String; = "onResetToDefaultforApnSetting"

.field public static final METHOD_SET_EHRPD_DISABLE_CAPABILITY:Ljava/lang/String; = "requestSetEhrpdDisableCapability"

.field public static final METHOD_SET_FAST_DORMANCY:Ljava/lang/String; = "requestSetFastDormancy"

.field public static final METHOD_SET_INTERNAL_DATA_ENABLE_FOR_MIP_SCREEN:Ljava/lang/String; = "setInternalDataEnabledForHtcCdmaMIPScreen"

.field public static final METHOD_SET_LTE_BAND_PRIORITY_LIST:Ljava/lang/String; = "requestSetLTEBandPriority"

.field public static final METHOD_SET_MULTIRAB_TRAFFIC_THROTTLING:Ljava/lang/String; = "requestSetMultiRABTrafficThrottling"

.field public static final METHOD_SET_PDN_SETTINGS_2:Ljava/lang/String; = "setPdnSettings2"

.field public static final METHOD_SET_SEND_AT_PUSHMAIL:Ljava/lang/String; = "sendAT_PushMail"

.field public static final METHOD_SET_SERVICE_DOMAIN_PREF:Ljava/lang/String; = "setServiceDomainPref"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SDBG:Z = false

.field static final TAG:Ljava/lang/String; = "HtcTelephonyInternal"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_BSID:Ljava/lang/String; = "getCdmaSysRecordContent_bsid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_NID:Ljava/lang/String; = "getCdmaSysRecordContent_nid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SID:Ljava/lang/String; = "getCdmaSysRecordContent_sid"

.field private static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SIZE:Ljava/lang/String; = "getCdmaSysRecordContent_size"

.field private static checkMth_getCdmaCallFlashCode:Z

.field private static checkMth_getCdmaVoiceCampedOperator:Z

.field private static fld_cdmaSfEuimid:Ljava/lang/reflect/Field;

.field private static mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

.field private static mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;


# instance fields
.field private lastError:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mHtcCheckCompatibility:Ljava/lang/reflect/Method;

.field private mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private mProxyPhone:Lcom/android/internal/telephony/Phone;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field methodMap:Ljava/util/HashMap;

.field private rejectAll:Z

.field private responsedata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 2991
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V

    .line 2992
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    const/4 v1, 0x0

    .line 2994
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 3016
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    .line 5399
    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    .line 5400
    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2995
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 2996
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2997
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    .line 2998
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    .line 2999
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 3002
    new-instance v0, Lcom/android/internal/telephony/HtcLtePdnSetting;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/HtcLtePdnSetting;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

    .line 3010
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->InitMethodMap()V

    .line 3012
    return-void
.end method

.method private InitMethodMap()V
    .locals 3

    .prologue
    .line 3019
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getLTELastErrorCode"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3021
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setCdmaSmartNetwork"

    const/16 v2, 0x6ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3022
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSmartNetworkStatus"

    const/16 v2, 0x6b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3024
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordSize"

    const/16 v2, 0x6b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3025
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordContent"

    const/16 v2, 0x6b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3026
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "clearCdmaSysRecordContent"

    const/16 v2, 0x6b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3027
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEI"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEISV"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getMEID"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3030
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRI"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRL"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCDMAMIN"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getICCSN"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3035
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "htcGetCdmaEriCallGuard"

    const/16 v2, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAtrInfo"

    const/16 v2, 0x6b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "sendUserTrialFeedback"

    const/16 v2, 0x6bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "DesiredPowerState"

    const/16 v2, 0x6bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "AccountInfos"

    const/16 v2, 0x6bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "GetGpsOneMode"

    const/16 v2, 0x6be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3050
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "SetGpsOneMode"

    const/16 v2, 0x6c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaVoiceCampedOperator"

    const/16 v2, 0x6c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3057
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaSfEuimid"

    const/16 v2, 0x6c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaCallFlashCode"

    const/16 v2, 0x6c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3061
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setInternalDataEnabledForHtcCdmaMIPScreen"

    const/16 v2, 0x6c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3064
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "onResetToDefaultforApnSetting"

    const/16 v2, 0x6cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3069
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setITC"

    const/16 v2, 0x6cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3074
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setOmaDmEnabled"

    const/16 v2, 0xd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3078
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getSimSerialNumberwithChar"

    const/16 v2, 0x6d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3082
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "resetRil"

    const/16 v2, 0x6e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isCTDualCardInserted"

    const/16 v2, 0x6dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3086
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isDualCardInserted"

    const/16 v2, 0x7e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRilRadioTechnology"

    const/16 v2, 0x6cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMSregistered"

    const/16 v2, 0xd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isAutoNetworkSelectionMode"

    const/16 v2, 0x6e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getUiccAppType"

    const/16 v2, 0x6e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isImsPhoneIdle"

    const/16 v2, 0x6d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setServiceDomainPref"

    const/16 v2, 0x6e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAllDeviceIdInfo"

    const/16 v2, 0x6fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "passHotSpotState"

    const/16 v2, 0x6e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isCTLTESIMCard"

    const/16 v2, 0x6fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3118
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getMobileDataOverallState"

    const/16 v2, 0x6e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetLTESupportedBandPriorityList"

    const/16 v2, 0x6e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetLTEBandPriority"

    const/16 v2, 0x6eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3125
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getBTID"

    const/16 v2, 0x709

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3126
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRand"

    const/16 v2, 0x70a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3127
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getKeyLifeTime"

    const/16 v2, 0x70b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "hasISIM"

    const/16 v2, 0x70c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3129
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isGBASupported"

    const/16 v2, 0x70d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3133
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "accessSimOnFlightMode"

    const/16 v2, 0x6ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestCardAuth"

    const/16 v2, 0x6ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3138
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "writeISIMGBAParam"

    const/16 v2, 0x6f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPdnSettings2"

    const/16 v2, 0x6f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3143
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setPdnSettings2"

    const/16 v2, 0x6f6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "resetPdnForSettingsChange2"

    const/16 v2, 0x6f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "enablePS_W2G_Handover"

    const/16 v2, 0x6f9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "enableRegistrationState_wifi_call"

    const/16 v2, 0x6fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getDrxInfo"

    const/16 v2, 0xad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "invokeOemRilRequestStrings"

    const/16 v2, 0x6fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3154
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "notifyKeyEvent"

    const/16 v2, 0x7d1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3158
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "htcCdmaExitRadioPowerSaveMode"

    const/16 v2, 0x7d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3163
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetEhrpdDeviceCapability"

    const/16 v2, 0x7d3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3164
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetEhrpdDisableCapability"

    const/16 v2, 0x7d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3165
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetEhrpdDisableCapability"

    const/16 v2, 0x7d7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3168
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAllIMSI"

    const/16 v2, 0x6fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3172
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getDetailIccStatus"

    const/16 v2, 0x6ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3176
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getTxRxPowerInfo"

    const/16 v2, 0x7d9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getRFBandInfo"

    const/16 v2, 0x7db

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3181
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "sendAT_PushMail"

    const/16 v2, 0x7dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3185
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetMultiRABTrafficThrottling"

    const/16 v2, 0x7de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3189
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetFastDormancy"

    const/16 v2, 0x7df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3193
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getO2SimCardType"

    const/16 v2, 0x7e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCFUNumber"

    const/16 v2, 0x7e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3201
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySubsidyLockPin"

    const/16 v2, 0x7e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3202
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getSubsidyLockTypes"

    const/16 v2, 0x7e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3206
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySimPin"

    const/16 v2, 0x7e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "supplySimPuk"

    const/16 v2, 0x7e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3209
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetCDPin"

    const/16 v2, 0x7e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPowerInfo"

    const/16 v2, 0xb1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestGetLteBandType"

    const/16 v2, 0xd9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3216
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "requestSetLteBandType"

    const/16 v2, 0xdb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3219
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "isDataConnectivityPossible"

    const/16 v2, 0x7e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3223
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCellLocationBySlotId"

    const/16 v2, 0x7ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3227
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "get4GPlusState"

    const/16 v2, 0x7ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3229
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaSfEuimid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # [B

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaCallFlashCode()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/HtcTelephonyInternal;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/HtcLtePdnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcLtePdnSetting:Lcom/android/internal/telephony/HtcLtePdnSetting;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->networkTypeTorilRadioTechnology(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return p1
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/io/ByteArrayOutputStream;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "x2"    # [B

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/HtcTelephonyInternal;Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcTelephonyInternal;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 4
    .param p1, "os"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3754
    if-nez p2, :cond_1

    move v0, v1

    .line 3757
    .local v0, "len":I
    :goto_0
    const/16 v2, 0xff

    if-le v0, v2, :cond_0

    .line 3758
    const/16 v0, 0xff

    .line 3759
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3763
    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3764
    return-void

    .line 3754
    .end local v0    # "len":I
    :cond_1
    array-length v0, p2

    goto :goto_0
.end method

.method private enforceSharePermission()V
    .locals 6

    .prologue
    .line 5083
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "sense_version"

    const-string v3, "5.5"

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 5086
    .local v0, "sensVersion":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4016000000000000L    # 5.5

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 5087
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "com.htc.permission.APP_SHARED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5090
    :cond_0
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3430
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3433
    :cond_0
    const/16 v10, 0x7d

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 3436
    .local v8, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3438
    .local v9, "s":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 3439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 3441
    :cond_1
    return-object v9
.end method

.method private getCdmaCallFlashCode()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 5019
    const/4 v3, 0x0

    .line 5020
    .local v3, "result":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 5021
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 5023
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    .line 5024
    sget-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaCallFlashCode:Z

    if-nez v4, :cond_1

    .line 5026
    :try_start_0
    const-string v4, "com.android.internal.telephony.PhoneProxy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5027
    .local v1, "cls":Ljava/lang/Class;
    const-string v4, "getCdmaCallFlashCode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5029
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaCallFlashCode:Z

    .line 5031
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 5033
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaCallFlashCode:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5040
    :cond_2
    :goto_1
    return-object v3

    .line 5034
    :catch_0
    move-exception v2

    .line 5035
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "HtcTelephonyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaCallFlashCode get ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 5028
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getCdmaSfEuimid()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4992
    const/4 v2, 0x0

    .line 4993
    .local v2, "sfEuimid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 4994
    .local v0, "iccCard":Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_2

    .line 4995
    const/4 v1, 0x0

    .line 4996
    .local v1, "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    instance-of v3, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    if-eqz v3, :cond_0

    .line 4997
    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 5002
    :goto_0
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_1

    .line 5003
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mSfEuimid:Ljava/lang/String;

    .line 5012
    :goto_1
    return-object v2

    .line 5000
    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    .restart local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    goto :goto_0

    .line 5006
    .end local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_1
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CdmaSfEuimid incorrect records"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5010
    .end local v1    # "iccRecord":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v0    # "iccCard":Lcom/android/internal/telephony/IccCard;
    :cond_2
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CdmaSfEuimid no card"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCdmaVoiceCampedOperator()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 4965
    const/4 v3, 0x0

    .line 4966
    .local v3, "result":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 4967
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 4969
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    .line 4970
    sget-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    if-nez v4, :cond_1

    .line 4972
    :try_start_0
    const-string v4, "com.android.internal.telephony.PhoneProxy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 4973
    .local v1, "cls":Ljava/lang/Class;
    const-string v4, "getCdmaVoiceCampedOperator"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4975
    .end local v1    # "cls":Ljava/lang/Class;
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    .line 4977
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 4979
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4986
    :cond_2
    :goto_1
    return-object v3

    .line 4980
    :catch_0
    move-exception v2

    .line 4981
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "HtcTelephonyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaVoiceCampedOperator get ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 4974
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 4
    .param p1, "mPm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5451
    const/16 v1, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5453
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_2

    .line 5454
    sget-boolean v1, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v1, :cond_0

    .line 5455
    const-string v2, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signatures for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 5464
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v1

    .line 5455
    .restart local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    goto :goto_0

    .line 5460
    :cond_2
    sget-boolean v1, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v1, :cond_3

    .line 5461
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No packageInfo found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5464
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 5463
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, -0x3e8

    .line 5204
    const/16 v0, -0x3e8

    .line 5205
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 5206
    const-string v2, "subscription"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5207
    .local v1, "subId":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 5208
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 5212
    :goto_0
    sget-boolean v2, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5214
    .end local v1    # "subId":Ljava/lang/Long;
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    :goto_1
    return-object v2

    .line 5210
    .restart local v1    # "subId":Ljava/lang/Long;
    :cond_1
    const-string v2, "phone"

    const/16 v3, -0x3e8

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 5214
    .end local v1    # "subId":Ljava/lang/Long;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    goto :goto_1
.end method

.method private internalGetMobileDataOverallState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundleResult"    # Landroid/os/Bundle;

    .prologue
    .line 5094
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 5095
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    const/4 v2, 0x0

    .line 5096
    .local v2, "state":I
    if-eqz v0, :cond_0

    .line 5097
    sget-object v3, Lcom/android/internal/telephony/HtcTelephonyInternal$1;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 5120
    const/4 v2, 0x0

    .line 5124
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_GET_MOBILE_DATA_OVERALL_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    :cond_1
    const-string v3, "getMobileDataOverallState"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5129
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "state":I
    :goto_1
    return-void

    .line 5099
    .restart local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .restart local v2    # "state":I
    :pswitch_0
    const/4 v2, 0x0

    .line 5100
    goto :goto_0

    .line 5102
    :pswitch_1
    const/4 v2, 0x1

    .line 5103
    goto :goto_0

    .line 5105
    :pswitch_2
    const/4 v2, 0x2

    .line 5106
    goto :goto_0

    .line 5108
    :pswitch_3
    const/4 v2, 0x3

    .line 5109
    goto :goto_0

    .line 5111
    :pswitch_4
    const/4 v2, 0x4

    .line 5112
    goto :goto_0

    .line 5114
    :pswitch_5
    const/4 v2, 0x5

    .line 5115
    goto :goto_0

    .line 5117
    :pswitch_6
    const/4 v2, 0x6

    .line 5118
    goto :goto_0

    .line 5126
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    .end local v2    # "state":I
    :catch_0
    move-exception v1

    .line 5127
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HtcTelephonyInternal"

    const-string v4, "CMD_GET_MOBILE_DATA_OVERALL_STATE"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 5097
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isAutoNetworkSelectionMode(I)Z
    .locals 6
    .param p1, "phoneSlot"    # I

    .prologue
    .line 5070
    const/4 v1, 0x0

    .line 5071
    .local v1, "networkSelection":Ljava/lang/String;
    const/4 v0, 0x1

    .line 5073
    .local v0, "isAutoSelection":Z
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5074
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "network_selection_key"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5075
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5076
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkSelection= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,isAutoSelection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5077
    :cond_0
    return v0
.end method

.method private networkTypeTorilRadioTechnology(I)I
    .locals 1
    .param p1, "networktype"    # I

    .prologue
    .line 5165
    packed-switch p1, :pswitch_data_0

    .line 5197
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5167
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 5169
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 5171
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 5173
    :pswitch_4
    const/16 v0, 0x9

    goto :goto_0

    .line 5175
    :pswitch_5
    const/16 v0, 0xa

    goto :goto_0

    .line 5177
    :pswitch_6
    const/16 v0, 0xb

    goto :goto_0

    .line 5179
    :pswitch_7
    const/4 v0, 0x5

    goto :goto_0

    .line 5181
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 5183
    :pswitch_9
    const/4 v0, 0x7

    goto :goto_0

    .line 5185
    :pswitch_a
    const/16 v0, 0x8

    goto :goto_0

    .line 5187
    :pswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 5189
    :pswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 5191
    :pswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 5193
    :pswitch_e
    const/16 v0, 0xf

    goto :goto_0

    .line 5195
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_0

    .line 5165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 2957
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 2958
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2961
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 2962
    .local v1, "request":Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2963
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2966
    monitor-enter v1

    .line 2967
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 2969
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2970
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2974
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2975
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 2974
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .param p1, "command"    # I

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 2986
    return-void
.end method

.method private setInternalDataEnabledForHtcCdmaMIPScreen(Z)Z
    .locals 10
    .param p1, "enable"    # Z

    .prologue
    .line 5046
    const/4 v4, 0x0

    .line 5047
    .local v4, "result":Z
    const/4 v5, 0x0

    .line 5048
    .local v5, "tmp":Z
    const/4 v6, 0x0

    .line 5050
    .local v6, "tmp_new":Z
    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v7, v7, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v7, :cond_0

    .line 5052
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 5053
    .local v0, "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    const-string v7, "com.android.internal.telephony.cdma.CDMAPhone"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 5054
    .local v1, "cls":Ljava/lang/Class;
    const-string v7, "ignoreAllMIPError"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 5055
    .local v3, "fld":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 5056
    if-nez p1, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 5057
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 5058
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    if-eqz v7, :cond_0

    .line 5059
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->setInternalDataEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 5064
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    const-string v7, "HtcTelephonyInternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setInternalDataEnabledForHtcCdmaMIPScreen("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",ignoreAllMIPError: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Phone:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5065
    return v4

    .line 5056
    .restart local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .restart local v1    # "cls":Ljava/lang/Class;
    .restart local v3    # "fld":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 5060
    .end local v0    # "cdmaPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "fld":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 5061
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setTimeZone(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 5132
    if-eqz p1, :cond_0

    .line 5133
    const-string v2, "sign"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5134
    .local v1, "sign":Z
    const-string v2, "offset"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 5135
    .local v0, "offset":I
    if-eq v4, v0, :cond_0

    .line 5136
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setTimeZone(ZI)V

    .line 5139
    .end local v0    # "offset":I
    .end local v1    # "sign":Z
    :cond_0
    return-void
.end method

.method private setTimeZone(ZI)V
    .locals 5
    .param p1, "sign"    # Z
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 5142
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5143
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .line 5144
    .local v1, "commands":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "UNIAT"

    aput-object v3, v1, v2

    .line 5145
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, "at@settimezone="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5147
    if-eqz p1, :cond_1

    .line 5148
    const-string v2, "1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5153
    :goto_0
    if-gez p2, :cond_0

    .line 5154
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 5157
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5158
    const-string v2, "\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 5160
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 5161
    return-void

    .line 5150
    :cond_1
    const-string v2, "0,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private sprintSignatureCheck()Z
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 5402
    const/4 v8, 0x0

    .line 5403
    .local v8, "result":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 5404
    .local v9, "uid":I
    const/4 v5, 0x0

    .line 5405
    .local v5, "packages":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v10, :cond_0

    .line 5406
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    if-eqz v10, :cond_2

    .line 5407
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5412
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v10, :cond_3

    .line 5413
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 5417
    :cond_1
    :goto_1
    if-eqz v5, :cond_6

    array-length v10, v5

    if-lez v10, :cond_6

    .line 5418
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_4

    .line 5419
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Packages with UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v6, v1, v3

    .line 5421
    .local v6, "pkg":Ljava/lang/String;
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5420
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5409
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_2
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): mContext is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5415
    :cond_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_1

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): mPackageManager is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5426
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v11, v5, v13

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPackageSignatures(Landroid/content/pm/PackageManager;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v7

    .line 5427
    .local v7, "pkgSignatures":[Landroid/content/pm/Signature;
    if-eqz v7, :cond_6

    array-length v10, v7

    if-lez v10, :cond_6

    .line 5430
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    if-nez v10, :cond_5

    .line 5431
    const-string v10, "com.sprint.internal.Platform"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v11, "htcCheckCompatibility"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, [Landroid/content/pm/Signature;

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    .line 5434
    :cond_5
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    .line 5435
    .local v0, "arglist":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object v7, v0, v10

    .line 5436
    iget-object v10, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mHtcCheckCompatibility:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 5443
    .end local v0    # "arglist":[Ljava/lang/Object;
    .end local v7    # "pkgSignatures":[Landroid/content/pm/Signature;
    :cond_6
    :goto_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_7

    .line 5444
    const-string v10, "HtcTelephonyInternal"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sprintSignatureCheck() result with "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    :cond_7
    return v8

    .line 5437
    .restart local v7    # "pkgSignatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v2

    .line 5438
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v10, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v10, :cond_8

    const-string v10, "HtcTelephonyInternal"

    const-string v11, "sprintSignatureCheck(): htcCheckCompatibility exception"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5439
    :cond_8
    const/4 v8, 0x0

    goto :goto_3
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    .line 3813
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3815
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3816
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    const/4 v1, 0x0

    .line 3825
    :goto_0
    return-object v1

    .line 3819
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3820
    .local v0, "argument":Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3821
    const-string v2, "autn"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3823
    const/16 v2, 0xaf

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3825
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3679
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3681
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3682
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3688
    :goto_0
    return-object v1

    .line 3686
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3688
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3697
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3699
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3700
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3706
    :goto_0
    return-object v1

    .line 3704
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3706
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .param p1, "nafId"    # [B

    .prologue
    const/4 v1, 0x0

    .line 3715
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3717
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3718
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    :goto_0
    return-object v1

    .line 3722
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3724
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 3515
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3516
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3518
    :cond_0
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3521
    .local v0, "err":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 3522
    const/4 v1, 0x1

    .line 3524
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 3233
    return-void
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 3
    .param p1, "enable"    # I

    .prologue
    .line 4924
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4926
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4927
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->enablePS_W2G_Handover(ILandroid/os/Message;)V

    .line 4929
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 4191
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4195
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4196
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 4198
    if-eqz p1, :cond_0

    .line 4203
    :cond_0
    return-void

    .line 4196
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 3238
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3242
    :goto_0
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    return-void

    .line 3239
    :catch_0
    move-exception v0

    .line 3240
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 35
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4298
    const/16 v22, 0x0

    .line 4299
    .local v22, "recheckPermissionForSprint":Z
    const/16 v27, 0x0

    .line 4301
    .local v27, "sprintSignatureCheckResult":Z
    :try_start_0
    const-string v31, "getPdnSettings2"

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 4302
    const/16 v22, 0x1

    .line 4304
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4320
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    const-string v31, "RIL"

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 4322
    :try_start_1
    const-string v31, "com.android.internal.telephony.HtcRilExtendApi"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 4323
    .local v5, "cls":Ljava/lang/Class;
    const-string v31, "getDefault"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Lcom/android/internal/telephony/Phone;

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 4324
    .local v9, "getDefault":Ljava/lang/reflect/Method;
    const-string v31, "rilFunctionMappingTable"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const-class v34, Landroid/os/Bundle;

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v24

    .line 4325
    .local v24, "rilFunctionMappingTable":Ljava/lang/reflect/Method;
    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v34, v0

    aput-object v34, v32, v33

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p2, v32, v33

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v3, v31

    .line 4689
    .end local v5    # "cls":Ljava/lang/Class;
    .end local v9    # "getDefault":Ljava/lang/reflect/Method;
    .end local v24    # "rilFunctionMappingTable":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    return-object v3

    .line 4306
    :catch_0
    move-exception v7

    .line 4307
    .local v7, "e":Ljava/lang/SecurityException;
    if-eqz v22, :cond_3

    .line 4308
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sprintSignatureCheck()Z

    move-result v27

    .line 4309
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_3

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "generalGetter(): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", result="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    :cond_3
    if-nez v27, :cond_1

    .line 4312
    invoke-virtual {v7}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 4314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4326
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    .line 4327
    .local v8, "ex":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "generalGetter RIL : "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4328
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4329
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    .line 4334
    .end local v8    # "ex":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 4335
    .local v17, "mapResult":Ljava/lang/Integer;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4336
    .local v3, "bundleResult":Landroid/os/Bundle;
    const/16 v29, 0x0

    .line 4337
    .local v29, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v17, :cond_24

    .line 4339
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v31

    sparse-switch v31, :sswitch_data_0

    .line 4683
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4343
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    :sswitch_0
    if-nez v27, :cond_5

    .line 4344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4685
    :cond_5
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 4686
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    goto/16 :goto_1

    .line 4411
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4415
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4416
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_CELL_LOCATION_BY_SLOT"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    const-string v31, "slot"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 4418
    .local v16, "mSlotId":I
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 4419
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_CELL_LOCATION_BY_SLOT, mSlotId= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v30

    .line 4421
    .local v30, "targetPhone1":Lcom/android/internal/telephony/Phone;
    if-eqz v30, :cond_6

    .line 4422
    move-object/from16 v0, v30

    instance-of v0, v0, Lcom/android/internal/telephony/PhoneProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_6

    .line 4423
    check-cast v30, Lcom/android/internal/telephony/PhoneProxy;

    .end local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v31

    check-cast v30, Lcom/android/internal/telephony/PhoneBase;

    .line 4426
    .restart local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :cond_6
    if-eqz v30, :cond_2

    move-object/from16 v31, v30

    .line 4427
    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 4428
    .local v4, "cl":Landroid/telephony/CellLocation;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_CELL_LOCATION_BY_SLOTmCellLoc="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4429
    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4438
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    .end local v16    # "mSlotId":I
    .end local v30    # "targetPhone1":Lcom/android/internal/telephony/Phone;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.ACCESS_NETWORK_STATE"

    const-string v33, "HtcTelephonyInternal"

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4443
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v26

    .line 4447
    .local v26, "roamingType":I
    const-string v31, "roamingType"

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4448
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_HTC_GET_CDMA_ERI_CALL_GUARD:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4454
    .end local v26    # "roamingType":I
    :sswitch_5
    const/4 v6, 0x0

    .line 4456
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v31, "com.android.internal.telephony.dataconnection.DcTracker"

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v6

    .line 4459
    :goto_3
    const/16 v20, 0x0

    .line 4460
    .local v20, "mmdt":Ljava/lang/Object;
    if-eqz v6, :cond_7

    .line 4461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    move-object/from16 v20, v0

    .line 4463
    .end local v20    # "mmdt":Ljava/lang/Object;
    :cond_7
    if-eqz v20, :cond_8

    .line 4464
    const/16 v18, 0x0

    .line 4466
    .local v18, "methodReset":Ljava/lang/reflect/Method;
    :try_start_3
    const-string v32, "onResetToDefaultforApnSetting"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18

    .line 4467
    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 4472
    .end local v18    # "methodReset":Ljava/lang/reflect/Method;
    :cond_8
    :goto_4
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4468
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    .restart local v18    # "methodReset":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v7

    .line 4469
    .local v7, "e":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onResetToDefaultforApnSetting Fail: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4476
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v18    # "methodReset":Ljava/lang/reflect/Method;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4477
    const/16 v19, 0x0

    .line 4480
    .local v19, "method_radioTech":Ljava/lang/reflect/Method;
    :try_start_4
    const-class v32, Landroid/telephony/ServiceState;

    const-string v33, "getRilRadioTechnology"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4481
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_9

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "getRilRadioTechnology() existed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4486
    :cond_9
    :goto_5
    if-nez v19, :cond_a

    .line 4488
    :try_start_5
    const-class v32, Landroid/telephony/ServiceState;

    const-string v33, "getRilDataRadioTechnology"

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Class;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v19

    .line 4489
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_a

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "getRilDataRadioTechnology() existed."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 4495
    :cond_a
    :goto_6
    if-eqz v19, :cond_2

    .line 4497
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v32

    const/16 v31, 0x0

    check-cast v31, [Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v25

    .line 4498
    .local v25, "rilRadioTech":I
    const-string v31, "getRilRadioTechnology"

    move-object/from16 v0, v31

    move/from16 v1, v25

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4499
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_RIL_RADIO_TECHNOLOGY:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 4500
    .end local v25    # "rilRadioTech":I
    :catch_3
    move-exception v7

    .line 4501
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_RIL_RADIO_TECHNOLOGY exception"

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 4482
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 4483
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_5

    .line 4490
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 4491
    .restart local v7    # "e":Ljava/lang/Exception;
    const/16 v19, 0x0

    goto :goto_6

    .line 4509
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v19    # "method_radioTech":Ljava/lang/reflect/Method;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/CallManager;->isImsPhoneIdle()Z

    move-result v15

    .line 4511
    .local v15, "isImsPhoneIdle":Z
    const-string v31, "isImsPhoneIdle"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4512
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_2

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_IMS_PHONE_IDLE:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4517
    .end local v15    # "isImsPhoneIdle":Z
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4518
    const/4 v14, 0x1

    .line 4519
    .local v14, "isAutoSelection":Z
    if-eqz p2, :cond_b

    .line 4522
    :cond_b
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_c

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_NETWORK_SELECTION_MODE = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4523
    :cond_c
    const-string v31, "isAutoNetworkSelectionMode"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4528
    .end local v14    # "isAutoSelection":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->internalGetMobileDataOverallState(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 4535
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const-string v31, "status"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v32

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4540
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4541
    const/16 v31, 0x6fc

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .local v23, "result":Landroid/os/Bundle;
    move-object/from16 v3, v23

    .line 4542
    goto/16 :goto_1

    .line 4545
    .end local v23    # "result":Landroid/os/Bundle;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4546
    const/16 v31, 0x6fe

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    .restart local v23    # "result":Landroid/os/Bundle;
    move-object/from16 v3, v23

    .line 4547
    goto/16 :goto_1

    .line 4550
    .end local v23    # "result":Landroid/os/Bundle;
    :sswitch_d
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_d

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_CT_DUAL_CARD_INSERTED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4553
    const/4 v10, 0x0

    .line 4554
    .local v10, "icCTDualCardInserted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4555
    if-eqz v29, :cond_10

    .line 4556
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_f

    .line 4557
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_f

    .line 4558
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_e

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    :cond_e
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCTDualCard()Z

    move-result v10

    .line 4562
    :cond_f
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_CT_DUAL_CARD_INSERTED = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    const-string v31, "isCTDualCardInserted"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4565
    :cond_10
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    const-string v31, "isCTDualCardInserted"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4572
    .end local v10    # "icCTDualCardInserted":Z
    :sswitch_e
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_11

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_DUAL_CARD_INSERTED"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4575
    const/4 v12, 0x0

    .line 4576
    .local v12, "icDualCardInserted":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4577
    if-eqz v29, :cond_14

    .line 4578
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_13

    .line 4579
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_13

    .line 4580
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_12

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    :cond_12
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isDualCard()Z

    move-result v12

    .line 4584
    :cond_13
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_DUAL_CARD_INSERTED = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    const-string v31, "isDualCardInserted"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4587
    :cond_14
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    const-string v31, "isDualCardInserted"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4595
    .end local v12    # "icDualCardInserted":Z
    :sswitch_f
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_15

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_IS_CT_LTE_SIM_CARD"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4596
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4597
    const/4 v11, 0x0

    .line 4598
    .local v11, "icCTLteSimCard":Z
    const/16 v31, 0x0

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4599
    if-eqz v29, :cond_18

    .line 4600
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 4601
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_17

    .line 4602
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_16

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_16
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCTLTESIMCard()Z

    move-result v11

    .line 4606
    :cond_17
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_IS_CT_LTE_SIM_CARD = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    const-string v31, "isCTLTESIMCard"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4610
    :cond_18
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    const-string v31, "isCTLTESIMCard"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4617
    .end local v11    # "icCTLteSimCard":Z
    :sswitch_10
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_19

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_DETAIL_ICC_STATUS"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4618
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4620
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 4621
    .local v21, "pinRetry":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4622
    if-eqz v29, :cond_1c

    .line 4623
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_1b

    .line 4624
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_1b

    .line 4625
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1a

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "targetPhone = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    :cond_1a
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v21

    .line 4629
    :cond_1b
    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "CMD_GET_DETAIL_ICC_STATUS = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x0

    aget v33, v21, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x1

    aget v33, v21, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x2

    aget v33, v21, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3

    aget v33, v21, v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4630
    const-string v31, "getDetailIccStatus"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 4633
    :cond_1c
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "targetPhone is null, please check"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    const-string v31, "getDetailIccStatus"

    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 4640
    .end local v21    # "pinRetry":[I
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4641
    const-string v32, "getO2SimCardType"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v31

    :goto_7
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1d
    const/16 v31, 0x0

    goto :goto_7

    .line 4647
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const-string v32, "android.permission.READ_PHONE_STATE"

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2

    .line 4649
    const-string v31, "getCFUNumber"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->getCFUNumber()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4655
    :sswitch_13
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1e

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_HTC_REQUEST_GET_SUBSIDY_LOCK_TYPES"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4656
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4657
    if-eqz v29, :cond_20

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    if-eqz v31, :cond_20

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    move-object/from16 v0, v31

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    move/from16 v31, v0

    if-eqz v31, :cond_20

    .line 4658
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/IccCard;->getSubsidyLock()I

    move-result v28

    .line 4659
    .local v28, "subsidylocktype":I
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_1f

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Subsidy lock types = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    :cond_1f
    const-string v31, "getSubsidyLockTypes"

    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4662
    .end local v28    # "subsidylocktype":I
    :cond_20
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "can not get susbidy lock types due to targetPhone is null."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4663
    const-string v31, "getSubsidyLockTypes"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 4669
    :sswitch_14
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_21

    const-string v31, "HtcTelephonyInternal"

    const-string v32, "CMD_GET_4G_PLUS_STATE"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v29

    .line 4671
    if-eqz v29, :cond_23

    .line 4672
    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->is4GPlus()Z

    move-result v13

    .line 4673
    .local v13, "is4Gplus":Z
    sget-boolean v31, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v31, :cond_22

    const-string v31, "HtcTelephonyInternal"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "is 4G plus state  = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4674
    :cond_22
    const-string v31, "get4GPlusState"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4676
    .end local v13    # "is4Gplus":Z
    :cond_23
    const-string v31, "HtcTelephonyInternal"

    const-string v32, "can not get 4G plus state due to targetPhone is null."

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4677
    const-string v31, "get4GPlusState"

    const/16 v32, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 4689
    :cond_24
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "bundleResult":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4457
    .restart local v3    # "bundleResult":Landroid/os/Bundle;
    .restart local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_6
    move-exception v31

    goto/16 :goto_3

    .line 4339
    :sswitch_data_0
    .sparse-switch
        0xab -> :sswitch_1
        0xad -> :sswitch_3
        0xb1 -> :sswitch_1
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
        0xca -> :sswitch_1
        0xcb -> :sswitch_1
        0xcc -> :sswitch_1
        0xcd -> :sswitch_1
        0xce -> :sswitch_1
        0xd7 -> :sswitch_1
        0xd9 -> :sswitch_1
        0x6b0 -> :sswitch_1
        0x6b2 -> :sswitch_1
        0x6b4 -> :sswitch_1
        0x6b8 -> :sswitch_4
        0x6b9 -> :sswitch_1
        0x6bc -> :sswitch_1
        0x6bd -> :sswitch_1
        0x6be -> :sswitch_1
        0x6c2 -> :sswitch_1
        0x6c3 -> :sswitch_1
        0x6c4 -> :sswitch_1
        0x6cc -> :sswitch_5
        0x6cf -> :sswitch_6
        0x6d0 -> :sswitch_7
        0x6d7 -> :sswitch_1
        0x6dd -> :sswitch_d
        0x6e3 -> :sswitch_8
        0x6e4 -> :sswitch_1
        0x6e8 -> :sswitch_9
        0x6e9 -> :sswitch_1
        0x6ed -> :sswitch_a
        0x6f4 -> :sswitch_0
        0x6fc -> :sswitch_b
        0x6fd -> :sswitch_f
        0x6fe -> :sswitch_c
        0x6ff -> :sswitch_10
        0x709 -> :sswitch_1
        0x70a -> :sswitch_1
        0x70b -> :sswitch_1
        0x70c -> :sswitch_1
        0x70d -> :sswitch_1
        0x7d3 -> :sswitch_1
        0x7d5 -> :sswitch_1
        0x7d9 -> :sswitch_1
        0x7db -> :sswitch_1
        0x7e0 -> :sswitch_11
        0x7e1 -> :sswitch_12
        0x7e3 -> :sswitch_13
        0x7e6 -> :sswitch_1
        0x7e8 -> :sswitch_e
        0x7e9 -> :sswitch_3
        0x7ea -> :sswitch_2
        0x7ec -> :sswitch_14
    .end sparse-switch
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4695
    const/4 v7, 0x0

    .line 4696
    .local v7, "recheckPermissionForSprint":Z
    const/4 v8, 0x0

    .line 4698
    .local v8, "sprintSignatureCheckResult":Z
    :try_start_0
    const-string v14, "setPdnSettings2"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4699
    const/4 v7, 0x1

    .line 4703
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4715
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4716
    .local v4, "mapResult":Ljava/lang/Integer;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4717
    .local v2, "bundleResult":Landroid/os/Bundle;
    if-eqz v4, :cond_e

    .line 4719
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 4873
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 4879
    :goto_1
    return-object v14

    .line 4700
    .end local v2    # "bundleResult":Landroid/os/Bundle;
    .end local v4    # "mapResult":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    const-string v14, "resetPdnForSettingsChange2"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-eqz v14, :cond_0

    .line 4701
    const/4 v7, 0x1

    goto :goto_0

    .line 4704
    :catch_0
    move-exception v3

    .line 4705
    .local v3, "e":Ljava/lang/SecurityException;
    if-eqz v7, :cond_3

    .line 4706
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sprintSignatureCheck()Z

    move-result v8

    .line 4707
    sget-boolean v14, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v14, :cond_3

    const-string v14, "HtcTelephonyInternal"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "generalSetter(): "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", result="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4709
    :cond_3
    if-nez v8, :cond_1

    .line 4710
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 4711
    throw v3

    .line 4724
    .end local v3    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "bundleResult":Landroid/os/Bundle;
    .restart local v4    # "mapResult":Ljava/lang/Integer;
    :sswitch_0
    if-nez v8, :cond_4

    .line 4725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.MODIFY_PHONE_STATE"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    :cond_4
    :goto_2
    :sswitch_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "bundleResult":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .restart local v2    # "bundleResult":Landroid/os/Bundle;
    move-object v14, v2

    .line 4876
    goto :goto_1

    .line 4770
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.MODIFY_PHONE_STATE"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4775
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.MODIFY_PHONE_STATE"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4776
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v14, :cond_5

    .line 4777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/android/internal/telephony/CommandsInterface;->sendUserTrialFeedback(Landroid/os/Message;)V

    .line 4779
    :cond_5
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4784
    :sswitch_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const/16 v15, 0x2703

    if-eq v14, v15, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const/16 v15, 0x3e9

    if-eq v14, v15, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    const/16 v15, 0x3e8

    if-eq v14, v15, :cond_4

    .line 4787
    new-instance v14, Ljava/lang/SecurityException;

    const-string v15, "Only Smartcard API may access UICC"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 4793
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v15, "android.permission.MODIFY_PHONE_STATE"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4812
    :sswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->setTimeZone(Landroid/os/Bundle;)V

    .line 4813
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4817
    :sswitch_7
    const-string v14, "keyCode"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 4818
    .local v13, "type":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/HtcTelephonyInternal;->notifyKeyEvent(I)V

    move-object v14, v2

    .line 4819
    goto/16 :goto_1

    .line 4823
    .end local v13    # "type":I
    :sswitch_8
    const-string v14, "HtcTelephonyInternal"

    const-string v15, "CMD_CDMA_EXIT_RADIO_POWER_SAVE_MODE"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v14, :cond_6

    .line 4826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->htcCdmaExitRadioPowerSaveMode()V

    :cond_6
    move-object v14, v2

    .line 4828
    goto/16 :goto_1

    .line 4832
    :sswitch_9
    const-string v14, "HtcTelephonyInternal"

    const-string v15, "CMD_HTC_REQUEST_SUPPLY_SUBSIDY_LOCK_PIN"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4833
    const/4 v9, 0x0

    .line 4834
    .local v9, "status":Z
    if-eqz p2, :cond_9

    .line 4835
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 4836
    .local v12, "targetPhone":Lcom/android/internal/telephony/Phone;
    const-string v14, "subsidylocktype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4837
    .local v10, "subsidylocktype":Ljava/lang/String;
    const-string v14, "subsidypin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4838
    .local v11, "subsidypin":Ljava/lang/String;
    if-eqz v12, :cond_8

    .line 4839
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lcom/android/internal/telephony/HtcTelephonyInternal;->supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    .line 4846
    .end local v10    # "subsidylocktype":Ljava/lang/String;
    .end local v11    # "subsidypin":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    :goto_3
    const-string v14, "status"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v14, v2

    .line 4847
    goto/16 :goto_1

    .line 4841
    .restart local v10    # "subsidylocktype":Ljava/lang/String;
    .restart local v11    # "subsidypin":Ljava/lang/String;
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_8
    sget-boolean v14, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v14, :cond_7

    const-string v14, "HtcTelephonyInternal"

    const-string v15, "targetPhone is null, does not execute supplySubsidyLockPin()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4844
    .end local v10    # "subsidylocktype":Ljava/lang/String;
    .end local v11    # "subsidypin":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_9
    sget-boolean v14, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v14, :cond_7

    const-string v14, "HtcTelephonyInternal"

    const-string v15, "bundle is null, does not execute supplySubsidyLockPin()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 4852
    .end local v9    # "status":Z
    :sswitch_a
    const-string v14, "HtcTelephonyInternal"

    const-string v15, "CMD_HTC_REQUEST_SUPPLY_SIM_PIN"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4853
    const/4 v9, 0x0

    .line 4854
    .restart local v9    # "status":Z
    if-eqz p2, :cond_d

    .line 4855
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getPhonebyBundleInfo(Landroid/os/Bundle;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 4856
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    const-string v14, "pin"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4857
    .local v5, "pin":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/16 v15, 0x7e5

    if-ne v14, v15, :cond_b

    const-string v14, "puk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4858
    .local v6, "puk":Ljava/lang/String;
    :goto_4
    if-eqz v12, :cond_c

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v14

    if-eqz v14, :cond_c

    .line 4859
    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v14}, Lcom/android/internal/telephony/HtcTelephonyInternal;->supplyPinPukReportResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IccCard;)Z

    move-result v9

    .line 4866
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "puk":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_a
    :goto_5
    const-string v14, "status"

    invoke-virtual {v2, v14, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object v14, v2

    .line 4867
    goto/16 :goto_1

    .line 4857
    .restart local v5    # "pin":Ljava/lang/String;
    .restart local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    .line 4861
    .restart local v6    # "puk":Ljava/lang/String;
    :cond_c
    sget-boolean v14, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v14, :cond_a

    const-string v14, "HtcTelephonyInternal"

    const-string v15, "targetPhone is null or targetPhone.getIccCard() is null, does not execute supplyPin() or supplyPuk()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4864
    .end local v5    # "pin":Ljava/lang/String;
    .end local v6    # "puk":Ljava/lang/String;
    .end local v12    # "targetPhone":Lcom/android/internal/telephony/Phone;
    :cond_d
    sget-boolean v14, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v14, :cond_a

    const-string v14, "HtcTelephonyInternal"

    const-string v15, "bundle is null, does not execute supplyPin() or supplyPuk()"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 4879
    .end local v9    # "status":Z
    :cond_e
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_1

    .line 4719
    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_2
        0xdb -> :sswitch_2
        0x6ae -> :sswitch_2
        0x6b6 -> :sswitch_2
        0x6bb -> :sswitch_3
        0x6c0 -> :sswitch_2
        0x6c9 -> :sswitch_2
        0x6cd -> :sswitch_4
        0x6e1 -> :sswitch_2
        0x6e5 -> :sswitch_2
        0x6e7 -> :sswitch_5
        0x6eb -> :sswitch_2
        0x6ee -> :sswitch_2
        0x6f0 -> :sswitch_2
        0x6f6 -> :sswitch_0
        0x6f8 -> :sswitch_0
        0x6f9 -> :sswitch_1
        0x6fa -> :sswitch_2
        0x6fb -> :sswitch_6
        0x7d1 -> :sswitch_7
        0x7d2 -> :sswitch_8
        0x7d7 -> :sswitch_2
        0x7dd -> :sswitch_2
        0x7de -> :sswitch_2
        0x7df -> :sswitch_2
        0x7e2 -> :sswitch_9
        0x7e4 -> :sswitch_a
        0x7e5 -> :sswitch_a
    .end sparse-switch
.end method

.method public getCallStateExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4224
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 3
    .param p1, "phoneType"    # I

    .prologue
    .line 4900
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4903
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4934
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    const/16 v2, 0xad

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4937
    .local v0, "returnResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 4940
    .end local v0    # "returnResult":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "returnResult":Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0    # "returnResult":Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3851
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3852
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 3854
    :cond_0
    return v3
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3885
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3886
    const-string v0, ""

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3901
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3902
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3931
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3961
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    const-string v0, ""

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    const-string v0, ""

    return-object v0
.end method

.method public getHtcServiceStateExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4234
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3916
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    const-string v0, ""

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3992
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 3976
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3977
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3978
    .local v0, "number":Ljava/lang/String;
    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 3534
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3535
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return v0
.end method

.method public getNetworkTypeExtInternal(I)I
    .locals 1
    .param p1, "phoneType"    # I

    .prologue
    .line 4214
    const/4 v0, 0x0

    return v0
.end method

.method public getOpenChannelResponseData()[B
    .locals 2

    .prologue
    .line 3497
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3498
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    return-object v0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4948
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4951
    const/16 v2, 0xb1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4953
    .local v0, "returnResult":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4954
    const-string v1, "getPowerInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 4956
    :cond_0
    return-object v1
.end method

.method public getScreenBusyState()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4110
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4112
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4113
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4116
    :cond_0
    return v1
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .param p1, "requestedNetworkType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3658
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3660
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 3661
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 3667
    :goto_0
    return-object v0

    .line 3665
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3667
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public gsmAuthentication([B)Landroid/os/Bundle;
    .locals 5
    .param p1, "rand"    # [B

    .prologue
    .line 3831
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3833
    if-nez p1, :cond_0

    .line 3834
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3835
    const/4 v1, 0x0

    .line 3842
    :goto_0
    return-object v1

    .line 3837
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3838
    .local v0, "argument":Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3840
    const/16 v2, 0xb3

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3842
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCatServiceReady()Z
    .locals 2

    .prologue
    .line 4173
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4175
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4176
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4177
    const/4 v1, 0x1

    .line 4179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyKeyEvent(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 4097
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4099
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4100
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4102
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 4104
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 1
    .param p1, "busy"    # Z

    .prologue
    .line 4076
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4078
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4079
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4083
    :cond_0
    return-void
.end method

.method public onCmdResponse(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 4124
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4137
    return-void
.end method

.method public onHandleEventList(IZ)V
    .locals 1
    .param p1, "event"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4144
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4146
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 4147
    .local v0, "catInstance":Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 4150
    :cond_0
    return-void
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 4157
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4166
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3471
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3474
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    .line 3476
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3478
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public openIccLogicalChannelExt(Ljava/lang/String;)I
    .locals 3
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 3483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 3484
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3487
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->responsedata:[B

    .line 3489
    const/16 v1, 0x6ca

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3491
    .local v0, "channel":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3274
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3359
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3298
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3299
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3371
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3334
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3335
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randu"    # Ljava/lang/String;

    .prologue
    .line 3262
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestConfigLocProcessDB(IIII)Z
    .locals 6
    .param p1, "enable"    # I
    .param p2, "num_neighbor_pilot"    # I
    .param p3, "num_record"    # I
    .param p4, "time"    # I

    .prologue
    const/4 v2, 0x0

    .line 4278
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "HtcTelephonyInternal"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Integer;

    .line 4283
    .local v0, "para":[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 4284
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4285
    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4286
    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 4287
    const/16 v3, 0x9e

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4288
    .local v1, "result":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3619
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3621
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetCurrentLoc()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4269
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4272
    const/16 v2, 0x9c

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4273
    .local v0, "result":Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0    # "result":Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 3586
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3588
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 3597
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3599
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3630
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3632
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "phonetype"    # Ljava/lang/String;

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3574
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 3608
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3610
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 4885
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4889
    const/16 v2, 0xa0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4890
    .local v0, "returnResult":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 4893
    .end local v0    # "returnResult":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "returnResult":Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0    # "returnResult":Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 3639
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3641
    if-nez p1, :cond_0

    .line 3642
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3653
    :goto_0
    return-object v0

    .line 3646
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3647
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3651
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3653
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 1

    .prologue
    .line 4035
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4037
    const/4 v0, 0x0

    return v0
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "chapid"    # Ljava/lang/String;
    .param p2, "chapchallengelength"    # Ljava/lang/String;
    .param p3, "chpachallenge"    # Ljava/lang/String;

    .prologue
    .line 3346
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 3348
    .local v0, "paraMD5":[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "randssd"    # Ljava/lang/String;

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "authbs"    # Ljava/lang/String;

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3311
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetLocProcessDB(IIIIII[I)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "rat"    # I
    .param p3, "sid"    # I
    .param p4, "nid"    # I
    .param p5, "base_id"    # I
    .param p6, "pilot_pn"    # I
    .param p7, "neighbor_pilot_list"    # [I

    .prologue
    .line 4251
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4256
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4257
    const-string v2, "rat"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4258
    const-string v2, "sid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4259
    const-string v2, "nid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4260
    const-string v2, "base_id"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4261
    const-string v2, "pilot_pn"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4262
    const-string v2, "neighbor_pilot_list"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 4263
    const/16 v2, 0x9a

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4264
    .local v1, "result":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3322
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3323
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requesttClearLocProcessDB()Z
    .locals 4

    .prologue
    .line 4241
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "HtcTelephonyInternal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4244
    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4245
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 4909
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 4912
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 4913
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 4918
    :cond_0
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .prologue
    .line 3734
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->enforceSharePermission()V

    .line 3736
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3737
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :goto_0
    return-void

    .line 3740
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 3741
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 3742
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 3744
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3746
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3747
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3748
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 3750
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 3859
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "activePhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 3404
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 3405
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4056
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    const/4 v0, 0x0

    return v0
.end method

.method public setUserDataEnabled(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4050
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPinPukReportResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IccCard;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "icccard"    # Lcom/android/internal/telephony/IccCard;

    .prologue
    const/4 v2, 0x0

    .line 5298
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 5299
    .local v0, "checkSimPinPuk":Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->start()V

    .line 5300
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 5301
    .local v1, "resultArray":[I
    aget v3, v1, v2

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public supplySubsidyLockPin(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;
    .param p3, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 5220
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;

    invoke-direct {v0, p3}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 5221
    .local v0, "checkSubsidyLockPin":Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;
    invoke-virtual {v0}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->start()V

    .line 5222
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$CheckSubsidyLockPin;->checkSubsidyPin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 3451
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3461
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3541
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 3542
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3544
    :cond_0
    const/16 v11, 0x96

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    const/4 v3, -0x1

    move v1, p1

    move v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 3547
    .local v9, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v10, 0x0

    .line 3548
    .local v10, "result":[B
    const/4 v8, 0x2

    .line 3549
    .local v8, "length":I
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 3550
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    .line 3551
    new-array v10, v8, [B

    .line 3552
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3557
    :goto_0
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 3558
    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 3559
    return-object v10

    .line 3554
    :cond_1
    new-array v10, v8, [B

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "expire"    # I

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # I
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # Ljava/lang/String;
    .param p4, "streamId"    # Ljava/lang/String;

    .prologue
    .line 3397
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    return-void
.end method
