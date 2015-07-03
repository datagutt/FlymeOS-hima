.class public Lcom/android/internal/telephony/IccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;,
        Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DELETE_MESSAGE_AND_LOAD_TOKEN:I = 0x4b2

.field private static final DELETE_MESSAGE_CGGG_EXTRA:I = 0x4b3

.field private static final DELETE_MESSAGE_TOKEN:I = 0x4b1

.field protected static final EVENT_GET_BCSMS_SERVICE_ENTRY:I = 0x11

.field protected static final EVENT_GET_BCSMS_SERVICE_LABEL:I = 0x10

.field protected static final EVENT_GET_BCSMS_SERVICE_NUMBER:I = 0xf

.field protected static final EVENT_GET_CARRIER_ID:I = 0x8

.field private static final EVENT_GET_CDMA_BROADCAST_CONFIG:I = 0x1b

.field protected static final EVENT_GET_LINEAR_FIXED_EF_RECORD_LENGTH_DONE:I = 0xa

.field protected static final EVENT_GET_SEV_IP_JAPAN_DONE:I = 0xd

.field protected static final EVENT_GET_TEST_BCSMS:I = 0x14

.field protected static final EVENT_GET_TRANSPARENT_EF_SIZE_DONE:I = 0x9

.field private static final EVENT_ICCCARDPROXY_READY_NOTIFY:I = 0x16

.field private static final EVENT_ICC_ABSENT:I = 0x19

.field private static final EVENT_ICC_CARD_LOADED:I = 0x1a

.field private static final EVENT_ICC_CARD_READY:I = 0x17

.field private static final EVENT_ICC_LOCKED:I = 0x18

.field protected static final EVENT_LOAD_DONE:I = 0x1

.field protected static final EVENT_LOAD_SMSC_DONE:I = 0x5

.field protected static final EVENT_REQUEST_HTC_DM_COMMAND:I = 0xe

.field protected static final EVENT_SET_BCSMS:I = 0x12

.field protected static final EVENT_SET_BROADCAST_ACTIVATION_DONE:I = 0x3

.field protected static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x4

.field protected static final EVENT_SET_TEST_BCSMS:I = 0x13

.field protected static final EVENT_SINGLE_LOAD_DONE:I = 0x7

.field protected static final EVENT_UPDATE_DONE:I = 0x2

.field protected static final EVENT_UPDATE_SMSC_DONE:I = 0x6

.field protected static final EVENT_UPDATE_WRITEUICC:I = 0x15

.field private static final INSERT_MESSAGE_TOKEN:I = 0x4b0

.field private static final LOG_TAG:Ljava/lang/String; = "IccSmsInterfaceManager"

.field private static final SMS_CB_CODE_SCHEME_MAX:I = 0xff

.field private static final SMS_CB_CODE_SCHEME_MIN:I


# instance fields
.field protected final mAppOps:Landroid/app/AppOpsManager;

.field private final mBCSmsLock:Ljava/lang/Object;

