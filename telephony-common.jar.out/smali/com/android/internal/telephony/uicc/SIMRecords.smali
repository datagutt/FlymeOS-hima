.class public Lcom/android/internal/telephony/uicc/SIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SIMRecords$1;,
        Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;,
        Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;,
        Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;
    }
.end annotation


# static fields
.field static final CFF_LINE1_MASK:I = 0xf

.field static final CFF_LINE1_RESET:I = 0xf0

.field static final CFF_UNCONDITIONAL_ACTIVE:I = 0xa

.field static final CFF_UNCONDITIONAL_DEACTIVE:I = 0x5

.field private static final CFIS_ADN_CAPABILITY_ID_OFFSET:I = 0xe

.field private static final CFIS_ADN_EXTENSION_ID_OFFSET:I = 0xf

.field private static final CFIS_BCD_NUMBER_LENGTH_OFFSET:I = 0x2

.field private static final CFIS_TON_NPI_OFFSET:I = 0x3

.field private static final CMCC_MVNO_SPN_LIST:Ljava/util/ArrayList;

.field private static final CMCC_NETWORK_LIST:Ljava/util/ArrayList;

.field private static final CPHS_SST_MBN_ENABLED:I = 0x30

.field private static final CPHS_SST_MBN_MASK:I = 0x30

.field private static final CRASH_RIL:Z = false

.field private static final CT_MVNO_SPN_LIST:Ljava/util/ArrayList;

.field private static final CT_NETWORK_LIST:Ljava/util/ArrayList;

.field private static final CU_MVNO_SPN_LIST:Ljava/util/ArrayList;

.field private static final CU_NETWORK_LIST:Ljava/util/ArrayList;

.field private static final EVENT_APP_LOCKED:I = 0x23

.field private static final EVENT_CURRENT_NETWORK_MODE_FOR_LTE_AUTO_SWITCH:I = 0xd6

.field private static final EVENT_DELAY_CFU_QUERY:I = 0xcd

.field protected static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CBMIR_CHANNEL_DONE:I = 0xd5

.field private static final EVENT_GET_CB_CHANNEL_DONE:I = 0xd2

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CFU_DONE:I = 0xce

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EFLP_DONE:I = 0xca

.field private static final EVENT_GET_EF_MSISDN_DONE:I = 0xd0

.field private static final EVENT_GET_FPLMN_DONE:I = 0xcc

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GSM_IMSI_DONE:I = 0xe1

.field private static final EVENT_GET_HPLMNwAcT_DONE:I = 0xd1

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field protected static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_O2_PERSO_DONE:I = 0xcf

.field private static final EVENT_GET_OCSGL_DONE:I = 0xd4

.field private static final EVENT_GET_PLMNWACT_DONE:I = 0xda

.field private static final EVENT_GET_PNN_DONE:I = 0xf

.field private static final EVENT_GET_SIM_TYPES_DONE:I = 0xc9

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field protected static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_HTC_EXTENDED_OFFSET:I = 0xc8

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_PHONE_MODE_CHANGED_DONE:I = 0xd9

.field private static final EVENT_RESULT_SET_MODE_FOR_LTE_AUTO_SWITCH:I = 0xd8

.field private static final EVENT_RETRY_SET_MODE_FOR_LTE_AUTO_SWITCH:I = 0xd7

.field private static final EVENT_SET_CB_CHANNEL_DONE:I = 0xd3

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_EFLP_DONE:I = 0xcb

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_SIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_SIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final H3G_NETWORKLIST:Ljava/util/ArrayList;

.field private static final HPLMNwACT_RECORD_SIZE:I = 0x5

.field protected static final LOG_TAG:Ljava/lang/String; = "SIMRecords"

.field private static final MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

.field private static final O2_UK_MCCMNC:Ljava/lang/String; = "23410"

.field private static final ORANGE_NETWORKLIST:Ljava/util/ArrayList;

.field static final TAG_FULL_NETWORK_NAME:I = 0x43

.field static final TAG_SHORT_NETWORK_NAME:I = 0x45

.field static final TAG_SPDI:I = 0xa3

.field static final TAG_SPDI_PLMN_LIST:I = 0x80

.field private static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field private static mIsOptusCid:Z

.field private static sPatternAircel:Ljava/util/regex/Pattern;

.field private static sPatternTataDoCoMo:Ljava/util/regex/Pattern;

.field private static sPatternVideocon:Ljava/util/regex/Pattern;


# instance fields
.field CSGIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field CSGPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final GET_EFAD_DONE:I

.field private final GET_EFIMSI_DONE:I

.field private final USIM_OCSGL_NOT_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE:I

.field private final USIM_OCSGL_PRESENCE_EMPTY:I

.field private approval:Z

.field public cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

.field public dataCallForwardingEnabled:Z

.field disableCfuIcon:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mCFUNumber:Ljava/lang/String;

.field private mCallForwardingEnabled:Z

.field private mCfuCounter:I