.field private mBCSmsServiceEntry:[I

.field private mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

.field private mBCSmsServiceNumber:I

.field private mBCSmsSetResult:I

.field private mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

.field private mCarrierID:Ljava/lang/String;

.field private final mCarrierIDLock:Ljava/lang/Object;

.field private mCdmaBroadcastConfig:[I

.field private mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

.field private mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

.field protected final mContext:Landroid/content/Context;

.field private mDeleteThenLoading:Z

.field protected mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mDmComResult:Ljava/lang/String;

.field private final mGetSevIpJapanLock:Ljava/lang/Object;

.field private final mGetTestBCSmsLock:Ljava/lang/Object;

.field protected mHandler:Landroid/os/Handler;

.field private mIsDelettingSIMSMS:Z

.field private mIsLoadingSIMSMS:Z

.field protected mLinearFixedEfRecordLength:I

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mRequestHtcDmCommandLock:Ljava/lang/Object;

.field protected mReturnedIndex:I

.field private final mSetTestBCSmsLock:Ljava/lang/Object;

.field private mSevIpJapan:Ljava/lang/String;

.field protected mSingleSms:[B

.field protected mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsc:Ljava/lang/String;

.field protected final mSmscLock:Ljava/lang/Object;

.field protected mSuccess:Z

.field private mTestBCSmsGetResult:[I

.field private mTestBCSmsSetResult:I

.field private mTransparentEfSize:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    .line 110
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    .line 192
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDeleteThenLoading:Z

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    .line 240
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 578
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    .line 580
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mUserManager:Landroid/os/UserManager;

    .line 582
    new-instance v0, Lcom/android/internal/telephony/ImsSMSDispatcher;

    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/telephony/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 586
    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    .line 595
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForIccCardProxyReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 605
    :cond_0
    invoke-static {p1}, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->getSmsUtilsHandler(Lcom/android/internal/telephony/PhoneBase;)Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    .line 607
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceEntry:[I

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsSetResult:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsSetResult:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsGetResult:[I

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->removeAllIccSms(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadAllIccSms()I

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/telephony/IccSmsInterfaceManager;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [I

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastConfig:[I

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetSevIpJapanLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSevIpJapan:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mRequestHtcDmCommandLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDmComResult:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccSmsInterfaceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/IccSmsInterfaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceNumber:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;)Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .param p1, "x1"    # Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    return-object p1
.end method

.method private enforceCarrierPrivilege()V
    .locals 3

    .prologue
    .line 2777
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 2778
    .local v0, "controller":Lcom/android/internal/telephony/uicc/UiccController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2779
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No Carrier Privilege: No UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2781
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 2784
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No Carrier Privilege."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2786
    :cond_2
    return-void
.end method

.method private filterDestAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    .line 2789
    const/4 v0, 0x0

    .line 2790
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/SmsNumberUtils;->filterDestAddr(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2791
    if-eqz v0, :cond_0

    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private isCdmaCmas(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/16 v3, 0x1004

    const/16 v2, 0x1000

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "isCdmaCmas":Z
    if-ne p1, p2, :cond_1

    .line 1474
    if-eq p1, v2, :cond_0

    const/16 v1, 0x1001

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1002

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1003

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_1

    .line 1479
    :cond_0
    const/4 v0, 0x1

    .line 1483
    :cond_1
    if-lt p1, v2, :cond_2

    if-gt p2, v3, :cond_2

    .line 1484
    const/4 v0, 0x1

    .line 1487
    :cond_2
    return v0
.end method

.method private isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 13
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2702
    .local v8, "identity":J
    const/4 v6, 0x0

    .line 2704
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "type"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2710
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2711
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 2712
    .local v10, "type":I
    const/4 v0, 0x3

    if-eq v10, v0, :cond_0

    const/4 v0, 0x5

    if-ne v10, v0, :cond_2

    :cond_0
    move v0, v12

    .line 2718
    :goto_0
    if-eqz v6, :cond_1

    .line 2719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2721
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2723
    .end local v10    # "type":I
    :goto_1
    return v0

    .restart local v10    # "type":I
    :cond_2
    move v0, v11

    .line 2712
    goto :goto_0

    .line 2718
    .end local v10    # "type":I
    :cond_3
    if-eqz v6, :cond_4

    .line 2719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2721
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    move v0, v11

    .line 2723
    goto :goto_1

    .line 2715
    :catch_0
    move-exception v7

    .line 2716
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]isFailedOrDraft: query message type failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2718
    if-eqz v6, :cond_5

    .line 2719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2721
    :cond_5
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 2718
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 2719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2721
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private loadAllIccSms()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1388
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsLoadingSIMSMS:Z

    if-eqz v1, :cond_0

    .line 1389
    const/4 v0, 0x0

    .line 1392
    :goto_0
    return v0

    .line 1391
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->removeAllIccSms(Z)V

    goto :goto_0
.end method

.method private loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    .line 2731
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2732
    .local v8, "identity":J
    const/4 v6, 0x0

    .line 2734
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "body"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2743
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2744
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2749
    if-eqz v6, :cond_0

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2752
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2754
    :goto_0
    return-object v0

    .line 2749
    :cond_1
    if-eqz v6, :cond_2

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2752
    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    move-object v0, v10

    .line 2754
    goto :goto_0

    .line 2746
    :catch_0
    move-exception v7

    .line 2747
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "[IccSmsInterfaceManager]loadText: query message text failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2749
    if-eqz v6, :cond_3

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2752
    :cond_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 2749
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2752
    :cond_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeAllIccSms(Z)V
    .locals 15
    .param p1, "bNeedLoad"    # Z

    .prologue
    .line 1398
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z

    if-eqz v0, :cond_0

    .line 1460
    :goto_0
    return-void

    .line 1401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mIsDelettingSIMSMS:Z

    .line 1403
    const/4 v11, 0x0

    .line 1405
    .local v11, "url":Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualGGPhone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1406
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_3

    .line 1415
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportCG2GGPhoneModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1416
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "C2G, remove old CDMA SMS first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v0, "content://sms/removesmsuimdb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1418
    .local v3, "uri2":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    const/16 v1, 0x4b3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1420
    .end local v3    # "uri2":Landroid/net/Uri;
    :cond_1
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "remove GSM sim1 sms db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const-string v0, "content://sms/removesmsim1db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1452
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    .line 1453
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    const/16 v9, 0x4b2

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1457
    .end local v11    # "url":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 1458
    .local v14, "ex":Ljava/lang/Exception;
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeAllIccSms Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1422
    .end local v14    # "ex":Ljava/lang/Exception;
    .restart local v11    # "url":Landroid/net/Uri;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1423
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "remove GSM sim2 sms db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    const-string v0, "content://sms/removesmsim2db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 1426
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isDualCGPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1427
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    if-nez v0, :cond_6

    .line 1436
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportCG2GGPhoneModeChange()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1437
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "G2C, remove OLD GSM SMS first"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    const-string v0, "content://sms/removesmsim1db"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1439
    .local v7, "url2":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    const/16 v5, 0x4b3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1441
    .end local v7    # "url2":Landroid/net/Uri;
    :cond_5
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "remove CDMS SIM sms db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const-string v0, "content://sms/removesmsuimdb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 1443
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1444
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "remove GSM SIM sms db"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string v0, "content://sms/removesmsimdb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_1

    .line 1448
    :cond_7
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "Not GG or CG Dual SIM Mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1455
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBackgroundQueryHandler:Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;

    const/16 v9, 0x4b1

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/IccSmsInterfaceManager$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private returnUnspecifiedFailure(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 2758
    if-eqz p1, :cond_0

    .line 2760
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2765
    :cond_0
    :goto_0
    return-void

    .line 2761
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private returnUnspecifiedFailure(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2768
    .local p1, "pis":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_1

    .line 2774
    :cond_0
    return-void

    .line 2771
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 2772
    .local v1, "pi":Landroid/app/PendingIntent;
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setCdmaBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    .prologue
    .line 1777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCdmaBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1779
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1780
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1782
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1783
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1786
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1790
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1792
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 1787
    :catch_0
    move-exception v0

    .line 1788
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cdma broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1790
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;

    .prologue
    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCdmaBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1759
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1760
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1762
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1763
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1772
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cdma broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastActivation(Z)Z
    .locals 5
    .param p1, "activate"    # Z

    .prologue
    .line 1737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setCellBroadcastActivation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1739
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1740
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1742
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1743
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastActivation(ZLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1746
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1750
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1752
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast activation"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1750
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
    .locals 5
    .param p1, "configs"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    .prologue
    .line 1717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling setGsmBroadcastConfig with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " configurations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1719
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1720
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1722
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1723
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1726
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1732
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 1727
    :catch_0
    move-exception v0

    .line 1728
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to set cell broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1730
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setSmsPhoneType(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneType"    # I

    .prologue
    .line 2232
    return-void
.end method

.method private updateMessageOnIccEfDefault(Ljava/lang/String;II[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 2412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageOnIccEfDefault: index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(no security flag)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2416
    const-string v1, "Updating message on SIM/RUIM"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 2417
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2418
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 2419
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2421
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_1

    .line 2424
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2425
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2447
    :goto_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2448
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    :goto_2
    return v1

    .line 2427
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V

    goto :goto_0

    .line 2447
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2431
    .restart local v5    # "response":Landroid/os/Message;
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2432
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    .line 2433
    invoke-virtual {v5}, Landroid/os/Message;->recycle()V

    .line 2434
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    monitor-exit v7

    goto :goto_2

    .line 2437
    :cond_2
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 2438
    .local v3, "record":[B
    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2444
    .end local v0    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v3    # "record":[B
    :catch_0
    move-exception v6

    .line 2445
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by index"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method protected buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1177
    .local v1, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1179
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1180
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1181
    .local v0, "ba":[B
    if-eqz v0, :cond_0

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    aget-byte v5, v0, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 1182
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    .line 1185
    .local v3, "rawData":Lcom/android/internal/telephony/SmsRawData;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/SmsRawData;->setSimSmsIndex(I)V

    .line 1186
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1190
    .end local v0    # "ba":[B
    .end local v3    # "rawData":Lcom/android/internal/telephony/SmsRawData;
    :cond_2
    return-object v4
.end method

.method public copyMessageToIccEf(Ljava/lang/String;I[B[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 1972
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    .local v2, "isCdmaFormat":Z
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1973
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z

    move-result v0

    return v0

    .line 1972
    .end local v2    # "isCdmaFormat":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyMessageToIccEfForResult(I[B[B)I
    .locals 2
    .param p1, "status"    # I
    .param p2, "pdu"    # [B
    .param p3, "smsc"    # [B

    .prologue
    const/4 v1, 0x1

    .line 2018
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2019
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v0

    .line 2021
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->copyMessageToIccEfForResultWithType(ZI[B[B)I

    move-result v0

    goto :goto_0
.end method

.method public copyMessageToIccEfForResultByFormat(ZI[B[B)I
    .locals 6
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 2150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEfForResultByFormat cdma: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(no security flag)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2153
    const-string v2, "Copying message to RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 2154
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2155
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 2156
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mReturnedIndex:I

    .line 2157
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2159
    .local v1, "response":Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 2160
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2171
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2172
    iget v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mReturnedIndex:I

    return v2

    .line 2163
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2171
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2168
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public copyMessageToIccEfForResultWithType(ZI[B[B)I
    .locals 6
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "smsc"    # [B

    .prologue
    .line 1982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEfForResultWithType cdma: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(no security flag)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1985
    const-string v2, "Copying message to SIM/RUIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1986
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1987
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1988
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mReturnedIndex:I

    .line 1989
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1991
    .local v1, "response":Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 1992
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p2, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2004
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2005
    iget v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mReturnedIndex:I

    return v2

    .line 1995
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 2004
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2001
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 2002
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public copyMessageToIccEfWithType(Ljava/lang/String;ZI[B[B)Z
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1920
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyMessageToIccEfWithType: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(no security flag)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1923
    const-string v3, "Copying message to SIM/RUIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1930
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 1931
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1955
    :goto_0
    return v2

    .line 1937
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1938
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1939
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1941
    .local v1, "response":Landroid/os/Message;
    if-eqz p2, :cond_1

    .line 1942
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p3, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToRuim(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1954
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1955
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 1945
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p3, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1954
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 1951
    .restart local v1    # "response":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1952
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized disableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1609
    monitor-enter p0

    :try_start_0
    const-string v4, "disableCdmaBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1611
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1613
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove cdma broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    :goto_0
    monitor-exit p0

    return v2

    .line 1627
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed cdma broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1630
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1632
    goto :goto_0

    .line 1609
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public disableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1467
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1511
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCDMALTESmartPhoneCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1512
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isCdmaCmas(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    move-result v0

    .line 1523
    :goto_0
    return v0

    .line 1515
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 1520
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1521
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableGsmBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 1523
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->disableCdmaBroadcastRange(II)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized disableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1555
    monitor-enter p0

    :try_start_0
    const-string v4, "disableGsmBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1557
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1559
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Disabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1566
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->disableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to remove cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1578
    :goto_0
    monitor-exit p0

    return v2

    .line 1573
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1576
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1578
    goto :goto_0

    .line 1555
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dispose()V
    .locals 6

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 671
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 673
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 676
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_0

    .line 677
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForReady(Landroid/os/Handler;)V

    .line 678
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForLocked(Landroid/os/Handler;)V

    .line 679
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 680
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 683
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_0
    return-void
.end method

.method public declared-synchronized enableCdmaBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1582
    monitor-enter p0

    :try_start_0
    const-string v4, "enableCdmaBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1584
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1586
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cdma broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cdma broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    :goto_0
    monitor-exit p0

    return v2

    .line 1600
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added cdma broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1603
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CdmaBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1605
    goto :goto_0

    .line 1582
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableCellBroadcast(I)Z
    .locals 1
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1463
    invoke-virtual {p0, p1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCellBroadcastRange(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 2
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1493
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCDMALTESmartPhoneCmas()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1494
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isCdmaCmas(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    move-result v0

    .line 1505
    :goto_0
    return v0

    .line 1497
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 1502
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1503
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableGsmBroadcastRange(II)Z

    move-result v0

    goto :goto_0

    .line 1505
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enableCdmaBroadcastRange(II)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized enableGsmBroadcastRange(II)Z
    .locals 6
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1528
    monitor-enter p0

    :try_start_0
    const-string v4, "enableGsmBroadcastRange"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1530
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1532
    .local v1, "context":Landroid/content/Context;
    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Enabling cell broadcast SMS"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1539
    .local v0, "client":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->enableRange(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add cell broadcast subscription for MID range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1551
    :goto_0
    monitor-exit p0

    return v2

    .line 1546
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added cell broadcast subscription for MID range "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1549
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCellBroadcastRangeManager:Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastActivation(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1551
    goto :goto_0

    .line 1528
    .end local v0    # "client":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1112
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1113
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const-string v5, "com.android.phone"

    invoke-static {v1, v3, v4, v5}, Lcom/android/internal/telephony/HtcMessageHelper;->callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z

    move-result v0

    .line 1115
    .local v0, "allowed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1116
    .local v2, "uid":I
    if-nez v0, :cond_0

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    .line 1117
    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_0
    return-void
.end method

.method protected enforceReceiveAndSend(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_SMS"

    const-string v5, "Reading messages from Icc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    .line 704
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 731
    :goto_0
    return-object v3

    .line 710
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 712
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 713
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_2

    .line 714
    const-string v3, "IccSmsInterfaceManager"

    const-string v5, "Cannot load Sms records. No icc card?"

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 716
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 717
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    monitor-exit v4

    goto :goto_0

    .line 730
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 719
    .restart local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    monitor-exit v4

    goto :goto_0

    .line 722
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 723
    .local v2, "response":Landroid/os/Message;
    const/16 v3, 0x6f3c

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 726
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 730
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 731
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;

    goto :goto_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "interrupted while trying to load from the Icc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getCSCB()V
    .locals 3

    .prologue
    .line 1152
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1158
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.htc.permission.APP_DEFAULT"

    const-string v2, "getCSCB"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    const-string v1, "getCSCB"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1162
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->getCSCB()V

    .line 1163
    return-void
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2118
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2119
    .local v0, "context":Landroid/content/Context;
    const-string v3, "com.htc.permission.APP_DEFAULT"

    const-string v4, "getCarrierID"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2122
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2123
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v5, "C8F8000000"

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2125
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierIDLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2129
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2130
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCarrierID:Ljava/lang/String;

    return-object v3

    .line 2126
    :catch_0
    move-exception v1

    .line 2127
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to get Carrier ID"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getCdmaBroadcastConfig()[I
    .locals 5

    .prologue
    .line 3050
    const-string v2, "com.htc.permission.APP_DEFAULT"

    const-string v3, "getCdmaBroadcastConfig"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3053
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1b

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3054
    .local v1, "response":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3056
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3060
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3061
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mCdmaBroadcastConfig:[I

    return-object v2

    .line 3057
    :catch_0
    move-exception v0

    .line 3058
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get CDMA broadcast config"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3060
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;
    .locals 20
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .param p7, "refNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2858
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "android.permission.SEND_SMS"

    const-string v7, "Sending SMS message"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    const/4 v15, 0x0

    .line 2862
    .local v15, "isCdma":Z
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2863
    const/4 v15, 0x1

    .line 2866
    :cond_0
    move-object/from16 v0, p4

    invoke-static {v0, v15}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 2872
    .local v12, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwUiccCsimFormat()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2873
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v15, :cond_1

    .line 2874
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/htc/internal/telephony/HtcSimSmsUtils;->fragmentCdmaMtSmsWith172Length(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2880
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 2881
    const-string v5, ""

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2884
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 2885
    .local v17, "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2887
    .local v8, "text":Ljava/lang/String;
    if-eqz v15, :cond_3

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 2888
    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)[B

    move-result-object v16

    .line 2894
    .local v16, "pdu":[B
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2891
    .end local v16    # "pdu":[B
    :cond_3
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;)[B

    move-result-object v16

    .restart local v16    # "pdu":[B
    goto :goto_1

    .line 2897
    .end local v8    # "text":Ljava/lang/String;
    .end local v16    # "pdu":[B
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2898
    .local v4, "count":I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2900
    .local v18, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v4, :cond_5

    .line 2901
    new-instance v6, Lcom/android/internal/telephony/SmsRawData;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2904
    :cond_5
    return-object v18
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageFromIccEf(I)[B
    .locals 2
    .param p1, "nIndexOnSim"    # I

    .prologue
    const/4 v1, 0x1

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 2032
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getMessageFromIccEfWithType(ZI)[B

    move-result-object v0

    .line 2034
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getMessageFromIccEfWithType(ZI)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageFromIccEfWithType(ZI)[B
    .locals 6
    .param p1, "bIsCdmaFormat"    # Z
    .param p2, "nIndexOnSim"    # I

    .prologue
    const/4 v3, 0x0

    .line 2039
    const-string v4, "getMessageFromIccEfWithType"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2042
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    if-nez v4, :cond_0

    .line 2043
    const-string v4, "getMessageFromIccEfWithType fails because getIccFileHandler is null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2044
    iput-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSingleSms:[B

    .line 2067
    :goto_0
    return-object v3

    .line 2048
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2050
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM/RUIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2054
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2057
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v3

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, p2, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2066
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2067
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSingleSms:[B

    goto :goto_0

    .line 2063
    :catch_0
    move-exception v1

    .line 2064
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2066
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getNextMessageIdInPreference()I
    .locals 2

    .prologue
    .line 1805
    const-string v0, "android.permission.SEND_SMS"

    const-string v1, "getNextMessageIdInPreference"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->getNextMessageIdInPreference()I

    move-result v0

    return v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1101
    const-string v0, "com.htc.permission.APP_DEFAULT"

    const-string v1, "getPremiumSmsPermission"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2075
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2076
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Get SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2081
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2082
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getSMSCenter(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2090
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmsc:Ljava/lang/String;

    return-object v3

    .line 2086
    :catch_0
    move-exception v1

    .line 2087
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to load SMSC from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2089
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "android.permission.SEND_SMS"

    const-string v8, "Sending SMS message"

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 2957
    const-string v5, "IccSmsInterfaceManager"

    const-string v7, "getSubmitPduForCdmaSimSms not support for GSM Submit Type SIM SMS encode!"

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    const/16 v16, 0x0

    .line 2996
    :cond_0
    :goto_0
    return-object v16

    .line 2961
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v12

    .line 2967
    .local v12, "fragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwUiccCsimFormat()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2968
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2969
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/htc/internal/telephony/HtcSimSmsUtils;->fragmentCdmaMtSmsWith172Length(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2974
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    const/16 v16, 0x0

    goto :goto_0

    .line 2976
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2977
    .local v15, "pdus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_4

    .line 2978
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2979
    .local v6, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2980
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2981
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2983
    const/4 v7, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p2

    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 2986
    .local v14, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    iget-object v5, v14, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2977
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2989
    .end local v6    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v14    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2990
    .local v4, "count":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2992
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsRawData;>;"
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v4, :cond_0

    .line 2993
    new-instance v7, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2992
    add-int/lit8 v13, v13, 0x1

    goto :goto_2
.end method

.method public getTestBCSMS()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2551
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2552
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "getTestBCSMS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2554
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2555
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2556
    .local v2, "response":Landroid/os/Message;
    const-string v3, "getTestBCSMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2557
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryTestBCSMS(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mGetTestBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2564
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2565
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsGetResult:[I

    return-object v3

    .line 2561
    :catch_0
    move-exception v1

    .line 2562
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to get Test BCSMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2564
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    .line 881
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pdu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n receivedIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V

    .line 887
    return-void
.end method

.method public isCdmaMo()Z
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v0

    return v0
.end method

.method public isFdnEnabled()Z
    .locals 3

    .prologue
    .line 3006
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3007
    .local v0, "targetPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 3008
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 3013
    :goto_0
    return v1

    .line 3010
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFdnEnabled, can\'t get targetPhone which phoneId=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 3013
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    return v0
.end method

.method public isSendCdmaMoSms()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2797
    const-string v0, "android.permission.SEND_SMS"

    const-string v1, "isSendCdmaMoSms"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2800
    const-string v0, "3gpp2"

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public kddiAcknowledgeSendRequest(ZII)Z
    .locals 3
    .param p1, "sendAck"    # Z
    .param p2, "result"    # I
    .param p3, "messageId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1273
    .local v0, "context":Landroid/content/Context;
    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "kddi ack send request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const/4 v1, 0x0

    return v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1796
    const-string v0, "IccSmsInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    return-void
.end method

.method protected makeSmsRecordData(I[B)[B
    .locals 8
    .param p1, "status"    # I
    .param p2, "pdu"    # [B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1201
    const/4 v0, 0x0

    .line 1204
    .local v0, "data":[B
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    if-ne v7, v4, :cond_1

    .line 1205
    const/16 v2, 0xb0

    .line 1210
    .local v2, "recordLength":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRuimRecordLength()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1211
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gsm.htc.sim.types.group"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1214
    .local v3, "simType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1215
    const/16 v2, 0xff

    .line 1221
    .end local v3    # "simType":I
    :cond_0
    :goto_1
    new-array v0, v2, [B

    .line 1224
    and-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 1226
    array-length v4, p2

    invoke-static {p2, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1229
    array-length v4, p2

    add-int/lit8 v1, v4, 0x1

    .local v1, "j":I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_3

    .line 1230
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1207
    .end local v1    # "j":I
    .end local v2    # "recordLength":I
    :cond_1
    const/16 v2, 0xff

    .restart local v2    # "recordLength":I
    goto :goto_0

    .line 1217
    .restart local v3    # "simType":I
    :cond_2
    const/16 v2, 0xb0

    goto :goto_1

    .line 1233
    .end local v3    # "simType":I
    .restart local v1    # "j":I
    :cond_3
    return-object v0
.end method

.method protected makeSmsRecordDataWithType(ZI[BI)[B
    .locals 5
    .param p1, "isCdmaFormat"    # Z
    .param p2, "status"    # I
    .param p3, "pdu"    # [B
    .param p4, "recordLength"    # I

    .prologue
    const/4 v4, 0x0

    .line 1243
    new-array v0, p4, [B

    .line 1247
    .local v0, "data":[B
    and-int/lit8 v2, p2, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 1249
    const/4 v2, 0x1

    array-length v3, p3

    invoke-static {p3, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1252
    array-length v2, p3

    add-int/lit8 v1, v2, 0x1

    .local v1, "j":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 1253
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 1252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1256
    :cond_0
    return-object v0
.end method

.method protected markMessagesAsRead(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 610
    if-nez p1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 616
    .local v0, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v0, :cond_2

    .line 619
    const-string v1, "SMS"

    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const-string v1, "markMessagesAsRead - aborting, no icc card present."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 627
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_0

    .line 628
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 629
    .local v6, "ba":[B
    aget-byte v1, v6, v12

    if-ne v1, v11, :cond_3

    .line 630
    array-length v9, v6

    .line 631
    .local v9, "n":I
    add-int/lit8 v1, v9, -0x1

    new-array v10, v1, [B

    .line 632
    .local v10, "nba":[B
    add-int/lit8 v1, v9, -0x1

    invoke-static {v6, v13, v10, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 633
    invoke-virtual {p0, v13, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 634
    .local v3, "record":[B
    const/16 v1, 0x6f3c

    add-int/lit8 v2, v8, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 635
    const-string v1, "SMS"

    invoke-static {v1, v11}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " marked as read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 627
    .end local v3    # "record":[B
    .end local v9    # "n":I
    .end local v10    # "nba":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 5
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 2496
    const-string v2, "com.htc.permission.APP_DEFAULT"

    const-string v3, "requestGetBCSMSServiceEntry"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2499
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2500
    .local v1, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestGetBCSMSServiceEntry: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2501
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryBCSMS(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2504
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2508
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2509
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceEntry:[I

    return-object v2

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get BCSMS service entry"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2508
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 6
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 2471
    const-string v3, "com.htc.permission.APP_DEFAULT"

    const-string v4, "requestGetBCSMSServiceLabel"

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2474
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2475
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2476
    .local v2, "response":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestGetBCSMSServiceLable: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2477
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestGetBCSMSServiceLabel(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2480
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 2481
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_0

    .line 2482
    const/4 v0, 0x0

    .line 2491
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2492
    return-object v0

    .line 2484
    :cond_0
    :try_start_3
    const-string v3, "index"

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getIndex()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2485
    const-string v3, "label_encode"

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getLabel_encode()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2486
    const-string v3, "label"

    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceLabel:Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaBCSMSServiceLabel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2488
    :catch_0
    move-exception v1

    .line 2489
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v3, "interrupted while trying to get BCSMS service label"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2491
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 5

    .prologue
    .line 2453
    const-string v2, "com.htc.permission.APP_DEFAULT"

    const-string v3, "requestGetBCSMSServiceNumber"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2456
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2457
    .local v1, "response":Landroid/os/Message;
    const-string v2, "requestGetBCSMSServiceNumber start"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2458
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestGetBCSMSServiceNumber(Landroid/os/Message;)V

    .line 2459
    const-string v2, "requestGetBCSMSServiceNumber end"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2461
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2465
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return mBCSmsServiceNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2467
    iget v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsServiceNumber:I

    return v2

    .line 2462
    :catch_0
    move-exception v0

    .line 2463
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "interrupted while trying to get BCSMS service number"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2465
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "data"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string v0, "SMS"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData: destAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' sentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deliveryIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->hook_noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "sendData not allow, op_send_sms check failed"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    if-eqz p6, :cond_1

    .line 776
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p6, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :cond_1
    :goto_0
    return-void

    .line 777
    :catch_0
    move-exception v7

    .line 778
    .local v7, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "failed to sendData , OP NOT ALLOW"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    .end local v7    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 784
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3022
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3028
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "check op sendMultipartData sms not allow"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    if-eqz p6, :cond_0

    :try_start_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3032
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    .line 3033
    .local v8, "count":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 3034
    move-object/from16 v0, p6

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3033
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3037
    .end local v8    # "count":I
    .end local v10    # "i":I
    :catch_0
    move-exception v9

    .line 3038
    .local v9, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "failed to sendMultipartData back OP NOT ALLOW"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    .end local v9    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_1
    return-void

    .line 3043
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v5, p5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v6, p6

    check-cast v6, Ljava/util/ArrayList;

    move-object/from16 v7, p7

    check-cast v7, Ljava/util/ArrayList;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 791
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "sendMultipartData not allow, op_send_sms check failed"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    if-eqz p6, :cond_0

    :try_start_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 801
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v9

    .line 802
    .local v9, "count":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_0

    .line 803
    move-object/from16 v0, p6

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 806
    .end local v9    # "count":I
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 807
    .local v10, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "failed to sendMultipartTextWightNli back OP NOT ALLOW"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_0
    :goto_1
    return-void

    .line 813
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v5, p5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v6, p6

    check-cast v6, Ljava/util/ArrayList;

    move-object/from16 v7, p7

    check-cast v7, Ljava/util/ArrayList;

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v8, p8

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 975
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMultipartTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V

    .line 977
    return-void
.end method

.method public sendMultipartTextWithNli(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 23
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1036
    .local p4, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Sending SMS message"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v2, "SMS"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    const/16 v19, 0x0

    .line 1041
    .local v19, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1042
    .local v22, "part":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMultipartText: destAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", srAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", part["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "i":I
    .local v20, "i":I
    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    move/from16 v19, v20

    .line 1044
    .end local v20    # "i":I
    .restart local v19    # "i":I
    goto :goto_0

    .line 1046
    .end local v19    # "i":I
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "part":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    const-string v2, "IccSmsInterfaceManager"

    const-string v3, "ps check op sendMultipartTextWighNli sms not allow"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz p5, :cond_1

    :try_start_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1053
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v17

    .line 1054
    .local v17, "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 1055
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1058
    .end local v17    # "count":I
    .end local v19    # "i":I
    :catch_0
    move-exception v18

    .line 1059
    .local v18, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "IccSmsInterfaceManager"

    const-string v3, "failed to sendMultipartTextWightNli back OP NOT ALLOW"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    .end local v18    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    :goto_2
    return-void

    .line 1065
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_6

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1066
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 1069
    move-object/from16 v0, p4

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1070
    .local v5, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1076
    :goto_4
    const/4 v6, 0x0

    .line 1077
    .local v6, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_3

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_3

    .line 1078
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1081
    .restart local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    :cond_3
    const/4 v7, 0x0

    .line 1082
    .local v7, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-le v2, v0, :cond_4

    .line 1083
    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1086
    .restart local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p1

    move-object/from16 v10, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1066
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1073
    .end local v6    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v7    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v19, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 1092
    .end local v5    # "singlePart":Ljava/lang/String;
    .end local v19    # "i":I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1093
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v11, p4

    check-cast v11, Ljava/util/ArrayList;

    move-object/from16 v12, p5

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v13, p6

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v15, p1

    move-object/from16 v16, p7

    invoke-virtual/range {v8 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2
.end method

.method public sendRawPduWithBundle(Ljava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bFirstOfAll"    # Z
    .param p7, "bLastOfAll"    # Z
    .param p8, "concatebundle"    # Landroid/os/Bundle;
    .param p9, "destaddr"    # Ljava/lang/String;
    .param p10, "text"    # Ljava/lang/String;

    .prologue
    .line 907
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 909
    .local v12, "context":Landroid/content/Context;
    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v12, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRawPduWithBundle: smsc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (no security flag) sentIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deliveryIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 921
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 923
    const-string v2, "sendRawPduwithBundle without Ops send sms, return"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 927
    if-eqz p4, :cond_0

    .line 928
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 929
    :catch_0
    move-exception v13

    .line 930
    .local v13, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "IccSmsInterfaceManager"

    const-string v3, "failed to sendRawPduWithBundle back OP NOT ALLOW"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 938
    .end local v13    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    if-nez p2, :cond_2

    const-string v4, ""

    .line 940
    .local v4, "smscString":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v3, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/util/HashMap;

    move-result-object v6

    .line 942
    .local v6, "map":Ljava/util/HashMap;
    iget-object v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v14

    .line 943
    .local v14, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 946
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/SMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 938
    .end local v4    # "smscString":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/HashMap;
    .end local v14    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public sendStoredMultipartText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2633
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "Sending SMS message"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2635
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2695
    :cond_0
    :goto_0
    return-void

    .line 2639
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 2640
    .local v18, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2641
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: not FAILED or DRAFT message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 2646
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v19

    .line 2647
    .local v19, "textAndAddress":[Ljava/lang/String;
    if-nez v19, :cond_3

    .line 2648
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not load text"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 2652
    :cond_3
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 2653
    .local v12, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_5

    .line 2654
    :cond_4
    const-string v3, "IccSmsInterfaceManager"

    const-string v4, "[IccSmsInterfaceManager]sendStoredMultipartText: can not divide text"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Ljava/util/List;)V

    goto :goto_0

    .line 2659
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_9

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_9

    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2660
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_0

    .line 2663
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2664
    .local v6, "singlePart":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsMessage;->shouldAppendPageNumberAsPrefix()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v17, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2670
    :goto_2
    const/4 v7, 0x0

    .line 2671
    .local v7, "singleSentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-le v3, v0, :cond_6

    .line 2672
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2675
    .restart local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    :cond_6
    const/4 v8, 0x0

    .line 2676
    .local v8, "singleDeliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v17

    if-le v3, v0, :cond_7

    .line 2677
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2680
    .restart local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v4, 0x1

    aget-object v4, v19, v4

    const/4 v11, 0x0

    move-object/from16 v5, p3

    move-object/from16 v9, p2

    move-object/from16 v10, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2660
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 2667
    .end local v7    # "singleSentIntent":Landroid/app/PendingIntent;
    .end local v8    # "singleDeliveryIntent":Landroid/app/PendingIntent;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v17, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 2686
    .end local v6    # "singlePart":Ljava/lang/String;
    .end local v17    # "i":I
    :cond_9
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v19, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v19, v3

    .line 2687
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x1

    aget-object v10, v19, v3

    move-object/from16 v13, p4

    check-cast v13, Ljava/util/ArrayList;

    move-object/from16 v14, p5

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v11, p3

    move-object/from16 v15, p2

    move-object/from16 v16, p1

    invoke-virtual/range {v9 .. v16}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public sendStoredText(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "messageUri"    # Landroid/net/Uri;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2599
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendStoredText: scAddr=(no security flag) messageUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deliveryIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2610
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 2629
    :goto_0
    return-void

    .line 2614
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 2615
    .local v10, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->isFailedOrDraft(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2616
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "[IccSmsInterfaceManager]sendStoredText: not FAILED or DRAFT message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2620
    :cond_2
    invoke-direct {p0, v10, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loadTextAndAddress(Landroid/content/ContentResolver;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v11

    .line 2621
    .local v11, "textAndAddress":[Ljava/lang/String;
    if-nez v11, :cond_3

    .line 2622
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "[IccSmsInterfaceManager]sendStoredText: can not load text"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->returnUnspecifiedFailure(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 2626
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    .line 2627
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v2, 0x1

    aget-object v2, v11, v2

    const/4 v3, 0x0

    aget-object v4, v11, v3

    const/4 v9, 0x0

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, p2

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Sending SMS message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v1, "SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendText: destAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scAddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' sentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deliveryIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 852
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    if-eqz p5, :cond_1

    .line 858
    const/4 v1, 0x1

    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :cond_1
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v10

    .line 860
    .local v10, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "IccSmsInterfaceManager"

    const-string v2, "failed to sendText back OP NOT ALLOW"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    .end local v10    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 866
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v8, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sendTextWithBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "destAddr"    # Ljava/lang/String;
    .param p3, "scAddr"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2817
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "Sending SMS message"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2825
    const-string v0, "sendTextwithBundle: (no security flag)"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2827
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2829
    const-string v0, "sendTextwithBundle without Ops send sms, return"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2833
    if-eqz p5, :cond_0

    .line 2834
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p5, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2843
    :cond_0
    :goto_0
    return-void

    .line 2835
    :catch_0
    move-exception v9

    .line 2836
    .local v9, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v0, "IccSmsInterfaceManager"

    const-string v1, "failed to sendTestWithBundle back OP NOT ALLOW"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2841
    .end local v9    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->filterDestAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v7, p1

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/SMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 6
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 2513
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2514
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "set BCSMS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2517
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2518
    .local v2, "response":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBCSMS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2519
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBCSMS(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2522
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2526
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2527
    iget v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mBCSmsSetResult:I

    return v3

    .line 2523
    :catch_0
    move-exception v1

    .line 2524
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to set BCSMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2526
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setCBEntry(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .prologue
    .line 1124
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1130
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.htc.permission.APP_DEFAULT"

    const-string v2, "setCBEntry"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const-string v1, "setCBEntry"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1134
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->setCBEntry(Z)V

    .line 1135
    return-void
.end method

.method public setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Z
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1144
    .local v0, "context":Landroid/content/Context;
    const-string v1, "com.htc.permission.APP_DEFAULT"

    const-string v2, "setCSCB"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v1, "setCSCB"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1148
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->setCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1108
    return-void
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 2098
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2099
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.SEND_SMS"

    const-string v4, "Set SMSC"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2104
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2105
    .local v2, "response":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, p1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2108
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSmscLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2112
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 2113
    return-void

    .line 2109
    :catch_0
    move-exception v1

    .line 2110
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "interrupted while trying to update SMSC into the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2112
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setTestBCSMS(II)I
    .locals 6
    .param p1, "kddiTestData"    # I
    .param p2, "makerData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2533
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2534
    .local v0, "context":Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "setTestBCSMS"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    iget-object v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2537
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2538
    .local v2, "response":Landroid/os/Message;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTestBCSMS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2539
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setTestBCSMS(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2542
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSetTestBCSmsLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2546
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2547
    iget v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTestBCSmsSetResult:I

    return v3

    .line 2543
    :catch_0
    move-exception v1

    .line 2544
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "interrupted while trying to set Test BCSMS"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2546
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public updateCBMI(Ljava/lang/String;)V
    .locals 13
    .param p1, "sChannels"    # Ljava/lang/String;

    .prologue
    const/4 v12, -0x1

    .line 2242
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCBMI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2244
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2245
    .local v2, "context":Landroid/content/Context;
    const-string v9, "android.permission.SEND_SMS"

    const-string v10, "SimSMSInterfacemanager updateCBMI"

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v9

    if-nez v9, :cond_0

    .line 2251
    const-string v9, "updateCBMI fails because getIccFileHandler is null"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2309
    :goto_0
    return-void

    .line 2255
    :cond_0
    const/4 v0, 0x0

    .line 2256
    .local v0, "bEmptyChannel":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 2257
    const/4 v0, 0x1

    .line 2260
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2262
    const/4 v9, -0x1

    :try_start_0
    iput v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    .line 2263
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2264
    .local v8, "response":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v9

    const/16 v11, 0x6f45

    invoke-virtual {v9, v11, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2271
    :goto_1
    :try_start_2
    iget v5, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    .line 2272
    .local v5, "efSize":I
    if-ne v5, v12, :cond_2

    .line 2273
    const-string v9, "get CBMI EF size fail, updateCBMI fail!"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2274
    monitor-exit v10

    goto :goto_0

    .line 2308
    .end local v5    # "efSize":I
    .end local v8    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 2267
    .restart local v8    # "response":Landroid/os/Message;
    :catch_0
    move-exception v3

    .line 2268
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v9, "interrupted while trying to record count"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2278
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "efSize":I
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBMI efSize="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2279
    new-array v4, v5, [B

    .line 2280
    .local v4, "ef":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 2281
    const/4 v9, -0x1

    aput-byte v9, v4, v6

    .line 2280
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2285
    :cond_3
    if-nez v0, :cond_4

    .line 2286
    const-string v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2289
    .local v1, "chs":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_3
    array-length v9, v1

    if-ge v6, v9, :cond_4

    .line 2290
    add-int/lit8 v9, v6, 0x1

    mul-int/lit8 v9, v9, 0x2

    if-le v9, v5, :cond_5

    .line 2300
    .end local v1    # "chs":[Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 2301
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v9

    const/16 v11, 0x6f45

    invoke-virtual {v9, v11, v4, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2304
    :try_start_4
    iget-object v9, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2308
    :goto_4
    :try_start_5
    monitor-exit v10

    goto/16 :goto_0

    .line 2294
    .restart local v1    # "chs":[Ljava/lang/String;
    :cond_5
    aget-object v9, v1, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2295
    .local v7, "iChannel":I
    mul-int/lit8 v9, v6, 0x2

    shr-int/lit8 v11, v7, 0x8

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v9

    .line 2296
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, 0x1

    and-int/lit16 v11, v7, 0xff

    int-to-byte v11, v11

    aput-byte v11, v4, v9

    .line 2289
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2305
    .end local v1    # "chs":[Ljava/lang/String;
    .end local v7    # "iChannel":I
    :catch_1
    move-exception v3

    .line 2306
    .restart local v3    # "e":Ljava/lang/InterruptedException;
    const-string v9, "interrupted while trying to empty CBMI"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public updateCBMIR(Ljava/lang/String;)V
    .locals 14
    .param p1, "sChannels"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v13, -0x1

    .line 2320
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCBMIR : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2322
    const-string v10, "com.htc.permission.APP_DEFAULT"

    const-string v11, "updateCBMIR"

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v10

    if-nez v10, :cond_0

    .line 2327
    const-string v10, "updateCBMIR fails because getIccFileHandler is null"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2397
    :goto_0
    return-void

    .line 2331
    :cond_0
    const/4 v0, 0x0

    .line 2332
    .local v0, "bEmptyChannel":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-ne v10, v12, :cond_1

    .line 2333
    const/4 v0, 0x1

    .line 2336
    :cond_1
    iget-object v11, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2338
    const/4 v10, -0x1

    :try_start_0
    iput v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    .line 2339
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x9

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2340
    .local v7, "response":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v10

    const/16 v12, 0x6f50

    invoke-virtual {v10, v12, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2342
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2347
    :goto_1
    :try_start_2
    iget v4, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mTransparentEfSize:I

    .line 2348
    .local v4, "efSize":I
    if-ne v4, v13, :cond_2

    .line 2349
    const-string v10, "get CBMIR EF size fail, updateCBMIR fail!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2350
    monitor-exit v11

    goto :goto_0

    .line 2396
    .end local v4    # "efSize":I
    .end local v7    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 2343
    .restart local v7    # "response":Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 2344
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v10, "interrupted while trying to record count"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2354
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "efSize":I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CBMIR efSize="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2355
    new-array v3, v4, [B

    .line 2356
    .local v3, "ef":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 2357
    const/4 v10, -0x1

    aput-byte v10, v3, v6

    .line 2356
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2361
    :cond_3
    if-nez v0, :cond_4

    .line 2362
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2366
    .local v1, "chs":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_3
    array-length v10, v1

    if-ge v6, v10, :cond_4

    .line 2367
    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v10, v10, 0x4

    if-le v10, v4, :cond_5

    .line 2388
    .end local v1    # "chs":[Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x2

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 2389
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v10

    const/16 v12, 0x6f50

    invoke-virtual {v10, v12, v3, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2392
    :try_start_4
    iget-object v10, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2396
    :goto_4
    :try_start_5
    monitor-exit v11

    goto/16 :goto_0

    .line 2371
    .restart local v1    # "chs":[Ljava/lang/String;
    :cond_5
    aget-object v10, v1, v6

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v13, :cond_6

    .line 2372
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid CBMIR Channel : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v1, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2366
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2376
    :cond_6
    aget-object v10, v1, v6

    const-string v12, "-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 2378
    .local v9, "tmp":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2379
    .local v8, "startChannel":I
    mul-int/lit8 v10, v6, 0x4

    shr-int/lit8 v12, v8, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 2380
    mul-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v12, v8, 0xff

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 2382
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2383
    .local v5, "endChannel":I
    mul-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x2

    shr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    .line 2384
    mul-int/lit8 v10, v6, 0x4

    add-int/lit8 v10, v10, 0x3

    and-int/lit16 v12, v5, 0xff

    int-to-byte v12, v12

    aput-byte v12, v3, v10

    goto :goto_5

    .line 2393
    .end local v1    # "chs":[Ljava/lang/String;
    .end local v5    # "endChannel":I
    .end local v8    # "startChannel":I
    .end local v9    # "tmp":[Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2394
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    const-string v10, "interrupted while trying to empty CBMIR"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public updateMessageOnIccEf(Ljava/lang/String;II[B)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 1905
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z

    move-result v0

    .line 1908
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEfDefault(Ljava/lang/String;II[B)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMessageOnIccEfByFormat(ZII[B)Z
    .locals 8
    .param p1, "isCdmaFormat"    # Z
    .param p2, "index"    # I
    .param p3, "status"    # I
    .param p4, "pdu"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageOnIccEfByFormat/isCdmaFormat: cdma: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(no security flag)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2197
    iget-object v1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2198
    const-string v1, "updateMessageOnIccEfByFormat fails because getIccFileHandler is null"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2225
    :goto_0
    return v0

    .line 2202
    :cond_0
    const-string v0, "Updating message on RUIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 2203
    iget-object v7, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2204
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 2205
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 2207
    .local v5, "response":Landroid/os/Message;
    if-nez p3, :cond_2

    .line 2210
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2211
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2224
    :goto_2
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2225
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 2213
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p2, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_1

    .line 2224
    .end local v5    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2215
    .restart local v5    # "response":Landroid/os/Message;
    :cond_2
    :try_start_4
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 2216
    .local v3, "record":[B
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 2221
    .end local v3    # "record":[B
    :catch_0
    move-exception v6

    .line 2222
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public updateMessageOnIccEfWithType(Ljava/lang/String;ZII[B)Z
    .locals 16
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "isCdmaFormat"    # Z
    .param p3, "index"    # I
    .param p4, "status"    # I
    .param p5, "pdu"    # [B

    .prologue
    .line 1821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMessageOnIccEfWithType: index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ==> (no security flag)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1824
    const-string v5, "Updating message on SIM/RUIM"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 1825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCdmaFormat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1832
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v5

    float-to-double v12, v5

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    cmpl-double v5, v12, v14

    if-ltz v5, :cond_0

    .line 1833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0x16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v8, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 1835
    const/4 v5, 0x0

    .line 1887
    :goto_0
    return v5

    .line 1839
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1840
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    .line 1841
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1843
    .local v9, "response":Landroid/os/Message;
    if-nez p4, :cond_2

    .line 1846
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1

    .line 1847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, p3

    invoke-interface {v5, v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnRuim(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1882
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1886
    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1887
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    goto :goto_0

    .line 1849
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move/from16 v0, p3

    invoke-interface {v5, v0, v9}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V

    goto :goto_1

    .line 1886
    .end local v9    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 1853
    .restart local v9    # "response":Landroid/os/Message;
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v4

    .line 1854
    .local v4, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v4, :cond_3

    .line 1855
    invoke-virtual {v9}, Landroid/os/Message;->recycle()V

    .line 1856
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSuccess:Z

    monitor-exit v11

    goto :goto_0

    .line 1860
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    .line 1861
    const/16 v5, 0x6f3c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1865
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1870
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    if-nez v5, :cond_4

    .line 1871
    const-string v5, "EF record length is 0, updateMessageOnIccEfWithType fail!!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 1872
    const/4 v5, 0x0

    monitor-exit v11

    goto :goto_0

    .line 1866
    :catch_0
    move-exception v10

    .line 1867
    .local v10, "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to update by index"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1875
    .end local v10    # "e":Ljava/lang/InterruptedException;
    :cond_4
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLinearFixedEfRecordLength:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->makeSmsRecordDataWithType(ZI[BI)[B

    move-result-object v7

    .line 1877
    .local v7, "record":[B
    const/16 v5, 0x6f3c

    const/4 v8, 0x0

    move/from16 v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 1883
    .end local v4    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v7    # "record":[B
    :catch_1
    move-exception v10

    .line 1884
    .restart local v10    # "e":Ljava/lang/InterruptedException;
    const-string v5, "interrupted while trying to update by index"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public updateNvItem()V
    .locals 6

    .prologue
    .line 2570
    const-string v2, "ImsSmsInterfaceManager"

    const-string v3, "updateNvItem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2572
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.SEND_SMS"

    const-string v5, "updateNvItem"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2577
    .local v1, "response2":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const-string v4, "C8266B75"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommandEx(Ljava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2580
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2584
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 2585
    return-void

    .line 2581
    :catch_0
    move-exception v0

    .line 2582
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2584
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "response2":Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 645
    return-void
.end method

.method public updateSimSmsAsRead(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 2918
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimSmsAsRead: index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2919
    :cond_0
    const-string v3, "Updating message on Icc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 2920
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 2922
    const-string v3, "updateSimSmsAsRead: Without Permission!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 2937
    :cond_1
    :goto_0
    return v2

    .line 2926
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v3, p2}, Lcom/htc/internal/telephony/HtcSimSmsUtils;->getMessageFromIccEf(Lcom/android/internal/telephony/PhoneBase;I)[B

    move-result-object v1

    .line 2927
    .local v1, "pdu":[B
    if-eqz v1, :cond_1

    array-length v3, v1

    if-eqz v3, :cond_1

    .line 2933
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 2935
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [B

    .line 2936
    .local v0, "newPdu":[B
    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2937
    aget-byte v2, v1, v2

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updateMessageOnIccEf(Ljava/lang/String;II[B)Z

    move-result v2

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 1
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->enforceCarrierPrivilege()V

    .line 901
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->updateSmsSendStatus(IZ)V

    .line 902
    return-void
.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$000(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Ljava/util/List;
#    .locals 1
#    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
#    .prologue
#    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
#    return-object v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$002(Lcom/android/internal/telephony/IccSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
#    .locals 0
#    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
#    .param p1, "x1"    # Ljava/util/List;
#    .prologue
#    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mSms:Ljava/util/List;
#    return-object p1
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$100(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
#    .locals 1
#    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
#    .param p1, "x1"    # [Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;
#    .prologue
#    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCellBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)Z
#    move-result v0
#    return v0
#.end method

# Remove the first '#' if you want to enable this method. It might be invoked from codes of BOSP.
#.method static synthetic access$200(Lcom/android/internal/telephony/IccSmsInterfaceManager;[Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
#    .locals 1
#    .param p0, "x0"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;
#    .param p1, "x1"    # [Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;
#    .prologue
#    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;)Z
#    move-result v0
#    return v0
#.end method