.field private mCphsInfo:[B

.field mCspPlmnEnabled:Z

.field public mDataCFUNumber:Ljava/lang/String;

.field mEFO2Perso:[B

.field mEfCPHS_MWI:[B

.field mEfCff:[B

.field mEfCfis:[B

.field mEfLi:[B

.field mEfMWIS:[B

.field mEfPl:[B

.field mFPLMNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGsmImsi:Ljava/lang/String;

.field private mIsMFG:Z

.field private mIsNEL:Z

.field private mLteBlackList:Ljava/lang/String;

.field private mMSISDNRetry:I

.field mMsisdnRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mOCSGLPresenceState:I

.field mOperatorNameSource:I

.field mPnnHomeName:Ljava/lang/String;

.field private mSimSmsRecordIndexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSpdiNetworks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSpnDisplayCondition:I

.field mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

.field private mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

.field mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

.field private mValidSPN:Z

.field mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

.field private mloadEFCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "23433"

    aput-object v2, v1, v4

    const-string v2, "20801"

    aput-object v2, v1, v5

    const-string v2, "21403"

    aput-object v2, v1, v6

    const-string v2, "22803"

    aput-object v2, v1, v7

    const-string v2, "26003"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "26803"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "23420"

    aput-object v2, v1, v4

    const-string v2, "27205"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    .line 370
    const-string v0, "^4050[2-4]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    .line 372
    const-string v0, "^4058[0-1]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    .line 374
    const-string v0, "^4058[2-4]|^40593"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "46001"

    aput-object v2, v1, v4

    const-string v2, "46009"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CU_NETWORK_LIST:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "46000"

    aput-object v2, v1, v4

    const-string v2, "46002"

    aput-object v2, v1, v5

    const-string v2, "46007"

    aput-object v2, v1, v6

    const-string v2, "46008"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CMCC_NETWORK_LIST:Ljava/util/ArrayList;

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "46003"

    aput-object v2, v1, v4

    const-string v2, "46011"

    aput-object v2, v1, v5

    const-string v2, "46012"

    aput-object v2, v1, v6

    const-string v2, "20404"

    aput-object v2, v1, v7

    const-string v2, "45404"

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CT_NETWORK_LIST:Ljava/util/ArrayList;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u963f\u91cc\u901a\u4fe1"

    aput-object v2, v1, v4

    const-string v2, "Alibaba"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CU_MVNO_SPN_LIST:Ljava/util/ArrayList;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u963f\u91cc\u901a\u4fe1"

    aput-object v2, v1, v4

    const-string v2, "Alibaba"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CMCC_MVNO_SPN_LIST:Ljava/util/ArrayList;

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u963f\u91cc\u901a\u4fe1"

    aput-object v2, v1, v4

    const-string v2, "Alibaba"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->CT_MVNO_SPN_LIST:Ljava/util/ArrayList;

    .line 502
    const/16 v0, 0x85

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "214035"

    aput-object v1, v0, v4

    const-string v1, "302370"

    aput-object v1, v0, v5

    const-string v1, "302720"

    aput-object v1, v0, v6

    const-string v1, "310260"

    aput-object v1, v0, v7

    const-string v1, "405025"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "405026"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "405027"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "405028"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "405029"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "405030"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "405031"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "405032"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "405033"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "405034"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "405035"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "405036"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "405037"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "405038"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "405039"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "405040"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "405041"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "405042"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "405043"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "405044"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "405045"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "405046"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "405047"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "405750"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "405751"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "405752"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "405753"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "405754"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "405755"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "405756"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "405799"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "405800"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "405801"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "405802"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "405803"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "405804"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "405805"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "405806"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "405807"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "405808"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "405809"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "405810"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "405811"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "405812"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "405813"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "405814"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "405815"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "405816"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "405817"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "405818"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "405819"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "405820"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "405821"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "405822"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "405823"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "405824"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "405825"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "405826"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "405827"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "405828"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "405829"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "405830"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "405831"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "405832"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "405833"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "405834"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "405835"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "405836"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "405837"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "405838"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "405839"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "405840"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "405841"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "405842"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "405843"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "405844"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "405845"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "405846"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "405847"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "405848"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "405849"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "405850"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "405851"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "405852"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "405853"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "405875"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "405876"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "405877"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "405878"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "405879"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "405880"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "405881"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "405882"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "405883"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "405884"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "405885"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "405886"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "405908"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "405909"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "405910"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "405911"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "405912"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "405913"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "405914"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "405915"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "405916"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "405917"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "405918"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "405919"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "405920"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "405921"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "405922"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "405923"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "405924"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "405925"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "405926"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "405927"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "405928"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "405929"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "405930"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "405931"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "405932"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "502142"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "502143"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "502145"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "502146"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "502147"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "502148"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "505029"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 7
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 150
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 151
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 153
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 154
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 155
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 156
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 158
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfLi:[B

    .line 159
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 163
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 165
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 171
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->USIM_OCSGL_NOT_PRESENCE:I

    .line 172
    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->USIM_OCSGL_PRESENCE_EMPTY:I

    .line 173
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->USIM_OCSGL_PRESENCE:I

    .line 174
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    .line 197
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    .line 205
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    .line 218
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 233
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNameSource:I

    .line 237
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    .line 243
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 296
    new-instance v2, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords$SimRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 362
    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->GET_EFIMSI_DONE:I

    .line 363
    iput v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->GET_EFAD_DONE:I

    .line 527
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 529
    new-instance v2, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 530
    new-instance v2, Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/SpnOverride;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 532
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 535
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 537
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x15

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x1f

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 542
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2, p0, v5, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 543
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v3, 0x23

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 547
    const-string v2, "ro.cid"

    const-string v3, "11111111"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "cid":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 550
    const-string v2, "factory2"

    const-string v3, "ro.bootmode"

    const-string v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsMFG:Z

    .line 554
    const-string v2, "1"

    const-string v3, "persist.radio.nel"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNEL:Z

    .line 558
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 559
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords X ctor this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 563
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/SIMRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    return v0
.end method

.method private bcdPlmnToString([BII)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v6, 0x9

    .line 4092
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p3, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4093
    .local v3, "ret":Ljava/lang/StringBuilder;
    const/4 v5, 0x3

    if-ne p3, v5, :cond_1

    .line 4094
    const/16 v1, 0xf

    .line 4095
    .local v1, "endChar":I
    const/4 v0, 0x0

    .line 4096
    .local v0, "counter":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v5, p2, p3

    if-ge v2, v5, :cond_0

    .line 4098
    add-int/lit8 v0, v0, 0x1

    .line 4099
    aget-byte v5, p1, v2

    and-int/lit8 v4, v5, 0xf

    .line 4100
    .local v4, "v":I
    if-le v4, v6, :cond_2

    .line 4112
    .end local v4    # "v":I
    :cond_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_1

    .line 4113
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4116
    .end local v0    # "counter":I
    .end local v1    # "endChar":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 4101
    .restart local v0    # "counter":I
    .restart local v1    # "endChar":I
    .restart local v2    # "i":I
    .restart local v4    # "v":I
    :cond_2
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4103
    aget-byte v5, p1, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 4104
    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    .line 4105
    if-le v4, v6, :cond_3

    .line 4096
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4106
    :cond_3
    move v1, v4

    goto :goto_1

    .line 4108
    :cond_4
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static final cbLpToProperty()Z
    .locals 1

    .prologue
    .line 4015
    const/4 v0, 0x0

    return v0
.end method

.method private static final checkEONSProjects()Z
    .locals 2

    .prologue
    .line 3861
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMNCLength(ILjava/lang/String;Z)I
    .locals 11
    .param p0, "mnclen"    # I
    .param p1, "localimsi"    # Ljava/lang/String;
    .param p2, "isCatchedAD"    # Z

    .prologue
    const/4 v10, 0x6

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 4022
    if-nez p2, :cond_1

    .line 4064
    :cond_0
    :goto_0
    return p0

    .line 4026
    :cond_1
    if-eq p0, v9, :cond_2

    if-eqz p0, :cond_2

    const/4 v7, 0x2

    if-ne p0, v7, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    .line 4028
    invoke-virtual {p1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4029
    .local v6, "mccmncCode":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords;->MCCMNC_CODES_HAVING_3DIGITS_MNC:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    .line 4030
    .local v5, "mccmnc":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4031
    const/4 p0, 0x3

    .line 4039
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "mccmnc":Ljava/lang/String;
    .end local v6    # "mccmncCode":Ljava/lang/String;
    :cond_3
    if-eq p0, v9, :cond_4

    if-nez p0, :cond_0

    .line 4040
    :cond_4
    if-eqz p1, :cond_9

    .line 4043
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternTataDoCoMo:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternAircel:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/internal/telephony/uicc/SIMRecords;->sPatternVideocon:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4046
    :cond_5
    const/4 p0, 0x3

    goto :goto_0

    .line 4029
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "mccmnc":Ljava/lang/String;
    .restart local v6    # "mccmncCode":Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4047
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "mccmnc":Ljava/lang/String;
    .end local v6    # "mccmncCode":Ljava/lang/String;
    :cond_7
    const-string v7, "72234"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4048
    const/4 p0, 0x2

    goto :goto_0

    .line 4050
    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4051
    .local v4, "mcc":I
    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    goto :goto_0

    .line 4054
    .end local v4    # "mcc":I
    :catch_0
    move-exception v1

    .line 4055
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 p0, 0x0

    .line 4056
    const-string v7, "SIMRecords"

    const-string v8, "SIMRecords: Corrupt IMSI!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4060
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 p0, 0x0

    .line 4061
    const-string v7, "SIMRecords"

    const-string v8, "SIMRecords: MNC length not present in EF_AD"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private dispatchGsmMessage(Landroid/telephony/SmsMessage;)I
    .locals 1
    .param p1, "message"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewSmsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 3092
    const/4 v0, 0x0

    return v0
.end method

.method private dropSimPbkEntries(Ljava/lang/String;I)V
    .locals 6
    .param p1, "notifyAction"    # Ljava/lang/String;
    .param p2, "extra"    # I

    .prologue
    .line 4383
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4384
    const-string v4, "dropSimPbkEntries() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4434
    :cond_0
    :goto_0
    return-void

    .line 4389
    :cond_1
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 4391
    .local v3, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 4393
    const-string v4, "dropSimPbkEntries"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4396
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    .line 4399
    .local v2, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->isSIMPBKHandlerType(I)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->isSIMPBKHandlerTypeForPhoneId(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4405
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    .line 4406
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntriesForPhoneId(I)V

    .line 4413
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4416
    .local v1, "notifyIntent":Landroid/content/Intent;
    :goto_3
    if-lez p2, :cond_4

    .line 4417
    const-string v4, "extra"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4420
    :cond_4
    if-eqz v2, :cond_5

    .line 4421
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 4424
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4427
    .end local v1    # "notifyIntent":Landroid/content/Intent;
    .end local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 4396
    .restart local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 4410
    .restart local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_7
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 4429
    .end local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_1
    move-exception v0

    .line 4431
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4413
    .end local v0    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .restart local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_8
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3
.end method

.method private fetchMWIfromUE()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1008
    const-string v1, "fetchMWIfromUE() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1018
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1015
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "mwi_status_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 1017
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 11
    .param p1, "languages"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x2

    .line 3174
    const/4 v0, 0x0

    .line 3175
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v5

    .line 3177
    .local v5, "locales":[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move-object v4, v6

    .line 3196
    :cond_1
    :goto_0
    return-object v4

    .line 3180
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v7, v2, 0x1

    array-length v8, p1

    if-ge v7, v8, :cond_5

    .line 3182
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v7, 0x2

    const-string v8, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 3183
    .local v4, "lang":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "languages from sim = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3184
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_4

    .line 3185
    aget-object v7, v5, v3

    if-eqz v7, :cond_3

    aget-object v7, v5, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_3

    aget-object v7, v5, v3

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 3184
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3190
    :cond_4
    if-eqz v0, :cond_6

    .end local v3    # "j":I
    .end local v4    # "lang":Ljava/lang/String;
    :cond_5
    move-object v4, v6

    .line 3196
    goto :goto_0

    .line 3191
    :catch_0
    move-exception v1

    .line 3192
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse USIM language records"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3180
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private getCSGID([B)I
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 4083
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int v0, v1, v2

    .line 4084
    .local v0, "addr":I
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 4085
    const/4 v1, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 4086
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 4088
    div-int/lit8 v1, v0, 0x20

    return v1
.end method

.method private getCSGPLMN([B)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 4120
    if-eqz p1, :cond_0

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 4123
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->bcdPlmnToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 4126
    .local v0, "plmnCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 4128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCSGPLMN : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4134
    .end local v0    # "plmnCode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4133
    :cond_0
    const-string v1, "getCSGPLMN : data is wrong"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4134
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSavedNetworkSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4355
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4356
    const-string v1, "getSavedNetworkSelection() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4357
    const-string v1, ""

    .line 4363
    :goto_0
    return-object v1

    .line 4362
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4363
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "network_selection_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 5
    .param p1, "start"    # Z
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 3701
    if-eqz p1, :cond_2

    .line 3704
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v1, v2, :cond_1

    .line 3710
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 3798
    :goto_0
    return-void

    .line 3713
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 3717
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$1;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3796
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 3719
    :pswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3721
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f46

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3723
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3725
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_0

    .line 3728
    :pswitch_1
    if-eqz p2, :cond_4

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 3729
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3730
    .local v0, "data":[B
    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 3731
    const/4 v1, 0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spnDisplayCondition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3738
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3739
    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 3745
    .end local v0    # "data":[B
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f14

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3747
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3749
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    .line 3753
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    goto/16 :goto_0

    .line 3757
    :pswitch_2
    if-eqz p2, :cond_6

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    .line 3758
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3759
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3764
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3765
    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3768
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 3770
    .end local v0    # "data":[B
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f18

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3772
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3774
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 3778
    :pswitch_3
    if-eqz p2, :cond_8

    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    .line 3779
    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 3780
    .restart local v0    # "data":[B
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3785
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3786
    const-string v1, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    .end local v0    # "data":[B
    :cond_7
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_0

    .line 3790
    :cond_8
    const-string v1, "No SPN loaded in either CHPS or 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3717
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleCSGData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "csgData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x1

    .line 4205
    const/4 v1, 0x0

    .line 4207
    .local v1, "count":I
    const-string v4, "handleCSGData : Enter"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4209
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4210
    const-string v4, "handleCSGData() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4238
    :goto_0
    return-void

    .line 4213
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 4215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF_OCSGL : List existing and length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4216
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 4217
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4218
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 4219
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 4221
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 4223
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 4224
    .local v3, "record":[B
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->parserTLVRecordOfOCSGL([B)I

    move-result v0

    .line 4225
    .local v0, "CSGID":I
    if-eqz v0, :cond_3

    .line 4226
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4221
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4228
    .end local v0    # "CSGID":I
    .end local v3    # "record":[B
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 4229
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    goto :goto_0

    .line 4231
    :cond_5
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    goto :goto_0

    .line 4235
    .end local v2    # "i":I
    :cond_6
    const-string v4, "EF_OCSGL : List not existing"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4236
    iput v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    goto :goto_0
.end method

.method private handleEfCspData([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 3918
    array-length v7, p1

    div-int/lit8 v4, v7, 0x2

    .line 3920
    .local v4, "usedCspGroups":I
    const/16 v5, -0x40

    .line 3922
    .local v5, "valueAddedServicesGroup":B
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_5

    .line 3924
    mul-int/lit8 v7, v1, 0x2

    aget-byte v7, p1, v7

    if-ne v7, v5, :cond_4

    .line 3925
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CSP] found ValueAddedServicesGroup, value "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3926
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0x80

    const/16 v8, 0x80

    if-ne v7, v8, :cond_1

    .line 3930
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3963
    :cond_0
    :goto_1
    return-void

    .line 3932
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    .line 3935
    const-string v7, "[CSP] Set Automatic Network Selection"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3944
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 3946
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v3, :cond_0

    .line 3947
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->queryManualselectionStatus()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3948
    .local v0, "flag":Z
    :cond_2
    :goto_2
    if-eqz v0, :cond_0

    .line 3949
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSavedNetworkSelection()Ljava/lang/String;

    move-result-object v2

    .line 3950
    .local v2, "networkSelection":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3951
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->clearNetworkSelection()V

    .line 3952
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNetworkSelectionModeAutomaticRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v6}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    .end local v0    # "flag":Z
    .end local v2    # "networkSelection":Ljava/lang/String;
    :cond_3
    move v0, v6

    .line 3947
    goto :goto_2

    .line 3923
    .end local v3    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3962
    :cond_5
    const-string v6, "[CSP] Value Added Service Group (0xC0), not found!"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleFileUpdate(I)V
    .locals 7
    .param p1, "efid"    # I

    .prologue
    const/16 v6, 0x6f4a

    const/16 v5, 0x6f40

    const/16 v4, 0x6f3a

    const/16 v2, 0xa

    const/4 v3, 0x1

    .line 2926
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2927
    const-string v0, "handleFileUpdate() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2999
    :cond_0
    :goto_0
    return-void

    .line 2931
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_2

    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 2990
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isSIMPhonebookFileId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USIM Phonebook file id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2992
    const-string v0, "com.htc.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    goto :goto_0

    .line 2933
    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2934
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6fc7

    const/16 v2, 0x6fc8

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2938
    :sswitch_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2939
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f17

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto :goto_0

    .line 2943
    :sswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2944
    const-string v0, "[CSP] SIM Refresh for EF_CSP_CPHS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2945
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 2949
    :sswitch_3
    const-string v0, "SIM Refresh called for EF_FDN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2950
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFdn()V

    goto/16 :goto_0

    .line 2954
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 2955
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    .line 2959
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_3

    .line 2960
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f4e

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2963
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2969
    :sswitch_6
    const-string v0, "com.htc.intent.action.SIM_FILE_UPDATE"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 2971
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    goto/16 :goto_0

    .line 2994
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_0

    .line 2931
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f15 -> :sswitch_2
        0x6f17 -> :sswitch_1
        0x6f3a -> :sswitch_6
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_5
        0x6fc5 -> :sswitch_4
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleSimChanged()V
    .locals 6

    .prologue
    .line 4304
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4305
    const-string v4, "handleSimChanged() failed due to IccReocrods has been destroyed."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4328
    :goto_0
    return-void

    .line 4310
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4312
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "sim_imsi_key"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4313
    .local v1, "lastIMSI":Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4315
    .local v3, "spEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 4316
    .local v0, "imsiForSp":Ljava/lang/String;
    :goto_1
    const-string v4, "sim_imsi_key"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4317
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4319
    const-string v4, "mwi_status_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4320
    const-string v4, "SIM change"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4321
    const-string v4, "gsm.sim.change"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4327
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 4315
    .end local v0    # "imsiForSp":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 4323
    .restart local v0    # "imsiForSp":Ljava/lang/String;
    :cond_2
    const-string v4, "SIM not change"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4324
    const-string v4, "gsm.sim.change"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3004
    const-string v0, "handleSimRefresh() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3084
    :cond_0
    :goto_0
    return-void

    .line 3009
    :cond_1
    if-nez p1, :cond_2

    .line 3010
    const-string v0, "handleSimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3016
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3023
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    sparse-switch v0, :sswitch_data_0

    .line 3081
    const-string v0, "handleSimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3025
    :sswitch_0
    const-string v0, "handleSimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3026
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 3032
    :sswitch_1
    const-string v0, "handleSimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3035
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 3039
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onIccRefreshInit()V

    .line 3040
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 3043
    :sswitch_2
    const-string v0, "handleSimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3044
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->requirePowerOffOnSimRefreshReset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3046
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "build_phone_feature_stand_by"

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3048
    const-string v0, "handleSimRefresh set power off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 3063
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "build_phone_feature_stand_by"

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3065
    :cond_5
    const-string v0, "handleSimRefresh reset flag"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3066
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3067
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->clearCardSetup(Z)V

    .line 3074
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 3075
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    goto/16 :goto_0

    .line 3023
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleSms(I[B)V
    .locals 8
    .param p1, "nRecordIndex"    # I
    .param p2, "ba"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3099
    aget-byte v3, p2, v6

    if-eqz v3, :cond_0

    .line 3100
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    :cond_0
    aget-byte v3, p2, v6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3105
    array-length v1, p2

    .line 3109
    .local v1, "n":I
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [B

    .line 3110
    .local v2, "pdu":[B
    add-int/lit8 v3, v1, -0x1

    invoke-static {p2, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3111
    const-string v3, "3gpp"

    invoke-static {v2, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 3115
    .local v0, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v0, p1}, Landroid/telephony/SmsMessage;->setIndexOnIcc(I)V

    .line 3116
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v3

    if-ne v7, v3, :cond_2

    .line 3117
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 3123
    .end local v0    # "message":Landroid/telephony/SmsMessage;
    .end local v1    # "n":I
    .end local v2    # "pdu":[B
    :cond_1
    :goto_0
    return-void

    .line 3119
    .restart local v0    # "message":Landroid/telephony/SmsMessage;
    .restart local v1    # "n":I
    .restart local v2    # "pdu":[B
    :cond_2
    const-string v3, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dispatch class 2 SMS because phone type is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSmses(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3128
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3129
    const-string v6, "handleSmses() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3171
    :cond_0
    return-void

    .line 3133
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3135
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3136
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 3138
    .local v0, "ba":[B
    aget-byte v6, v0, v9

    if-eqz v6, :cond_2

    .line 3139
    const-string v6, "ENF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v0, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    :cond_2
    aget-byte v6, v0, v9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 3145
    array-length v4, v0

    .line 3149
    .local v4, "n":I
    add-int/lit8 v6, v4, -0x1

    new-array v5, v6, [B

    .line 3150
    .local v5, "pdu":[B
    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v10, v5, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3151
    const-string v6, "3gpp"

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 3155
    .local v3, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v6

    if-ne v10, v6, :cond_3

    .line 3156
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispatchGsmMessage(Landroid/telephony/SmsMessage;)I

    .line 3163
    :cond_3
    aput-byte v10, v0, v9

    .line 3135
    .end local v3    # "message":Landroid/telephony/SmsMessage;
    .end local v4    # "n":I
    .end local v5    # "pdu":[B
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final imsiMsisdnFromCdma()Z
    .locals 1

    .prologue
    .line 3998
    const/4 v0, 0x0

    return v0
.end method

.method private isCphsMailboxEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3873
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    if-nez v2, :cond_0

    .line 3874
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private isFfBeTreatedAsUnknownCount()Z
    .locals 2

    .prologue
    .line 995
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->isFfBeTreatedAsUnknownCountSku()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VIRGI001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTC__001"

    const-string v1, "ro.cid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    :cond_0
    const/4 v0, 0x1

    .line 999
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isFfBeTreatedAsUnknownCountSku()Z
    .locals 1

    .prologue
    .line 991
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v0

    return v0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 6
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3636
    if-nez p1, :cond_1

    .line 3667
    :cond_0
    :goto_0
    return v3

    .line 3639
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3641
    .local v1, "opNumeric":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "214035"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "21403"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 3644
    goto :goto_0

    .line 3649
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "505029"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "50502"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v3, v4

    .line 3652
    goto :goto_0

    .line 3656
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 3657
    goto :goto_0

    .line 3660
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 3661
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3662
    .local v2, "spdiNet":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v4

    .line 3663
    goto :goto_0
.end method

.method private static final kddiImsiMsisdnFromCdma()Z
    .locals 1

    .prologue
    .line 4002
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->imsiMsisdnFromCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEfLiAndEfPl()V
    .locals 1

    .prologue
    .line 3407
    const-string v0, "skip loadEfLiAndEfPl"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3418
    return-void
.end method

.method private onLocked()V
    .locals 1

    .prologue
    .line 3402
    const-string v0, "only fetch EF_LI and EF_PL in lock state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3403
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 3404
    return-void
.end method

.method private parseEfFplmn([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 4334
    if-eqz p1, :cond_0

    array-length v2, p1

    rem-int/lit8 v2, v2, 0x3

    if-nez v2, :cond_0

    .line 4335
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 4337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 4338
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4340
    .local v1, "plmn":Ljava/lang/StringBuilder;
    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4341
    add-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF_FPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4343
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4337
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 4346
    .end local v0    # "i":I
    .end local v1    # "plmn":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private parseEfSpdi([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x0

    .line 3807
    new-instance v4, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v5, p1

    invoke-direct {v4, p1, v7, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3809
    .local v4, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    const/4 v3, 0x0

    .line 3811
    .local v3, "plmnEntries":[B
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3826
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    array-length v6, v6

    invoke-direct {v1, v5, v7, v6}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 3827
    .local v1, "nestedTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3828
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3829
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3842
    .end local v1    # "nestedTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    :goto_1
    if-nez v3, :cond_4

    .line 3858
    :cond_1
    return-void

    .line 3834
    .restart local v1    # "nestedTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3835
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v3

    .line 3836
    goto :goto_1

    .line 3811
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_0

    .line 3846
    .end local v1    # "nestedTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    div-int/lit8 v6, v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 3848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    add-int/lit8 v5, v0, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 3850
    const/4 v5, 0x3

    invoke-static {v3, v0, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 3853
    .local v2, "plmnCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_5

    .line 3854
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3855
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3848
    :cond_5
    add-int/lit8 v0, v0, 0x3

    goto :goto_2
.end method

.method private parserTLVRecordOfOCSGL([B)I
    .locals 14
    .param p1, "data"    # [B

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 4137
    const/4 v1, 0x0

    .local v1, "CSGID":I
    const/4 v6, 0x0

    .local v6, "parsingTag":I
    const/4 v5, 0x0

    .line 4138
    .local v5, "parsingResult":I
    const/4 v3, 0x0

    .line 4140
    .local v3, "CSGPLMN":Ljava/lang/String;
    if-eqz p1, :cond_0

    array-length v10, p1

    if-le v10, v13, :cond_0

    .line 4142
    add-int/lit8 v6, v6, 0x1

    .line 4143
    aget-byte v10, p1, v12

    const/16 v11, -0x60

    if-ne v10, v11, :cond_0

    .line 4145
    add-int/lit8 v6, v6, 0x1

    .line 4146
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EF_OCSGL : data array "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4147
    aget-byte v9, p1, v13

    .line 4148
    .local v9, "tlvLength":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lenght : TLV = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4150
    const/4 v10, 0x2

    aget-byte v10, p1, v10

    const/16 v11, -0x80

    if-ne v10, v11, :cond_0

    .line 4152
    add-int/lit8 v6, v6, 0x1

    .line 4153
    const/4 v10, 0x3

    aget-byte v4, p1, v10

    .line 4154
    .local v4, "PLMNLength":I
    new-array v8, v4, [B

    .line 4155
    .local v8, "tempPLMN":[B
    const/4 v10, 0x4

    invoke-static {p1, v10, v8, v12, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4156
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->getCSGPLMN([B)Ljava/lang/String;

    move-result-object v3

    .line 4158
    add-int/lit8 v10, v4, 0x4

    aget-byte v10, p1, v10

    const/16 v11, -0x7f

    if-ne v10, v11, :cond_0

    .line 4160
    add-int/lit8 v6, v6, 0x1

    .line 4161
    add-int/lit8 v10, v4, 0x5

    aget-byte v2, p1, v10

    .line 4162
    .local v2, "CSGIDLength":I
    add-int/lit8 v10, v2, -0x2

    new-array v7, v10, [B

    .line 4164
    .local v7, "tempData":[B
    add-int/lit8 v10, v4, 0x6

    add-int/lit8 v10, v10, 0x2

    add-int/lit8 v11, v2, -0x2

    invoke-static {p1, v10, v7, v12, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 4165
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getCSGID([B)I

    move-result v1

    .line 4166
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSG ID =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4167
    add-int v10, v4, v2

    add-int/lit8 v10, v10, 0x4

    if-le v9, v10, :cond_2

    .line 4169
    add-int/lit8 v10, v4, 0x6

    add-int/2addr v10, v2

    aget-byte v10, p1, v10

    const/16 v11, -0x7e

    if-ne v10, v11, :cond_0

    .line 4171
    add-int/lit8 v6, v6, 0x1

    .line 4172
    add-int/lit8 v10, v4, 0x7

    add-int/2addr v10, v2

    aget-byte v0, p1, v10

    .line 4173
    .local v0, "CSGDisplayLength":I
    add-int v10, v4, v2

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x6

    if-lt v9, v10, :cond_0

    .line 4175
    add-int/lit8 v6, v6, 0x1

    .line 4176
    const/4 v5, 0x1

    .line 4177
    const-string v10, "Parsing Finish"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4178
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lenght : PLMN = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " CSGID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " CSGDisplay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4192
    .end local v0    # "CSGDisplayLength":I
    .end local v2    # "CSGIDLength":I
    .end local v4    # "PLMNLength":I
    .end local v7    # "tempData":[B
    .end local v8    # "tempPLMN":[B
    .end local v9    # "tlvLength":I
    :cond_0
    :goto_0
    if-nez v5, :cond_3

    .line 4193
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parserTLVRecordOfOCSGL(): Error with parsingTag is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4200
    :cond_1
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CSGID = (int) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", PLMN = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4201
    return v1

    .line 4182
    .restart local v2    # "CSGIDLength":I
    .restart local v4    # "PLMNLength":I
    .restart local v7    # "tempData":[B
    .restart local v8    # "tempPLMN":[B
    .restart local v9    # "tlvLength":I
    :cond_2
    add-int v10, v4, v2

    add-int/lit8 v10, v10, 0x4

    if-ne v9, v10, :cond_0

    .line 4184
    const/4 v5, 0x1

    .line 4185
    const-string v10, "Parsing Finish : No CSG Display Indicator"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Lenght : PLMN = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " CSGID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4196
    .end local v2    # "CSGIDLength":I
    .end local v4    # "PLMNLength":I
    .end local v7    # "tempData":[B
    .end local v8    # "tempPLMN":[B
    .end local v9    # "tlvLength":I
    :cond_3
    if-eqz v1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 4197
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private processLteAutoSwitch()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 4549
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4550
    const-string v6, "processLteAutoSwitch() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4585
    :cond_0
    :goto_0
    return-void

    .line 4562
    :cond_1
    const-string v6, "ro.cid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4563
    .local v1, "cid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ro.telephony.bl."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4564
    .local v0, "blackList":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4565
    const-string v6, "ro.telephony.bl"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4567
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4568
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4569
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLteBlackList:Ljava/lang/String;

    .line 4571
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 4573
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "sim_plmn_key"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4574
    .local v3, "lastSimPlmn":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 4576
    .local v2, "currentSimPlmn":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4578
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0xd6

    invoke-virtual {p0, v7, v8, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 4579
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 4580
    .local v5, "spEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "sim_plmn_key"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4581
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static final removeCCFCAfterPowerOn()Z
    .locals 2

    .prologue
    .line 1366
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetCSGLocalData()V
    .locals 1

    .prologue
    .line 4073
    const-string v0, "resetCSGLocalData()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4075
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    .line 4076
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4080
    :cond_1
    return-void
.end method

.method private setLocaleFromUsim()V
    .locals 1

    .prologue
    .line 3200
    const-string v0, "skip setLocaleFromUsim"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3222
    return-void
.end method

.method private setSpnFromConfig(Ljava/lang/String;)V
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 3344
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->containsCarrier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3345
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/SpnOverride;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    .line 3346
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3348
    :cond_0
    return-void
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 3991
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3992
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3994
    :cond_0
    return-void
.end method

.method private setVoiceMailByCountry(Ljava/lang/String;)V
    .locals 7
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 3353
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-nez v4, :cond_1

    .line 3354
    const-string v4, "SIMRecords"

    const-string v5, "setVoiceMailByCountry() mVmConfig is null"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    :cond_0
    :goto_0
    return-void

    .line 3366
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3367
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3368
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 3369
    .local v2, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkImsiChangedForVoiceMail()Z

    move-result v0

    .line 3370
    .local v0, "changed":Z
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPreferenceVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 3371
    .local v1, "number":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 3372
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3373
    const-string v4, "voiceMailNum is empty!! try to search default value from property/xml!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3374
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3375
    .local v3, "vmNumber":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3376
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 3377
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3378
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->containsCarrier(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3379
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 3383
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3386
    .end local v3    # "vmNumber":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    goto :goto_0

    .line 3389
    :cond_4
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateMWItoUE()V
    .locals 4

    .prologue
    .line 1022
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    const-string v2, "updateMWItoUE() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1033
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1030
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1031
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mwi_status_key"

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1032
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateMsisdnInfo()V
    .locals 1

    .prologue
    .line 4535
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_MSISDN(Ljava/lang/String;)V

    .line 4541
    const-string v0, "msisdn = xxxxxxxxxx"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4543
    return-void
.end method

.method private updateUplmnSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 4606
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4607
    const-string v2, "updateUplmnSize() failed due to SIMRecords has been destroyed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4614
    :goto_0
    return-void

    .line 4610
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4611
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 4612
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sim_plmnwact_size_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4613
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private static final use6F11insteadof6FCA()Z
    .locals 2

    .prologue
    .line 4007
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validEfCfis([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1040
    if-eqz p1, :cond_0

    aget-byte v2, p1, v1

    if-lt v2, v0, :cond_0

    aget-byte v2, p1, v1

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static final voicemailAlphaFromSIM()Z
    .locals 2

    .prologue
    .line 902
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkcallForwardingStatus()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4445
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 4495
    :goto_0
    return-void

    .line 4449
    :cond_0
    const/4 v0, 0x0

    .line 4451
    .local v0, "cphspreferred":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4452
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 4453
    .local v2, "ss":Landroid/telephony/ServiceState;
    if-eqz v2, :cond_1

    .line 4454
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4456
    .local v1, "operator":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 4457
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4458
    const/4 v0, 0x1

    .line 4464
    .end local v1    # "operator":Ljava/lang/String;
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    :cond_1
    if-ne v0, v4, :cond_9

    .line 4465
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v5, :cond_5

    .line 4466
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v5, v5, v3

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v6, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 4494
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 4454
    .restart local v2    # "ss":Landroid/telephony/ServiceState;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4468
    .end local v2    # "ss":Landroid/telephony/ServiceState;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v5, :cond_8

    .line 4470
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v5, v4

    :goto_3
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 4471
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4472
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_2

    :cond_7
    move v5, v3

    .line 4470
    goto :goto_3

    .line 4475
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_2

    .line 4479
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v5, :cond_c

    .line 4481
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    move v5, v4

    :goto_4
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 4482
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4483
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v5, v5, v4

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_a

    move v3, v4

    :cond_a
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_2

    :cond_b
    move v5, v3

    .line 4481
    goto :goto_4

    .line 4486
    :cond_c
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v5, :cond_e

    .line 4487
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    aget-byte v5, v5, v3

    and-int/lit8 v5, v5, 0xf

    if-ne v5, v6, :cond_d

    move v3, v4

    :cond_d
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    goto :goto_2

    .line 4489
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->queryCFUIfNecessary()V

    goto :goto_2
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing SIMRecords this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 576
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 577
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 578
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 582
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 586
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 2

    .prologue
    .line 4370
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->dropSimPbkEntries(Ljava/lang/String;I)V

    .line 4371
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIMRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3968
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3969
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnOverride:Lcom/android/internal/telephony/uicc/SpnOverride;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCallForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfMWIS[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCPHS_MWI[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCff[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEfCfis[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSpdiNetworks[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPnnHomeName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUsimServiceTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGid1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3986
    return-void
.end method

.method protected fetchSimRecords()V
    .locals 8

    .prologue
    const/16 v7, 0x6f40

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3423
    const-string v0, "fetchSimRecords() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3574
    :goto_0
    return-void

    .line 3429
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    .line 3432
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 3435
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3441
    const-string v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3442
    const-string v0, "mSimulator = false"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3443
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    .line 3448
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f60

    const/16 v2, 0xda

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3449
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3453
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f62

    const/16 v2, 0xd1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3454
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3457
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 3458
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3460
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3461
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3468
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_3

    .line 3469
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f4e

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 3475
    :goto_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3478
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f7b    # 3.9992E-41f

    const/16 v2, 0xcc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3479
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3483
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 3484
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 3485
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 3489
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc9

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3490
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3492
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fad

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3493
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3496
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3497
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3504
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3507
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3511
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3512
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3513
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3514
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3517
    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    .line 3519
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcd

    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3520
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3522
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fc5

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 3523
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3525
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f38

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3526
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3528
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f16

    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3529
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3531
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f15

    const/16 v2, 0x21

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3532
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3538
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loadEfLiAndEfPl()V

    .line 3546
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f45

    const/16 v2, 0xd2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3547
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3550
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f50

    const/16 v2, 0xd5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3551
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3568
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    if-eqz v0, :cond_2

    .line 3569
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f07

    const/16 v2, 0xe1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 3570
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3573
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchSimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3472
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f4a

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 590
    const-string v0, "finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public getCSGIDList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCSGIDList() : CSG ID Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4250
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGIDList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCSGPLMNList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCSGPLMNList() : CSG PLMN Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->CSGPLMNList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDataCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1091
    const-string v2, "getDataCallForwardingStatus() return false due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1101
    :cond_0
    :goto_0
    return v1

    .line 1096
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 1098
    .local v0, "enabled":Z
    :goto_1
    if-nez v0, :cond_0

    .line 1101
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v1

    .line 1096
    goto :goto_1
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 5
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 3589
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    if-nez v3, :cond_1

    .line 3590
    const/4 v2, 0x2

    .line 3629
    :cond_0
    :goto_0
    return v2

    .line 3593
    :cond_1
    const/4 v1, 0x0

    .line 3594
    .local v1, "isH3GSIM":Z
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->H3G_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3595
    const/4 v1, 0x1

    .line 3598
    :cond_2
    const/4 v0, 0x0

    .line 3599
    .local v0, "CheckingEONS":Z
    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkEONSProjects()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3601
    :cond_3
    const/4 v0, 0x1

    .line 3605
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3608
    const/4 v2, 0x2

    .local v2, "rule":I
    goto :goto_0

    .line 3612
    .end local v2    # "rule":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNameSource:I

    if-nez v3, :cond_7

    .line 3615
    :cond_6
    const/4 v2, 0x2

    .restart local v2    # "rule":I
    goto :goto_0

    .line 3616
    .end local v2    # "rule":I
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3617
    const/4 v2, 0x1

    .line 3618
    .restart local v2    # "rule":I
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3620
    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 3623
    .end local v2    # "rule":I
    :cond_8
    const/4 v2, 0x2

    .line 3624
    .restart local v2    # "rule":I
    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 3626
    or-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getGid1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    return-object v0
.end method

.method public getGsmIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4619
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGsmImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMsisdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getO2SIMCardType()I
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4517
    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v0, v1

    .line 4518
    .local v0, "isValid":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23410"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v2

    .line 4523
    :cond_1
    :goto_1
    return v1

    .end local v0    # "isValid":Z
    :cond_2
    move v0, v2

    .line 4517
    goto :goto_0

    .line 4520
    .restart local v0    # "isValid":Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    if-eqz v4, :cond_4

    .line 4521
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    aget-byte v2, v4, v2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    .line 4523
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getFdnEnabledStatus()Z

    move-result v2

    if-ne v2, v1, :cond_5

    :goto_2
    move v1, v3

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_2
.end method

.method public getOCSGLState()I
    .locals 2

    .prologue
    .line 4241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOCSGLState() : USIM OCSGL state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 4243
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOCSGLPresenceState:I

    return v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1472
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1473
    const-string v1, "getOperatorNumeric: IMSI == null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1483
    :goto_0
    return-object v0

    .line 1476
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-nez v1, :cond_2

    .line 1477
    :cond_1
    const-string v1, "getSIMOperatorNumeric: bad mncLength"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1483
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    return-object v0
.end method

.method public getVoiceCallForwardingFlag()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1049
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1050
    const-string v2, "getVoiceCallForwardingFlag() return false due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1063
    :cond_0
    :goto_0
    return v1

    .line 1057
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    .line 1059
    .local v0, "enabled":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1060
    const-string v2, "getVoiceCallForwardingFlag return false due to airplanemode"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v1

    .line 1057
    goto :goto_1

    .line 1063
    .restart local v0    # "enabled":Z
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    goto :goto_0
.end method

.method public getVoiceCallForwardingStatus()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1073
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1074
    const-string v2, "getVoiceCallForwardingStatus() return false due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1084
    :cond_0
    :goto_0
    return v1

    .line 1079
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 1081
    .local v0, "enabled":Z
    :goto_1
    if-nez v0, :cond_0

    .line 1084
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v1

    .line 1079
    goto :goto_1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 877
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    const-string v1, "getVoiceMailAlphaTag() return null due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 879
    const/4 v0, 0x0

    .line 895
    :cond_0
    :goto_0
    return-object v0

    .line 886
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 889
    .local v0, "aplhaTag":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->voicemailAlphaFromSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 53
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1494
    const/16 v26, 0x0

    .line 1500
    .local v26, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " while being destroyed. Ignoring."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2900
    :cond_0
    :goto_0
    return-void

    .line 1506
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2889
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2896
    :cond_2
    :goto_1
    if-eqz v26, :cond_0

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 1508
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2891
    :catch_0
    move-exception v17

    .line 2893
    .local v17, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v2, "Exception parsing SIM record"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2896
    if-eqz v26, :cond_0

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto :goto_0

    .line 1512
    .end local v17    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onLocked()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2896
    :catchall_0
    move-exception v2

    if-eqz v26, :cond_3

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    :cond_3
    throw v2

    .line 1517
    :sswitch_2
    const/16 v26, 0x1

    .line 1520
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    or-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    .line 1523
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1525
    .local v11, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v2, v4, :cond_4

    .line 1526
    const-string v2, "Querying IMSI done, but ParentApp is not ready state."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1531
    :cond_4
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception querying IMSI, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1536
    :cond_5
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x6

    if-lt v2, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0xf

    if-le v2, v4, :cond_7

    .line 1541
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid IMSI "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 1542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 1548
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1549
    const-string v2, "SIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid IMSI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 1554
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/HtcIsimData;->SetGSM_IMSI(Ljava/lang/String;)V

    .line 1559
    const-string v2, "IMSI: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1590
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_2
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    .line 1594
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    .line 1595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1598
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1606
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 1608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 1610
    .local v39, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_b

    .line 1611
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 1613
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1615
    const/16 v26, 0x0

    .line 1618
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1629
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimChanged()V

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const-string v4, "45207"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1634
    const-string v2, "ignore EF_SPN per request, EF_IMSI"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 1590
    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1644
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    const/16 v26, 0x1

    .line 1646
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1647
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1649
    .local v16, "data":[B
    const/16 v28, 0x0

    .line 1650
    .local v28, "isValidMbdn":Z
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_f

    .line 1652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MBI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1655
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 1663
    const/16 v28, 0x1

    .line 1668
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1670
    if-eqz v28, :cond_11

    .line 1675
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-lez v2, :cond_10

    .line 1676
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1679
    :cond_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 1680
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6fc7

    const/16 v5, 0x6fc8

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1686
    :cond_11
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1698
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v28    # "isValidMbdn":Z
    :sswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1699
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1700
    const/16 v26, 0x1

    .line 1702
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1704
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_13

    .line 1706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or missing EF"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_12

    const-string v2, "[MAILBOX]"

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1712
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 1717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    .line 1720
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1721
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1706
    :cond_12
    const-string v2, "[MBDN]"

    goto :goto_3

    .line 1728
    :cond_13
    iget-object v3, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1730
    .local v3, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v2, v5, :cond_14

    const-string v2, " EF[MAILBOX]"

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1733
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_15

    .line 1737
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1738
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 1743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 1744
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/16 v7, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    goto/16 :goto_1

    .line 1730
    :cond_14
    const-string v2, " EF[MBDN]"

    goto :goto_4

    .line 1751
    :cond_15
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 1752
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    goto/16 :goto_1

    .line 1758
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_5
    const/16 v26, 0x1

    .line 1760
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1763
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1764
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 1765
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateMsisdnInfo()V

    .line 1768
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    .line 1769
    const-string v2, "Invalid or missing EF[MSISDN]"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1779
    :cond_16
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    .line 1781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1782
    const/4 v10, 0x0

    .line 1784
    .local v10, "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v20, 0x0

    .local v20, "i":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v42

    .local v42, "s":I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v42

    if-ge v0, v1, :cond_17

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1787
    .restart local v10    # "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 1788
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1789
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 1796
    .end local v10    # "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v20    # "i":I
    .end local v42    # "s":I
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateMsisdnInfo()V

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 1800
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msisdnTag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1804
    :cond_18
    const-string v2, "MSISDN: xxxxxxx"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1784
    .restart local v10    # "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v20    # "i":I
    .restart local v42    # "s":I
    :cond_19
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1807
    .end local v10    # "adn_msisdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "i":I
    .end local v42    # "s":I
    :sswitch_6
    const/16 v26, 0x0

    .line 1808
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1810
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_1a

    .line 1811
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1813
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1817
    :cond_1a
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 1821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTagTemp:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTag:Ljava/lang/String;

    .line 1823
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTemp:Ljava/lang/String;

    .line 1824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTagTemp:Ljava/lang/String;

    .line 1828
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateMsisdnInfo()V

    goto/16 :goto_1

    .line 1834
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    const/16 v26, 0x1

    .line 1836
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1837
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1839
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_MWIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1845
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 1847
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0xff

    if-ne v2, v4, :cond_1b

    .line 1848
    const-string v2, "Uninitialized record MWIS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1853
    :cond_1b
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1d

    const/16 v52, 0x1

    .line 1854
    .local v52, "voiceMailWaiting":Z
    :goto_6
    const/4 v2, 0x1

    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 1862
    if-eqz v52, :cond_1c

    .line 1863
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1864
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    const/16 v4, 0xff

    if-ne v2, v4, :cond_1c

    .line 1865
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 1873
    :cond_1c
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1853
    .end local v52    # "voiceMailWaiting":Z
    :cond_1d
    const/16 v52, 0x0

    goto :goto_6

    .line 1867
    .restart local v52    # "voiceMailWaiting":Z
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    if-nez v2, :cond_1c

    .line 1868
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    goto :goto_7

    .line 1877
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v52    # "voiceMailWaiting":Z
    :sswitch_8
    const/16 v26, 0x1

    .line 1879
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1880
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1882
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1886
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 1892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_1f

    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->use6F11insteadof6FCA()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1894
    :cond_1f
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit8 v25, v2, 0xf

    .line 1897
    .local v25, "indicator":I
    const/16 v2, 0xa

    move/from16 v0, v25

    if-ne v0, v2, :cond_21

    .line 1899
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 1904
    :cond_20
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1900
    :cond_21
    const/4 v2, 0x5

    move/from16 v0, v25

    if-ne v0, v2, :cond_20

    .line 1901
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    goto :goto_8

    .line 1909
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v25    # "indicator":I
    :sswitch_9
    const/16 v26, 0x1

    .line 1911
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1912
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1914
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 1920
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isChinaRegion()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToStringwithChar([BII)Ljava/lang/String;

    move-result-object v2

    :goto_9
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccidwithchar:Ljava/lang/String;

    .line 1927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccidwithchar: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccidwithchar:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1920
    :cond_22
    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto :goto_9

    .line 1934
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_a
    const/16 v26, 0x1

    .line 1936
    :try_start_5
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1937
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 1940
    .restart local v16    # "data":[B
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    .line 1943
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_27

    .line 2003
    :try_start_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_26

    const/4 v2, 0x1

    :goto_a
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_23

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_23

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2021
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2024
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_24

    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_24

    .line 2025
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 2029
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2031
    const/16 v26, 0x0

    .line 2035
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 2003
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1947
    :cond_27
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_AD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1949
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x3

    if-ge v2, v4, :cond_2c

    .line 1950
    const-string v2, "Corrupt AD data on SIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2003
    :try_start_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2b

    const/4 v2, 0x1

    :goto_b
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_28

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_28

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2021
    :cond_28
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2024
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_29

    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_29

    .line 2025
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 2029
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2031
    const/16 v26, 0x0

    .line 2035
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2003
    :cond_2b
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1955
    :cond_2c
    const/4 v2, 0x0

    :try_start_9
    aget-byte v2, v16, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    .line 1958
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_32

    .line 1959
    const-string v2, "MNC length not present in EF_AD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2003
    :try_start_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_31

    const/4 v2, 0x1

    :goto_d
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_2d

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_2d

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2021
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2024
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_2e

    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_2e

    .line 2025
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 2029
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2031
    const/16 v26, 0x0

    .line 2035
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 1955
    :cond_30
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 2003
    :cond_31
    const/4 v2, 0x0

    goto/16 :goto_d

    .line 1963
    :cond_32
    const/4 v2, 0x3

    :try_start_b
    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0xf

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting4 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1966
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    const/16 v4, 0xf

    if-ne v2, v4, :cond_33

    .line 1967
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 1968
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting5 mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2003
    :cond_33
    :try_start_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_37

    const/4 v2, 0x1

    :goto_e
    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMSI: mMncLength="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v2, :cond_34

    .line 2010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update mccmnc="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_34

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v2

    if-nez v2, :cond_34

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2021
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2024
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_35

    move-object/from16 v0, v39

    instance-of v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v2, :cond_35

    .line 2025
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 2029
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    const-string v4, "23410"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f02

    const/16 v5, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2031
    const/16 v26, 0x0

    .line 2035
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    .line 2003
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_e

    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_3c

    const/4 v4, 0x1

    :goto_f
    invoke-static {v5, v6, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkMNCLength(ILjava/lang/String;Z)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 2004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI: mMncLength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    if-eqz v4, :cond_38

    .line 2010
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update mccmnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2013
    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v5

    if-ne v4, v5, :cond_38

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v4

    if-nez v4, :cond_38

    .line 2014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2021
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mloadEFCount:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3b

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2024
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v39, :cond_39

    move-object/from16 v0, v39

    instance-of v4, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_39

    .line 2025
    check-cast v39, Lcom/android/internal/telephony/gsm/GSMPhone;

    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->approval:Z

    move-object/from16 v0, v39

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->setTestIcc(Ljava/lang/String;Z)V

    .line 2029
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    const-string v5, "23410"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0x6f02

    const/16 v6, 0xcf

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2031
    const/16 v26, 0x0

    .line 2035
    :cond_3a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2037
    :cond_3b
    throw v2

    .line 2003
    :cond_3c
    const/4 v4, 0x0

    goto/16 :goto_f

    .line 2043
    :sswitch_b
    const/16 v26, 0x1

    .line 2044
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2045
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/internal/telephony/uicc/SIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 2049
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    const/16 v26, 0x1

    .line 2051
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2052
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2054
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2058
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFF_CPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2059
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 2062
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    goto/16 :goto_1

    .line 2079
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_d
    const/16 v26, 0x1

    .line 2081
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2082
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2084
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2088
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_1

    .line 2093
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_e
    const/16 v26, 0x1

    .line 2095
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2096
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2098
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2101
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->parseEfFplmn([B)V

    goto/16 :goto_1

    .line 2106
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2107
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 2108
    const-string v2, "update failed. "

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2113
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    const/16 v26, 0x1

    .line 2115
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2116
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2118
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2122
    new-instance v48, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 2124
    .local v48, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :goto_10
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2125
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_3d

    .line 2126
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 2124
    :cond_3d
    invoke-virtual/range {v48 .. v48}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_10

    .line 2135
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v48    # "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :sswitch_11
    const/16 v26, 0x1

    .line 2137
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2138
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2141
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSmses(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2145
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_12
    const-string v2, "ENF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "marked read: sms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2150
    :sswitch_13
    const/16 v26, 0x0

    .line 2152
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2154
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v24, v0

    .line 2156
    .local v24, "index":[I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3e

    move-object/from16 v0, v24

    array-length v2, v0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3f

    .line 2157
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on SMS_ON_SIM with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " length "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2162
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    aget v5, v24, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "READ EF_SMS RECORD index="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v24, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f3c

    const/4 v5, 0x0

    aget v5, v24, v5

    const/16 v6, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_1

    .line 2173
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "index":[I
    :sswitch_14
    const/16 v26, 0x0

    .line 2174
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2175
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_41

    .line 2178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_40

    .line 2179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSimSmsRecordIndexes:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2181
    :cond_40
    const/4 v4, -0x1

    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSms(I[B)V

    goto/16 :goto_1

    .line 2184
    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on GET_SMS with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2188
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const/16 v26, 0x1

    .line 2190
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2191
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2193
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_42

    .line 2195
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2202
    :cond_42
    if-eqz v16, :cond_50

    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_50

    .line 2203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_SST: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    if-eqz v2, :cond_4b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v4, :cond_4b

    .line 2207
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v4, 0xb

    if-lt v2, v4, :cond_43

    .line 2208
    const/16 v2, 0xa

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_45

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEPSMMI:Z

    .line 2212
    :cond_43
    new-instance v2, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 2213
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_46

    const/4 v2, 0x1

    :goto_12
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsFdnEnabled:Z

    .line 2214
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_48

    .line 2216
    const/4 v2, 0x2

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_47

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    .line 2218
    const/4 v2, 0x2

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_44

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f3e

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2220
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2228
    :cond_44
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_OCSGL : data.length = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2229
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v4, 0xc

    if-lt v2, v4, :cond_4a

    .line 2230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_OCSGL :  data[11] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0xb

    aget-byte v4, v16, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2231
    const/16 v2, 0xb

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_49

    .line 2232
    const-string v2, "EF_OCSGL :  service enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2233
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x4f84

    const/16 v5, 0xd4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 2234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2268
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const-string v4, "45207"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2270
    const-string v2, "ignore EF_SPN per request, EF_SST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2271
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_1

    .line 2208
    :cond_45
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 2213
    :cond_46
    const/4 v2, 0x0

    goto/16 :goto_12

    .line 2216
    :cond_47
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 2224
    :cond_48
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_14

    .line 2237
    :cond_49
    const-string v2, "EF_OCSGL :  service not enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2238
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetCSGLocalData()V

    goto :goto_15

    .line 2241
    :cond_4a
    const-string v2, "EF_OCSGL :  service not enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetCSGLocalData()V

    goto :goto_15

    .line 2246
    :cond_4b
    const/4 v2, 0x0

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x30

    if-ne v2, v4, :cond_4d

    const/4 v2, 0x1

    :goto_16
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsFdnEnabled:Z

    .line 2247
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x4

    if-lt v2, v4, :cond_4c

    .line 2248
    const/4 v2, 0x3

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x30

    const/16 v4, 0x30

    if-ne v2, v4, :cond_4c

    .line 2249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v4, 0x6f3e

    const/16 v5, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2250
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 2254
    :cond_4c
    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_4f

    .line 2255
    const/4 v2, 0x4

    aget-byte v2, v16, v2

    and-int/lit8 v2, v2, 0x3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4e

    const/4 v2, 0x1

    :goto_17
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_15

    .line 2246
    :cond_4d
    const/4 v2, 0x0

    goto :goto_16

    .line 2255
    :cond_4e
    const/4 v2, 0x0

    goto :goto_17

    .line 2257
    :cond_4f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    goto/16 :goto_15

    .line 2263
    :cond_50
    const-string v2, "Empty EF_SST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 2278
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_16
    const/16 v26, 0x1

    .line 2280
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2282
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2286
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    .line 2288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iCPHS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2292
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    const/16 v26, 0x0

    .line 2293
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2295
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SET_MBDN_DONE ex:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2296
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_51

    .line 2297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2301
    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2302
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    .restart local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Landroid/os/Message;

    .line 2312
    .local v38, "onCphsCompleted":Landroid/os/Message;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_52

    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_52

    .line 2313
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2315
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2317
    const-string v2, "Callback with MBDN successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2319
    const/16 v38, 0x0

    .line 2322
    :cond_52
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v4, 0x6f17

    const/16 v5, 0x6f4a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x19

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2327
    .end local v3    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v38    # "onCphsCompleted":Landroid/os/Message;
    :cond_53
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2328
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v40

    .line 2329
    .local v40, "resource":Landroid/content/res/Resources;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_54

    const v2, 0x1120078

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2333
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v4, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v5, "Update SIM voice mailbox error"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2340
    :goto_18
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2337
    :cond_54
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    goto :goto_18

    .line 2345
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v40    # "resource":Landroid/content/res/Resources;
    :sswitch_18
    const/16 v26, 0x0

    .line 2346
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2347
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_55

    .line 2348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 2349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    .line 2354
    :goto_19
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2355
    const-string v2, "Callback with CPHS MB successful."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2356
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2358
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2351
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CPHS MailBox with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_19

    .line 2362
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_19
    const/16 v26, 0x0

    .line 2363
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2364
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sim REFRESH with exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2365
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2366
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 2370
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_1a
    const/16 v26, 0x1

    .line 2372
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2373
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2375
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2380
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    .line 2383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CFIS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2387
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    goto/16 :goto_1

    .line 2403
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_1b
    const/16 v26, 0x1

    .line 2405
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2407
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_56

    .line 2408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching EF_CSP data "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2412
    :cond_56
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2414
    .restart local v16    # "data":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CSP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2415
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleEfCspData([B)V

    goto/16 :goto_1

    .line 2419
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_1c
    const-string v2, "EVENT_GET_GID1_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2420
    const/16 v26, 0x1

    .line 2422
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2423
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2425
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_57

    .line 2426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in get GID1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 2427
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto/16 :goto_1

    .line 2430
    :cond_57
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 2431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2441
    const/16 v19, 0x0

    .local v19, "gidindex":I
    :goto_1a
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v19

    if-ge v0, v2, :cond_58

    .line 2442
    aget-byte v2, v16, v19

    const/4 v4, -0x1

    if-ne v2, v4, :cond_59

    .line 2447
    :cond_58
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 2449
    .local v18, "gid":Ljava/lang/String;
    if-nez v19, :cond_5a

    .line 2450
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 2454
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GID1: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2441
    .end local v18    # "gid":Ljava/lang/String;
    :cond_59
    add-int/lit8 v19, v19, 0x1

    goto :goto_1a

    .line 2452
    .restart local v18    # "gid":Ljava/lang/String;
    :cond_5a
    const/4 v2, 0x0

    mul-int/lit8 v4, v19, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    goto :goto_1b

    .line 2461
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v18    # "gid":Ljava/lang/String;
    .end local v19    # "gidindex":I
    :sswitch_1d
    const-string v2, "Delay CFU Query..."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2462
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2465
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    const/4 v2, 0x0

    const/16 v4, 0xce

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2468
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    .line 2471
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2472
    const/4 v2, 0x0

    const/16 v4, 0xce

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->getDataCallForwardingOption(ILandroid/os/Message;)V

    .line 2475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    goto/16 :goto_1

    .line 2484
    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_GET_CFU_DONE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2485
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    .line 2486
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCfuCounter:I

    if-nez v2, :cond_2

    .line 2487
    sget-object v2, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    goto/16 :goto_1

    .line 2494
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2495
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2498
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/internal/telephony/RILConstants$SimTypes;

    .line 2499
    .local v44, "simTypes":Lcom/android/internal/telephony/RILConstants$SimTypes;
    const-string v2, "gsm.sim.types"

    invoke-virtual/range {v44 .. v44}, Lcom/android/internal/telephony/RILConstants$SimTypes;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2505
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v44    # "simTypes":Lcom/android/internal/telephony/RILConstants$SimTypes;
    :sswitch_20
    const/16 v26, 0x1

    .line 2506
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2508
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEUTRAN_excpetion:Z

    .line 2509
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5d

    .line 2510
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2511
    .restart local v16    # "data":[B
    if-eqz v16, :cond_5c

    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_5c

    move-object/from16 v0, v16

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_5c

    .line 2513
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEUTRAN:Z

    .line 2514
    const/16 v29, 0x1

    .local v29, "j":I
    :goto_1c
    move-object/from16 v0, v16

    array-length v2, v0

    div-int/lit8 v2, v2, 0x5

    move/from16 v0, v29

    if-gt v0, v2, :cond_2

    .line 2515
    mul-int/lit8 v2, v29, 0x5

    add-int/lit8 v43, v2, -0x2

    .line 2516
    .local v43, "searchbyte":I
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v43

    if-ge v0, v2, :cond_5b

    .line 2517
    aget-byte v2, v16, v43

    const/16 v4, 0xff

    if-eq v2, v4, :cond_5b

    aget-byte v2, v16, v43

    and-int/lit8 v2, v2, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_5b

    .line 2518
    const-string v2, "access technology selected"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2519
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEUTRAN:Z

    goto/16 :goto_1

    .line 2514
    :cond_5b
    add-int/lit8 v29, v29, 0x1

    goto :goto_1c

    .line 2525
    .end local v29    # "j":I
    .end local v43    # "searchbyte":I
    :cond_5c
    const-string v2, "SIMRecords"

    const-string v4, "length of EF_HPLMNwAcT is incorrect"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2528
    .end local v16    # "data":[B
    :cond_5d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEUTRAN_excpetion:Z

    .line 2529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET EF_HPLMNwAcT, Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2536
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_21
    const-string v2, "EVENT_GET_O2_PERSO_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2537
    const/16 v26, 0x1

    .line 2538
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2539
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2541
    .restart local v16    # "data":[B
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    .line 2542
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 2546
    if-eqz v16, :cond_2

    move-object/from16 v0, v16

    array-length v2, v0

    if-lez v2, :cond_2

    .line 2547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_O2_PERSO: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2548
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    goto/16 :goto_1

    .line 2555
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2556
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_64

    .line 2557
    const/16 v23, 0x0

    .line 2558
    .local v23, "inBlackList":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLteBlackList:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    .line 2560
    .local v15, "currentSimPlmn":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mLteBlackList:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v31, v0

    .local v31, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_1d
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_5e

    aget-object v34, v12, v21

    .line 2562
    .local v34, "matchingPlmn":Ljava/lang/String;
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2563
    const/16 v23, 0x1

    .line 2568
    .end local v34    # "matchingPlmn":Ljava/lang/String;
    :cond_5e
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v4, 0x0

    aget v36, v2, v4

    .line 2570
    .local v36, "modemNetworkMode":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_61

    const/16 v27, 0x1

    .line 2571
    .local v27, "isRetry":Z
    :goto_1e
    if-eqz v27, :cond_62

    const/16 v41, 0x0

    .line 2574
    .local v41, "resultMessage":Landroid/os/Message;
    :goto_1f
    if-nez v23, :cond_63

    if-eqz v36, :cond_5f

    const/4 v2, 0x3

    move/from16 v0, v36

    if-ne v0, v2, :cond_63

    .line 2578
    :cond_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    move-object/from16 v0, v41

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "preferred_network_mode"

    const/16 v5, 0x9

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2561
    .end local v27    # "isRetry":Z
    .end local v36    # "modemNetworkMode":I
    .end local v41    # "resultMessage":Landroid/os/Message;
    .restart local v34    # "matchingPlmn":Ljava/lang/String;
    :cond_60
    add-int/lit8 v21, v21, 0x1

    goto :goto_1d

    .line 2570
    .end local v34    # "matchingPlmn":Ljava/lang/String;
    .restart local v36    # "modemNetworkMode":I
    :cond_61
    const/16 v27, 0x0

    goto :goto_1e

    .line 2571
    .restart local v27    # "isRetry":Z
    :cond_62
    const/16 v2, 0xd8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v41

    goto :goto_1f

    .line 2586
    .restart local v41    # "resultMessage":Landroid/os/Message;
    :cond_63
    if-eqz v23, :cond_2

    const/16 v2, 0x9

    move/from16 v0, v36

    if-ne v0, v2, :cond_2

    .line 2588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-interface {v2, v4, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "preferred_network_mode"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 2600
    .end local v12    # "arr$":[Ljava/lang/String;
    .end local v15    # "currentSimPlmn":Ljava/lang/String;
    .end local v21    # "i$":I
    .end local v23    # "inBlackList":Z
    .end local v27    # "isRetry":Z
    .end local v31    # "len$":I
    .end local v36    # "modemNetworkMode":I
    .end local v41    # "resultMessage":Landroid/os/Message;
    :cond_64
    const/16 v2, 0xd7

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2609
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xd6

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2614
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2615
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 2618
    const/16 v2, 0xd7

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 2628
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v2, v4, :cond_2

    .line 2629
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    goto/16 :goto_1

    .line 2635
    :sswitch_26
    const-string v2, "EVENT_GET_OCSGL_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2636
    const/16 v26, 0x1

    .line 2637
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2639
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_65

    .line 2640
    const-string v2, "EF_OCSGL : Exception "

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2641
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetCSGLocalData()V

    goto/16 :goto_1

    .line 2644
    :cond_65
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleCSGData(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2649
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_27
    const/16 v26, 0x1

    .line 2651
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2652
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2654
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_66

    .line 2655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIMRecords] Error on EF_CBMI with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2658
    :cond_66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2660
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    .local v14, "channelslList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v47, v0

    .line 2664
    .local v47, "temp":[B
    if-eqz v16, :cond_2

    .line 2665
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_20
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_6a

    .line 2667
    aget-byte v2, v16, v20

    const/4 v4, -0x1

    if-ne v2, v4, :cond_67

    add-int/lit8 v2, v20, 0x1

    aget-byte v2, v16, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6a

    .line 2668
    :cond_67
    const/4 v2, 0x0

    aget-byte v4, v16, v20

    aput-byte v4, v47, v2

    .line 2669
    const/4 v2, 0x1

    add-int/lit8 v4, v20, 0x1

    aget-byte v4, v16, v4

    aput-byte v4, v47, v2

    .line 2673
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    if-gez v2, :cond_68

    .line 2674
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    add-int/lit16 v2, v2, 0x100

    shl-int/lit8 v9, v2, 0x8

    .line 2679
    .local v9, "a":I
    :goto_21
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    if-gez v2, :cond_69

    .line 2680
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    add-int/lit16 v13, v2, 0x100

    .line 2685
    .local v13, "b":I
    :goto_22
    add-int v22, v9, v13

    .line 2686
    .local v22, "id":I
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2665
    add-int/lit8 v20, v20, 0x2

    goto :goto_20

    .line 2677
    .end local v9    # "a":I
    .end local v13    # "b":I
    .end local v22    # "id":I
    :cond_68
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    shl-int/lit8 v9, v2, 0x8

    .restart local v9    # "a":I
    goto :goto_21

    .line 2682
    :cond_69
    const/4 v2, 0x1

    aget-byte v13, v47, v2

    .restart local v13    # "b":I
    goto :goto_22

    .line 2691
    .end local v9    # "a":I
    .end local v13    # "b":I
    :cond_6a
    const-string v2, ","

    invoke-static {v2, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    .line 2693
    .local v35, "mid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_6b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v39

    .line 2694
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_23
    if-eqz v39, :cond_6d

    .line 2695
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_6c

    .line 2696
    const-string v2, "Set CB channel to the property for slot1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2697
    const-string v2, "gsm.sim.cbmi.channel"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    const-string v2, "gsm.cb.max.channel"

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLOT_1 EF_CBMI length (string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2693
    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_6b
    const/16 v39, 0x0

    goto :goto_23

    .line 2700
    .restart local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_6c
    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 2701
    const-string v2, "Set CB channel to the property for slot2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2702
    const-string v2, "gsm.sim.cbmi.channel.slot2"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2703
    const-string v2, "gsm.cb.max.channel.slot2"

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SLOT_2 EF_CBMI length (string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2707
    :cond_6d
    const-string v2, "gsm.sim.cbmi.channel"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    const-string v2, "gsm.cb.max.channel"

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_CBMI length (string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2714
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "channelslList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "data":[B
    .end local v20    # "i":I
    .end local v35    # "mid":Ljava/lang/String;
    .end local v39    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v47    # "temp":[B
    :sswitch_28
    const-string v2, "*********Set EF CDMI done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    const/16 v26, 0x0

    .line 2716
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2717
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2718
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2719
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2725
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_29
    const-string v2, "*********Set EF LP done"

    const-string v4, "completed!! "

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    const/16 v26, 0x0

    .line 2727
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2729
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2730
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2731
    iget-object v2, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 2735
    .end local v11    # "ar":Landroid/os/AsyncResult;
    :sswitch_2a
    const/16 v26, 0x1

    .line 2737
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2738
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2740
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_6e

    .line 2741
    const-string v2, "SIMRecords"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SIMRecords] Error on EF_LP with exp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2745
    :cond_6e
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    .line 2746
    .local v33, "mLpList":Ljava/lang/StringBuilder;
    const/16 v32, 0x0

    .line 2748
    .local v32, "lp":Ljava/lang/String;
    if-eqz v16, :cond_72

    .line 2749
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_24
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_71

    .line 2750
    aget-byte v2, v16, v20

    const/4 v4, -0x1

    if-eq v2, v4, :cond_71

    .line 2751
    aget-byte v2, v16, v20

    if-gez v2, :cond_70

    .line 2752
    aget-byte v2, v16, v20

    add-int/lit16 v0, v2, 0x100

    move/from16 v51, v0

    .line 2756
    .local v51, "value":I
    :goto_25
    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2757
    move-object/from16 v0, v16

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_6f

    add-int/lit8 v2, v20, 0x1

    aget-byte v2, v16, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6f

    .line 2758
    const-string v2, ","

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    :cond_6f
    add-int/lit8 v20, v20, 0x1

    goto :goto_24

    .line 2754
    .end local v51    # "value":I
    :cond_70
    aget-byte v51, v16, v20

    .restart local v51    # "value":I
    goto :goto_25

    .line 2762
    .end local v51    # "value":I
    :cond_71
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 2764
    .end local v20    # "i":I
    :cond_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_LP(string): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2767
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->cbLpToProperty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2768
    const-string v2, "gsm.cb.lp"

    move-object/from16 v0, v32

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v45

    .line 2771
    .local v45, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v45 .. v45}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v46

    .line 2772
    .local v46, "spEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v32, :cond_74

    .line 2773
    const-string v2, ","

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v37

    .line 2774
    .local v37, "num":I
    const/4 v2, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2775
    .local v30, "langnum":I
    const/16 v2, 0xf

    move/from16 v0, v30

    if-le v0, v2, :cond_73

    .line 2776
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2782
    .end local v30    # "langnum":I
    .end local v37    # "num":I
    :goto_26
    invoke-interface/range {v46 .. v46}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 2778
    .restart local v30    # "langnum":I
    .restart local v37    # "num":I
    :cond_73
    const-string v2, "lang_list"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_26

    .line 2781
    .end local v30    # "langnum":I
    .end local v37    # "num":I
    :cond_74
    const-string v2, "lang_list"

    const-string v4, "15"

    move-object/from16 v0, v46

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_26

    .line 2790
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v32    # "lp":Ljava/lang/String;
    .end local v33    # "mLpList":Ljava/lang/StringBuilder;
    .end local v45    # "sp":Landroid/content/SharedPreferences;
    .end local v46    # "spEditor":Landroid/content/SharedPreferences$Editor;
    :sswitch_2b
    const/16 v26, 0x1

    .line 2791
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2792
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2793
    .restart local v16    # "data":[B
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_75

    .line 2794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SIMRecords] Error on EF_CBMIR with exp "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2798
    :cond_75
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2799
    .restart local v14    # "channelslList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v0, v2, [B

    move-object/from16 v47, v0

    .line 2800
    .restart local v47    # "temp":[B
    if-eqz v16, :cond_2

    .line 2801
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_27
    move-object/from16 v0, v16

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_79

    .line 2802
    aget-byte v2, v16, v20

    const/4 v4, -0x1

    if-ne v2, v4, :cond_76

    add-int/lit8 v2, v20, 0x1

    aget-byte v2, v16, v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_79

    .line 2803
    :cond_76
    const/4 v2, 0x0

    aget-byte v4, v16, v20

    aput-byte v4, v47, v2

    .line 2804
    const/4 v2, 0x1

    add-int/lit8 v4, v20, 0x1

    aget-byte v4, v16, v4

    aput-byte v4, v47, v2

    .line 2805
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    if-gez v2, :cond_77

    .line 2806
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    add-int/lit16 v2, v2, 0x100

    shl-int/lit8 v9, v2, 0x8

    .line 2810
    .restart local v9    # "a":I
    :goto_28
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    if-gez v2, :cond_78

    .line 2811
    const/4 v2, 0x1

    aget-byte v2, v47, v2

    add-int/lit16 v13, v2, 0x100

    .line 2815
    .restart local v13    # "b":I
    :goto_29
    add-int v22, v9, v13

    .line 2816
    .restart local v22    # "id":I
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    add-int/lit8 v20, v20, 0x2

    goto :goto_27

    .line 2808
    .end local v9    # "a":I
    .end local v13    # "b":I
    .end local v22    # "id":I
    :cond_77
    const/4 v2, 0x0

    aget-byte v2, v47, v2

    shl-int/lit8 v9, v2, 0x8

    .restart local v9    # "a":I
    goto :goto_28

    .line 2813
    :cond_78
    const/4 v2, 0x1

    aget-byte v13, v47, v2

    .restart local v13    # "b":I
    goto :goto_29

    .line 2821
    .end local v9    # "a":I
    .end local v13    # "b":I
    :cond_79
    const-string v2, ","

    invoke-static {v2, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v35

    .line 2827
    .restart local v35    # "mid":Ljava/lang/String;
    const-string v2, "gsm.sim.cbmir.channel"

    move-object/from16 v0, v35

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2834
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "channelslList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "data":[B
    .end local v20    # "i":I
    .end local v35    # "mid":Ljava/lang/String;
    .end local v47    # "temp":[B
    :sswitch_2c
    const-string v2, "EVENT_GET_PLMNWACT_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2835
    const/16 v26, 0x1

    .line 2836
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2837
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    const/16 v50, 0x0

    .line 2838
    .local v50, "uplmnsize":I
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7a

    .line 2839
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2840
    .restart local v16    # "data":[B
    if-eqz v16, :cond_7c

    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v4, 0x5

    if-lt v2, v4, :cond_7c

    .line 2841
    move-object/from16 v0, v16

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_7b

    .line 2842
    move-object/from16 v0, v16

    array-length v2, v0

    div-int/lit8 v50, v2, 0x5

    .line 2843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length of EF_PLMNWACT is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v50

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2851
    .end local v16    # "data":[B
    :cond_7a
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateUplmnSize(I)V

    goto/16 :goto_1

    .line 2845
    .restart local v16    # "data":[B
    :cond_7b
    const-string v2, "length of EF_PLMNWACT is incorrect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 2848
    :cond_7c
    const-string v2, "length of EF_PLMNWACT is incorrect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2a

    .line 2856
    .end local v11    # "ar":Landroid/os/AsyncResult;
    .end local v16    # "data":[B
    .end local v50    # "uplmnsize":I
    :sswitch_2d
    const-string v2, "EVENT_GET_GSM_IMSI_DONE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 2857
    const/16 v26, 0x1

    .line 2858
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 2860
    .restart local v11    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_7d

    .line 2861
    const-string v2, "Exception querying GSM IMSI, Exception:"

    iget-object v4, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2865
    :cond_7d
    iget-object v2, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object/from16 v16, v0

    .line 2866
    .restart local v16    # "data":[B
    if-eqz v16, :cond_7e

    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v4, 0x9

    if-eq v2, v4, :cond_7f

    .line 2867
    :cond_7e
    const-string v2, "Invalid GSM IMSI"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2896
    if-eqz v26, :cond_0

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto/16 :goto_0

    .line 2872
    :cond_7f
    const/4 v2, 0x1

    const/16 v4, 0x8

    :try_start_d
    move-object/from16 v0, v16

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v49

    .line 2873
    .local v49, "tmpString":Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_80

    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_80

    .line 2874
    const/4 v2, 0x1

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGsmImsi:Ljava/lang/String;

    .line 2879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGsmImsi:Ljava/lang/String;

    if-eqz v2, :cond_81

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGsmImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_81

    .line 2880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSM mcc/mnc: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGsmImsi:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2876
    :cond_80
    const-string v2, "generate nothing for GSM IMSI"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 2896
    if-eqz v26, :cond_0

    .line 2897
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    goto/16 :goto_0

    .line 2883
    :cond_81
    :try_start_e
    const-string v2, "mGsmImsi length is length than 5"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 1506
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_9
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_b
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x11 -> :sswitch_15
        0x12 -> :sswitch_11
        0x13 -> :sswitch_12
        0x14 -> :sswitch_17
        0x15 -> :sswitch_13
        0x16 -> :sswitch_14
        0x18 -> :sswitch_c
        0x19 -> :sswitch_18
        0x1a -> :sswitch_16
        0x1e -> :sswitch_6
        0x1f -> :sswitch_19
        0x20 -> :sswitch_1a
        0x21 -> :sswitch_1b
        0x22 -> :sswitch_1c
        0x23 -> :sswitch_1
        0xc9 -> :sswitch_1f
        0xca -> :sswitch_2a
        0xcb -> :sswitch_29
        0xcc -> :sswitch_e
        0xcd -> :sswitch_1d
        0xce -> :sswitch_1e
        0xcf -> :sswitch_21
        0xd1 -> :sswitch_20
        0xd2 -> :sswitch_27
        0xd3 -> :sswitch_28
        0xd4 -> :sswitch_26
        0xd5 -> :sswitch_2b
        0xd6 -> :sswitch_22
        0xd7 -> :sswitch_23
        0xd8 -> :sswitch_24
        0xd9 -> :sswitch_25
        0xda -> :sswitch_2c
        0xe1 -> :sswitch_2d
    .end sparse-switch
.end method

.method public isCallForwardingEnabled()Z
    .locals 1

    .prologue
    .line 4528
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    return v0
.end method

.method public isChinaMVNOSim()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 4625
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 4626
    .local v0, "iccnumeric":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 4645
    :cond_1
    :goto_0
    return v1

    .line 4628
    :cond_2
    const/4 v1, 0x0

    .line 4630
    .local v1, "status":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->isChinaMVNOSIM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 4632
    if-nez v1, :cond_1

    .line 4633
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CU_NETWORK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CU_MVNO_SPN_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    .line 4634
    goto :goto_0

    .line 4637
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CT_NETWORK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CT_MVNO_SPN_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 4638
    goto :goto_0

    .line 4641
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CMCC_NETWORK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords;->CMCC_MVNO_SPN_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 4642
    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3901
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    return v0
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 1
    .param p1, "efid"    # I

    .prologue
    .line 4511
    const/4 v0, 0x0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3879
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3884
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3892
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    return-void
.end method

.method protected logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 3888
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3889
    return-void
.end method

.method public notifyPhoneModeChanged()V
    .locals 1

    .prologue
    .line 4591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    .line 4592
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetCallForwardingFlag()V

    .line 4593
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    .line 4594
    return-void
.end method

.method public notifyPhoneModeChangedDone()V
    .locals 2

    .prologue
    .line 4598
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 4599
    const/16 v0, 0xd9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendEmptyMessage(I)Z

    .line 4601
    :cond_0
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 3250
    const-string v4, "SIMRecords: record load complete"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3252
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3253
    const-string v3, "onAllRecordsLoaded() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3339
    :goto_0
    return-void

    .line 3257
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->setLocaleFromUsim()V

    .line 3259
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v5, :cond_2

    .line 3262
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    goto :goto_0

    .line 3267
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_3

    .line 3268
    const-string v3, "SIMRecords: record load complete, but ParentApp is not ready state"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3274
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    .line 3278
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->processLteAutoSwitch()V

    .line 3282
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 3284
    .local v1, "operator":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 3285
    .local v0, "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isReportImsiFromMe(Lcom/android/internal/telephony/uicc/IccRecords;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3287
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3288
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update icc_operator_numeric="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3291
    const-string v4, "gsm.sim.operator.numeric"

    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 3293
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSmsSubId()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;J)I

    .line 3298
    .end local v2    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3303
    const-string v4, "onAllRecordsLoaded set mcc imsi=xxxx"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3307
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3308
    const-string v4, "gsm.sim.operator.iso-country"

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->setNAARecordsLoaded()V

    .line 3323
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V

    .line 3324
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSpnFromConfig(Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->checkcallForwardingStatus()V

    .line 3337
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .end local v0    # "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_5
    move-object v0, v3

    .line 3284
    goto/16 :goto_1

    .line 3295
    .restart local v0    # "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_6
    const-string v4, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 3313
    :cond_7
    const-string v4, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3317
    :cond_8
    const-string v4, "Does not update sim related properties by SIMRecords!!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 3398
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 3399
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3228
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    .line 3229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 3231
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    if-ne v0, v2, :cond_2

    .line 3233
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 3234
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-nez v0, :cond_0

    .line 3237
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchMWIfromUE()V

    .line 3241
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onAllRecordsLoaded()V

    .line 3246
    :cond_1
    :goto_0
    return-void

    .line 3242
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    if-gez v0, :cond_1

    .line 3243
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->loge(Ljava/lang/String;)V

    .line 3244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 1
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1452
    const-string v0, "onRefresh() failed due to SIM Reocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    if-eqz p1, :cond_0

    .line 1461
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->fetchSimRecords()V

    .line 1463
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dropSimPbkEntries()V

    goto :goto_0
.end method

.method public queryCFUIfNecessary()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 1372
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneType()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 1439
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1378
    const-string v4, "queryCFUIfNecessary() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1383
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    .line 1384
    .local v3, "phone":Lcom/android/internal/telephony/PhoneBase;
    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1385
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1389
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    sget-object v6, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    if-ne v4, v6, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-nez v4, :cond_0

    move-object v4, v3

    .line 1390
    check-cast v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->checkTestIcc()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsMFG:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsNEL:Z

    if-eqz v4, :cond_4

    .line 1391
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    goto :goto_0

    .line 1395
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    const/16 v6, 0xe

    if-eq v4, v6, :cond_0

    .line 1400
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "cfu_query_when_campon"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_a

    .line 1404
    .local v0, "cfuQuery":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/uicc/SIMRecords;->removeCCFCAfterPowerOn()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1405
    const/4 v0, 0x0

    .line 1409
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1410
    const/4 v0, 0x1

    .line 1414
    :cond_6
    const/4 v1, 0x0

    .line 1415
    .local v1, "noCfuQuery":Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_8

    .line 1416
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1417
    .local v2, "operator":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 1418
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords;->ORANGE_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1419
    const/4 v1, 0x1

    .line 1423
    :cond_7
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 1426
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QUERYING_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    .line 1427
    const/16 v4, 0xcd

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->sendEmptyMessageDelayed(IJ)Z

    .line 1431
    .end local v2    # "operator":Ljava/lang/String;
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_0

    .line 1434
    :cond_9
    sget-object v4, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_QURIED_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    goto/16 :goto_0

    .end local v0    # "cfuQuery":Z
    .end local v1    # "noCfuQuery":Z
    :cond_a
    move v0, v5

    .line 1400
    goto :goto_1
.end method

.method resetCallForwardingFlag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1355
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;->CFU_INIT_STATE:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->cfuQueryCompleted:Lcom/android/internal/telephony/uicc/SIMRecords$QueryCFUState;

    .line 1356
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    if-ne v0, v1, :cond_1

    .line 1357
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1358
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    .line 1359
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1361
    :cond_1
    return-void
.end method

.method protected resetRecords()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 594
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mImsi:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdn:Ljava/lang/String;

    .line 596
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 597
    iput v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 598
    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    .line 599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting0 mMncLength"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMncLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 600
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIccId:Ljava/lang/String;

    .line 602
    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnDisplayCondition:I

    .line 603
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    .line 604
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    .line 605
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpdiNetworks:Ljava/util/ArrayList;

    .line 606
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mPnnHomeName:Ljava/lang/String;

    .line 607
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mGid1:Ljava/lang/String;

    .line 610
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    .line 614
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 618
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 622
    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mValidSPN:Z

    .line 626
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFPLMNList:Ljava/util/ArrayList;

    .line 627
    iput v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNameSource:I

    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetCallForwardingFlag()V

    .line 639
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    .line 640
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    .line 646
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 650
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEFO2Perso:[B

    .line 654
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsRecordsLoad:Z

    .line 658
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    .line 662
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateUplmnSize(I)V

    .line 666
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v2

    if-nez v2, :cond_1

    .line 667
    const-string v2, "SIMRecords: onRadioOffOrNotAvailable set \'gsm.sim.operator.numeric\' to operator=null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update icc_operator_numeric="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 669
    const-string v2, "gsm.sim.operator.numeric"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v2

    if-nez v2, :cond_1

    .line 672
    const-string v2, "gsm.sim.operator.alpha"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :cond_1
    const-string v2, "gsm.sim.types"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 684
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    if-eqz v0, :cond_5

    .line 685
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_4

    .line 686
    const-string v2, "Clear CB channel property for slot1"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 687
    const-string v2, "gsm.sim.cbmi.channel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_2
    :goto_1
    const-string v2, "gsm.sim.cbmir.channel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsRequested:Z

    .line 705
    return-void

    .end local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_3
    move-object v0, v1

    .line 683
    goto :goto_0

    .line 688
    .restart local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 689
    const-string v2, "Clear CB channel property for slot2"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 690
    const-string v2, "gsm.sim.cbmi.channel.slot2"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 693
    :cond_5
    const-string v2, "gsm.sim.cbmi.channel"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCBLanguageEFlp([B)V
    .locals 3
    .param p1, "lp"    # [B

    .prologue
    .line 4264
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4265
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi() failed due to SIMRecords has been destroyed."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :goto_0
    return-void

    .line 4270
    :cond_0
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f05

    const/16 v2, 0xcb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 3
    .param p1, "msgId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4282
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi() failed due to SIMRecords has been destroyed."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    if-eqz p2, :cond_0

    .line 4284
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/IccException;

    const-string v2, "setCBMsgIdEFcbmi() failed due to SIMRecords has been destroyed."

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 4286
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 4298
    :cond_0
    :goto_0
    return-void

    .line 4292
    :cond_1
    const-string v0, "ENF"

    const-string v1, "setCBMsgIdEFcbmi()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f45

    const/16 v2, 0xd3

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setDataCallForwardingFlag(IZILjava/lang/String;)V
    .locals 11
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .param p4, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x1

    .line 1270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1271
    const-string v0, "setDataCallForwardingFlag() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1350
    :cond_0
    :goto_0
    return-void

    .line 1276
    :cond_1
    if-ne p1, v2, :cond_0

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDataCallForwardingFlag enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1280
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->dataCallForwardingEnabled:Z

    .line 1282
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1285
    if-eqz p2, :cond_2

    .line 1286
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    .line 1290
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDataCFUNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v7, "NULL"

    .line 1291
    .local v7, "cfuNumber":Ljava/lang/String;
    :goto_1
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDataCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    .end local v7    # "cfuNumber":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_7

    .line 1302
    if-eqz p2, :cond_6

    .line 1304
    if-nez p3, :cond_5

    .line 1305
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 1311
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1312
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v6

    .line 1313
    .local v6, "bcdNumber":[B
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1314
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1316
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1324
    .end local v6    # "bcdNumber":[B
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v10, 0x6fcb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1332
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1333
    if-eqz p2, :cond_8

    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1340
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1344
    :catch_0
    move-exception v8

    .line 1345
    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "SIMRecords"

    const-string v1, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1290
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const-string v7, "XXXXXX"

    goto/16 :goto_1

    .line 1307
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    .line 1319
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xef

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1320
    const/4 v9, 0x3

    .local v9, "i":I
    :goto_5
    if-ge v9, v3, :cond_3

    .line 1321
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v9

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 1320
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1328
    .end local v9    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1337
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    const-string v0, "setMsisdnNumber() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 756
    if-eqz p3, :cond_0

    .line 757
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    const-string v3, "setMsisdnNumber() failed due to SIMReocrods has been destroyed."

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 759
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTemp:Ljava/lang/String;

    .line 771
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTagTemp:Ljava/lang/String;

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set MSISDN: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTagTemp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "xxxxxxx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 773
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTagTemp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMsisdnTemp:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f40

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setOperatorNameSource(I)V
    .locals 0
    .param p1, "source"    # I

    .prologue
    .line 4438
    iput p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mOperatorNameSource:I

    .line 4439
    return-void
.end method

.method public setVoiceCallForwardingFlag(IZILjava/lang/String;)V
    .locals 11
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .param p4, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    const/4 v1, 0x1

    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1185
    const-string v0, "setVoiceCallForwardingFlag() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1193
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1195
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1198
    if-eqz p2, :cond_2

    .line 1199
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCFUNumber:Ljava/lang/String;

    .line 1203
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCFUNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v7, "null"

    .line 1204
    .local v7, "cfuNumber":Ljava/lang/String;
    :goto_1
    const-string v0, "SIMRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCFUNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    .end local v7    # "cfuNumber":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_7

    .line 1215
    if-eqz p2, :cond_6

    .line 1217
    if-nez p3, :cond_5

    .line 1218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    .line 1225
    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1226
    invoke-static {p4}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v6

    .line 1227
    .local v6, "bcdNumber":[B
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1238
    .end local v6    # "bcdNumber":[B
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v10, 0x6fcb

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v5, v10}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1246
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1247
    if-eqz p2, :cond_8

    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1255
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1259
    :catch_0
    move-exception v8

    .line 1260
    .local v8, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "SIMRecords"

    const-string v1, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1203
    .end local v8    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_4
    const-string v7, "xxxxxxxx"

    goto/16 :goto_1

    .line 1220
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit8 v3, p3, 0x1f

    int-to-byte v3, v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_2

    .line 1233
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1234
    const/4 v9, 0x3

    .local v9, "i":I
    :goto_5
    if-ge v9, v3, :cond_3

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    aget-byte v1, v0, v9

    or-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    .line 1234
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1242
    .end local v9    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1251
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public setVoiceCallForwardingFlag(IZLjava/lang/String;)V
    .locals 9
    .param p1, "line"    # I
    .param p2, "enable"    # Z
    .param p3, "dialNumber"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    const-string v0, "setVoiceCallForwardingFlag() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1118
    :cond_1
    if-ne p1, v1, :cond_0

    .line 1120
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1127
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    if-eqz v0, :cond_4

    .line 1130
    if-eqz p2, :cond_3

    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1136
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1141
    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF_CFIS: updating cf number, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 1143
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v6

    .line 1145
    .local v6, "bcdNumber":[B
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v2, 0x3

    array-length v3, v6

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x2

    array-length v2, v6

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xe

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1149
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/16 v1, 0xf

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1152
    .end local v6    # "bcdNumber":[B
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fcb

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v8, 0x6fcb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 1160
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    if-eqz v0, :cond_0

    .line 1161
    if-eqz p2, :cond_5

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1169
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f13

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1173
    :catch_0
    move-exception v7

    .line 1174
    .local v7, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving call forwarding flag to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1133
    .end local v7    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 1156
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoiceCallForwardingFlag: ignoring enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " invalid mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1165
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xf0

    or-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 817
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsVoiceMailFixed:Z

    if-eqz v0, :cond_1

    .line 818
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmFixedException;

    const-string v3, "Voicemail number is fixed by operator"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmFixedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 820
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    const-string v0, "setVoiceMailNumber() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 827
    if-eqz p3, :cond_0

    .line 828
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 830
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 836
    :cond_2
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    .line 837
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 843
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    .line 847
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mNewVoiceMailNum:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v2, 0xff

    if-eq v0, v2, :cond_3

    .line 851
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6fc7

    const/16 v3, 0x6fc8

    iget v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mMailboxIndex:I

    const/16 v6, 0x14

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 855
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isCphsMailboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v2, 0x6f17

    const/16 v3, 0x6f4a

    const/4 v4, 0x1

    const/16 v6, 0x19

    invoke-virtual {p0, v6, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 865
    :cond_4
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVoiceMailNum:Ljava/lang/String;

    .line 868
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    const-string v3, "Update SIM voice mailbox error"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 870
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 8
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 918
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 919
    const-string v0, "setVoiceMessageWaiting() failed due to SIMReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    if-ne p1, v1, :cond_0

    .line 930
    if-gez p2, :cond_5

    .line 931
    const/4 p2, -0x1

    .line 938
    :cond_2
    :goto_1
    iput p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 943
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    if-eqz v2, :cond_3

    .line 947
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xfe

    iget v5, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    if-nez v5, :cond_6

    :goto_2
    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 951
    if-gez p2, :cond_8

    .line 956
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->isFfBeTreatedAsUnknownCount()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 957
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 966
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6fca

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/16 v7, 0x6fca

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 971
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    if-eqz v0, :cond_4

    .line 973
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xf0

    iget v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCountVoiceMessages:I

    if-nez v0, :cond_9

    const/4 v0, 0x5

    :goto_4
    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 976
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f11

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    const/16 v3, 0xe

    const/16 v4, 0x6f11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/SIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 982
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->updateMWItoUE()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v6

    .line 985
    .local v6, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v0, "Error saving voice mail state to SIM. Probably malformed SIM record"

    invoke-virtual {p0, v0, v6}, Lcom/android/internal/telephony/uicc/SIMRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 932
    .end local v6    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    const/16 v2, 0xff

    if-le p2, v2, :cond_2

    .line 935
    const/16 p2, 0xff

    goto/16 :goto_1

    :cond_6
    move v0, v1

    .line 947
    goto :goto_2

    .line 959
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_3

    .line 963
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 973
    :cond_9
    const/16 v0, 0xa

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSpnOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSpnOverride"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callForwardingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCallForwardingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spnState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCphsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCphsInfo:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCspPlmnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mCspPlmnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efMWIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfMWIS:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " efCPHS_MWI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCPHS_MWI:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCff:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEfCfis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfCfis:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " getOperatorNumeric=xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
