.class public final Lcom/android/internal/telephony/uicc/RuimRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final CT_MVNO_SPN_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CT_NETWORK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_KDDI_USER_AGENT_DONE:I = 0x67

.field private static final EVENT_GET_MIPUPP_DONE:I = 0x69

.field private static final EVENT_GET_MLPL_DONE:I = 0x6d

.field private static final EVENT_GET_MSPL_DONE:I = 0x6e

.field private static final EVENT_GET_RUIM_ID_DONE:I = 0x6c

.field private static final EVENT_GET_SF_EUIMID:I = 0x6a

.field private static final EVENT_GET_SIPUPP_DONE:I = 0x68

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_HTC_BASE:I = 0x64

.field private static final EVENT_LOAD_EFMODEL_DONE:I = 0x28

.field private static final EVENT_LOAD_EFSSFC_DONE:I = 0x29

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x65

.field private static final EVENT_PHONE_MODE_CHANGED_DONE:I = 0x6b

.field private static final EVENT_RIL_CDMA_RS_INFO:I = 0x66

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final EVENT_UPDATE_EFMODEL_DONE:I = 0x27

.field private static final IMSI_M_PROGRAMMED_BYTE:I = 0x8

.field private static final IMSI_M_RECORD_SIZE:I = 0xa

.field static final LOG_TAG:Ljava/lang/String; = "RuimRecords"

.field private static final SKU_ID:I


# instance fields
.field private htcAdditionalRecordsFetch:Z

.field mCsimSpnDisplayCondition:Z

.field private mEFli:[B

.field private mEFpl:[B

.field private mHomeNetworkId:Ljava/lang/String;

.field private mHomeSystemId:Ljava/lang/String;

.field private mImsi_M:Ljava/lang/String;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mKddiUserAgent:Ljava/lang/String;

.field private mMdn:Ljava/lang/String;

.field private mMin:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMobileIP_NAIs:[Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mOtaCommited:Z

.field private mPrlVersion:Ljava/lang/String;

.field private mRuimId:Ljava/lang/String;

.field private mRuimNumeirc:Ljava/lang/String;

.field public mSfEuimid:Ljava/lang/String;

.field private mSimpleIP_NAIs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v0, Lcom/android/internal/telephony/uicc/RuimRecords;->SKU_ID:I

    .line 2438
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "46003"

    aput-object v2, v1, v4

    const-string v2, "46011"

    aput-object v2, v1, v5

    const-string v2, "46012"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "20404"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "45404"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->CT_NETWORK_LIST:Ljava/util/ArrayList;

    .line 2441
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u963f\u91cc\u901a\u4fe1"

    aput-object v2, v1, v4

    const-string v2, "Alibaba"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/RuimRecords;->CT_MVNO_SPN_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    .line 141
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    .line 142
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    .line 143
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 258
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsControlledByIccCardProxy:Z

    .line 261
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 263
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 266
    iput v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 269
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->listenToBroadcastReceiver()V

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords X ctor this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # [B

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # [B

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimEprlDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # C

    .prologue
    .line 126
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/uicc/RuimRecords;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/uicc/RuimRecords;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/uicc/RuimRecords;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isDualPhoneWithCdmaSupport()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->setUimOperatorAlpha(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi_M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi_M:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/RuimRecords;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # [B

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingIMSI([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/RuimRecords;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # I

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->adjstMinDigits(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object p1
.end method

.method private adjstMinDigits(I)I
    .locals 1
    .param p1, "digits"    # I

    .prologue
    .line 432
    add-int/lit8 p1, p1, 0x6f

    .line 433
    rem-int/lit8 v0, p1, 0xa

    if-nez v0, :cond_0

    add-int/lit8 p1, p1, -0xa

    .line 434
    :cond_0
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_1

    add-int/lit8 p1, p1, -0x64

    .line 435
    :cond_1
    div-int/lit8 v0, p1, 0x64

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    add-int/lit16 p1, p1, -0x3e8

    .line 436
    :cond_2
    return p1
.end method

.method private clearInformationWhenRuimAbsent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2376
    const/4 v1, 0x0

    .line 2378
    .local v1, "isInfoFromRuim":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountCapability()[Z

    move-result-object v0

    .line 2379
    .local v0, "accCapas":[Z
    const/4 v2, 0x5

    aget-boolean v2, v0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2380
    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    if-nez v2, :cond_0

    .line 2381
    const/4 v1, 0x1

    .line 2385
    :cond_0
    if-eqz v1, :cond_1

    .line 2386
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 2387
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 2388
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 2389
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 2390
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSfEuimid:Ljava/lang/String;

    .line 2393
    :cond_1
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mKddiUserAgent:Ljava/lang/String;

    .line 2394
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi_M:Ljava/lang/String;

    .line 2395
    return-void
.end method

.method private fetchRuimRecords()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x64

    .line 1663
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1664
    const-string v1, "fetchRuimRecords() failed due to RuimReocrods has been destroyed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1773
    :goto_0
    return-void

    .line 1670
    :cond_0
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->htcAdditionalRecordsFetch:Z

    .line 1673
    iput-boolean v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    .line 1676
    iput-boolean v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 1678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1682
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1683
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f31

    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1684
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1688
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    .line 1689
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1691
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x2fe2

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1693
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1695
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x2f05

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1697
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1702
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_6

    const-string v0, "3F007FFF"

    .line 1704
    .local v0, "path":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f3a

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILjava/lang/String;Landroid/os/Message;)V

    .line 1707
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1709
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f41

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1711
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1713
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f44

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMdnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 1715
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1717
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f22

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1719
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1721
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f28

    new-instance v3, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;

    invoke-direct {v3, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimCdmaHomeLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 1723
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1727
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f5a

    const/4 v3, 0x4

    new-instance v4, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimEprlLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    .line 1729
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1733
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f32

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1735
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1739
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f20

    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1740
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1741
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f21

    const/16 v3, 0x6e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1742
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1746
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1747
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1751
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportKddiOtasp()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1752
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v1, v8, :cond_3

    .line 1753
    const-string v1, "RuimRecords"

    const-string v2, "query kddi user agent string..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6fe3

    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1756
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1762
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "cdma_support_sf_euimid"

    invoke-static {v1, v2, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1766
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x6f74

    const/16 v3, 0x6a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1767
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1771
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1702
    .end local v0    # "path":Ljava/lang/String;
    :cond_6
    const-string v0, "3F007F25"

    goto/16 :goto_1
.end method

.method private findBestLanguage([B)Ljava/lang/String;
    .locals 8
    .param p1, "languages"    # [B

    .prologue
    const/4 v5, 0x0

    .line 1456
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "assetLanguages":[Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    move-object v4, v5

    .line 1478
    :cond_1
    :goto_0
    return-object v4

    .line 1461
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v6, v2, 0x1

    array-length v7, p1

    if-ge v6, v7, :cond_4

    .line 1464
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, "ISO-8859-1"

    invoke-direct {v4, p1, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1470
    .local v4, "lang":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 1471
    aget-object v6, v0, v3

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1470
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1465
    .end local v3    # "j":I
    .end local v4    # "lang":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "Failed to parse SIM language records"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1461
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_3
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_4
    move-object v4, v5

    .line 1478
    goto :goto_0
.end method

.method private static getAssetLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1440
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v3

    .line 1441
    .local v3, "locales":[Ljava/lang/String;
    array-length v5, v3

    new-array v1, v5, [Ljava/lang/String;

    .line 1442
    .local v1, "localeLangs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 1443
    aget-object v2, v3, v0

    .line 1444
    .local v2, "localeStr":Ljava/lang/String;
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1445
    .local v4, "separator":I
    if-gez v4, :cond_0

    .line 1446
    aput-object v2, v1, v0

    .line 1442
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v0

    goto :goto_1

    .line 1452
    .end local v2    # "localeStr":Ljava/lang/String;
    .end local v4    # "separator":I
    :cond_1
    return-object v1
.end method

.method private getKddiUserAgentString([B)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # [B

    .prologue
    const/4 v5, 0x0

    .line 2101
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_3

    .line 2102
    :cond_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2103
    const-string v4, "RuimRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKddiUserAgentString - value: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_2

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_1
    const-string v3, ""

    .line 2122
    :goto_1
    return-object v3

    .line 2103
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 2109
    :cond_3
    array-length v1, p1

    .line 2110
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_4

    .line 2114
    aget-byte v3, p1, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 2115
    move v1, v0

    .line 2120
    :cond_4
    new-array v2, v1, [B

    .line 2121
    .local v2, "str":[B
    invoke-static {p1, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2122
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 2110
    .end local v2    # "str":[B
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 4
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1953
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    const-string v0, "handleRuimRefresh() failed due to RuimReocrods has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 1958
    :cond_1
    if-nez p1, :cond_2

    .line 1959
    const-string v0, "handleRuimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    sparse-switch v0, :sswitch_data_0

    .line 2036
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1974
    :sswitch_0
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_4

    .line 1978
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 1981
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 1983
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    const/16 v1, 0x6f3a

    if-ne v0, v1, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 1992
    :sswitch_1
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1995
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 1999
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onIccRefreshInit()V

    .line 2000
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->dropSimPbkEntries()V

    goto :goto_0

    .line 2003
    :sswitch_2
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->requirePowerOffOnSimRefreshReset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2005
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 2024
    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "build_phone_feature_stand_by"

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2026
    :cond_6
    const-string v0, "handleSimRefresh reset flag"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2027
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2028
    invoke-static {}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->clearCardSetup(Z)V

    goto/16 :goto_0

    .line 2009
    :cond_7
    const/high16 v0, 0x20000000

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2011
    const-string v0, "handleSimRefresh set power off"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2012
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_1

    .line 1972
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private htcConvertOctetToString([B)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 2246
    const/4 v0, 0x0

    .line 2247
    .local v0, "convertedStr":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2249
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, p1

    const-string v4, "ISO-8859-1"

    invoke-direct {v1, p1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "convertedStr":Ljava/lang/String;
    .local v1, "convertedStr":Ljava/lang/String;
    move-object v0, v1

    .line 2252
    .end local v1    # "convertedStr":Ljava/lang/String;
    .restart local v0    # "convertedStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 2250
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private htcReadAdditionRecords()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2213
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->htcAdditionalRecordsFetch:Z

    if-eqz v3, :cond_1

    .line 2229
    :cond_0
    :goto_0
    return v1

    .line 2217
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->htcAdditionalRecordsFetch:Z

    .line 2219
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->isOmhPossibleRuim(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2220
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2221
    .local v0, "iccFh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/16 v1, 0x6f4c

    const/16 v3, 0x68

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2223
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 2224
    const/16 v1, 0x6f4d

    const/16 v3, 0x69

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 2226
    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    move v1, v2

    .line 2227
    goto :goto_0
.end method

.method private isAllowSetCDMAProperty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2424
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualCGPhone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualCGGGSwitchPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gsm.current.cg.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->isDualGCPhone()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 2429
    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDualPhoneWithCdmaSupport()Z
    .locals 2

    .prologue
    .line 2200
    const v0, 0x40000002    # 2.0000005f

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x20000002

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnMatchingPlmn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1833
    if-nez p1, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return v0

    .line 1837
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1838
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private listenToBroadcastReceiver()V
    .locals 4

    .prologue
    .line 2259
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2260
    const-string v1, "listenToBroadcastReceiver() failed due to RuimRecords has been destroyed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2290
    :cond_0
    :goto_0
    return-void

    .line 2265
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 2266
    new-instance v1, Lcom/android/internal/telephony/uicc/RuimRecords$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/RuimRecords$1;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2287
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.htc.intent.action.RESTORE_APN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2288
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onGetCSimEprlDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v5, 0x3

    .line 796
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 797
    .local v0, "data":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM_EPRL="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 800
    array-length v3, v0

    if-le v3, v5, :cond_0

    .line 801
    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v0, v5

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 802
    .local v2, "prlId":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 804
    .end local v2    # "prlId":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSIM PRL version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 805
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 806
    .local v1, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 807
    const-string v3, "got slot 2 EPRL"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 808
    const-string v3, "cdma.eprl.version.slot2"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :goto_1
    return-void

    .line 805
    .end local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 810
    .restart local v1    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    const-string v3, "got slot 1 EPRL"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 811
    const-string v3, "cdma.eprl.version.slot1"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private parsingIMSI([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    .line 2309
    const-string v6, ""

    .line 2310
    .local v6, "parsed_Mcc":Ljava/lang/String;
    const-string v1, ""

    .line 2311
    .local v1, "parsed_IMSI_11_12":Ljava/lang/String;
    const-string v5, ""

    .line 2312
    .local v5, "parsed_M_S2":Ljava/lang/String;
    const-string v2, ""

    .line 2313
    .local v2, "parsed_M_S1p1":Ljava/lang/String;
    const/16 v3, 0x20

    .line 2314
    .local v3, "parsed_M_S1p2":C
    const-string v4, ""

    .line 2316
    .local v4, "parsed_M_S1p3":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2318
    .local v7, "value":I
    const/16 v8, 0x9

    :try_start_0
    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/16 v9, 0x8

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    .line 2319
    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v6

    .line 2320
    const/4 v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit8 v7, v8, 0x7f

    .line 2321
    const/4 v8, 0x2

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v1

    .line 2322
    const/4 v8, 0x2

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/4 v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    .line 2323
    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v5

    .line 2324
    const/4 v8, 0x5

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x2

    and-int/lit16 v8, v8, 0x3fc

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    shr-int/lit8 v9, v9, 0x6

    and-int/lit8 v9, v9, 0x3

    or-int v7, v8, v9

    .line 2325
    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;

    move-result-object v2

    .line 2326
    const/4 v8, 0x4

    aget-byte v8, p1, v8

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v7, v8, 0xf

    .line 2327
    const/16 v8, 0xa

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, 0x30

    int-to-char v3, v8

    .line 2328
    :goto_0
    const/4 v8, 0x4

    aget-byte v8, p1, v8

    shl-int/lit8 v8, v8, 0x8

    and-int/lit16 v8, v8, 0x300

    const/4 v9, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    or-int v7, v8, v9

    .line 2329
    const/4 v8, 0x3

    invoke-direct {p0, v8, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->parsingImsiDigits(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2333
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2335
    .local v0, "parsed_IMSI":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_1

    .line 2336
    :cond_0
    const/4 v0, 0x0

    .line 2338
    .end local v0    # "parsed_IMSI":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 2327
    :cond_2
    const/16 v3, 0x30

    goto :goto_0

    .line 2330
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method private parsingImsiDigits(II)Ljava/lang/String;
    .locals 8
    .param p1, "digits"    # I
    .param p2, "combinedValue"    # I

    .prologue
    .line 2344
    const/4 v4, 0x0

    .line 2346
    .local v4, "ret":I
    const/16 v0, 0xa

    .line 2347
    .local v0, "factor":I
    const/4 v2, 0x1

    .line 2348
    .local v2, "inc":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 2349
    add-int/2addr v2, v0

    .line 2350
    mul-int/lit8 v0, v0, 0xa

    .line 2348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2352
    :cond_0
    add-int/2addr p2, v2

    .line 2354
    const/16 v0, 0xa

    .line 2355
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 2356
    rem-int v3, p2, v0

    .line 2357
    .local v3, "reminder":I
    add-int/2addr v4, v3

    .line 2358
    if-nez v3, :cond_1

    .line 2359
    sub-int/2addr p2, v0

    .line 2361
    :cond_1
    sub-int/2addr p2, v3

    .line 2363
    mul-int/lit8 v0, v0, 0xa

    .line 2355
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2365
    .end local v3    # "reminder":I
    :cond_2
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2366
    .local v5, "retString":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, p1, :cond_3

    .line 2367
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 2369
    :cond_3
    return-object v5
.end method

.method private setLocaleFromCsim()V
    .locals 5

    .prologue
    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1484
    const-string v3, "setLocaleFromCsim() failed due to RuimReocrods has been destroyed."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1510
    :goto_0
    return-void

    .line 1489
    :cond_0
    const/4 v2, 0x0

    .line 1491
    .local v2, "prefLang":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 1493
    if-nez v2, :cond_1

    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->findBestLanguage([B)Ljava/lang/String;

    move-result-object v2

    .line 1497
    :cond_1
    if-eqz v2, :cond_3

    .line 1499
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    .line 1500
    .local v1, "imsi":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1501
    .local v0, "country":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1502
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1505
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting locale to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1506
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0}, Lcom/android/internal/telephony/MccTable;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_3
    const-string v3, "No suitable CSIM selected locale"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 2092
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :cond_0
    return-void
.end method

.method private setUimOperatorAlpha(Ljava/lang/String;)V
    .locals 4
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isReportImsiFromeMe()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1828
    :cond_0
    :goto_0
    return-void

    .line 1825
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isAllowSetCDMAProperty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    :cond_2
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method private stopListeningBroadcastReceiver()V
    .locals 2

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    const-string v0, "stopListeningBroadcastReceiver() failed due to RuimRecords has been destroyed."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2300
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 2301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method private static trimOffTrailingChars(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "ch"    # C

    .prologue
    .line 2128
    if-eqz p0, :cond_1

    .line 2129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2131
    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2134
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2136
    .end local v0    # "len":I
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateEFRuimModel()V
    .locals 13

    .prologue
    const/16 v9, 0x3c

    const/4 v12, 0x1

    const/16 v8, 0x20

    const/4 v11, 0x0

    .line 1869
    const/16 v0, 0x7e

    .line 1870
    .local v0, "EFModelSize":I
    const/16 v4, 0x20

    .line 1871
    .local v4, "modelInformationSize":I
    const/16 v3, 0x20

    .line 1872
    .local v3, "manufacturerNameSize":I
    const/16 v5, 0x3c

    .line 1873
    .local v5, "swVersionInfoSize":I
    const/16 v10, 0x7e

    new-array v1, v10, [B

    .line 1877
    .local v1, "data":[B
    aput-byte v11, v1, v11

    .line 1878
    aput-byte v12, v1, v12

    .line 1879
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v10, v1

    if-ge v2, v10, :cond_0

    .line 1880
    const/4 v10, -0x1

    aput-byte v10, v1, v2

    .line 1879
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1883
    :cond_0
    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1884
    .local v6, "tempData":[B
    array-length v10, v6

    if-le v10, v8, :cond_1

    move v7, v8

    .line 1885
    .local v7, "tempLength":I
    :goto_1
    const/4 v10, 0x2

    invoke-static {v6, v11, v1, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1887
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 1888
    array-length v10, v6

    if-le v10, v8, :cond_2

    move v7, v8

    .line 1889
    :goto_2
    const/16 v8, 0x22

    invoke-static {v6, v11, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1892
    array-length v8, v6

    if-le v8, v9, :cond_3

    move v7, v9

    .line 1893
    :goto_3
    const/16 v8, 0x42

    invoke-static {v6, v11, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1895
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v9, 0x6f90

    const/16 v10, 0x27

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v9, v1, v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1898
    const-string v8, "RuimRecords"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "org EFModel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    return-void

    .line 1884
    .end local v7    # "tempLength":I
    :cond_1
    array-length v7, v6

    goto :goto_1

    .line 1888
    .restart local v7    # "tempLength":I
    :cond_2
    array-length v7, v6

    goto :goto_2

    .line 1892
    :cond_3
    array-length v7, v6

    goto :goto_3
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing RuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 303
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->stopListeningBroadcastReceiver()V

    .line 305
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 306
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    .line 2147
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2148
    const-string v4, "dropSimPbkEntries() failed due to RuimReocrods has been destroyed."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    :try_start_0
    const-string v4, "simphonebook"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 2156
    .local v3, "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v3, :cond_0

    .line 2159
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v2

    .line 2163
    .local v2, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x2

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

    const/4 v5, 0x2

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/IIccPhoneBook;->isSIMPBKHandlerTypeForPhoneId(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2168
    :cond_3
    const-string v4, "dropSimPbkEntries"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 2171
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntriesForPhoneId(I)V

    .line 2177
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.intent.action.SIM_REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v1, "notifyIntent":Landroid/content/Intent;
    if-eqz v2, :cond_4

    .line 2180
    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v1, v4}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 2183
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2188
    .end local v1    # "notifyIntent":Landroid/content/Intent;
    .end local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 2159
    .restart local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 2175
    .restart local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_6
    invoke-interface {v3}, Lcom/android/internal/telephony/IIccPhoneBook;->dropSimPbkEntries()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 2190
    .end local v2    # "phone":Lcom/android/internal/telephony/PhoneBase;
    .end local v3    # "simIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_1
    move-exception v0

    .line 2191
    .local v0, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mOtaCommited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMyMobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEFpl[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEFli[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2086
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2087
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 310
    const-string v0, "RuimRecords finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public getCdmaIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi_M:Ljava/lang/String;

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method public getCsimSpnDisplayCondition()Z
    .locals 1

    .prologue
    .line 2058
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    return v0
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 3
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1783
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 1812
    :cond_0
    :goto_0
    return v0

    .line 1789
    :cond_1
    const/4 v0, 0x0

    .line 1791
    .local v0, "rule":I
    const-string v2, "ro.rule.show.plmn"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1792
    const/4 v0, 0x2

    .line 1793
    goto :goto_0

    .line 1794
    :cond_2
    const-string v2, "ro.rule.show.spn"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1795
    const/4 v0, 0x1

    .line 1796
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1803
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    if-nez v1, :cond_4

    .line 1805
    const/4 v0, 0x2

    goto :goto_0

    .line 1806
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->isOnMatchingPlmn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1807
    const/4 v0, 0x1

    goto :goto_0

    .line 1809
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getIMSI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method protected getIccOperatorNumeric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    return-object v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileIP_NAIs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2241
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method public getNid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 383
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 444
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 445
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    const/4 v2, 0x0

    .line 488
    :goto_0
    return-object v2

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimNumeirc:Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-eqz v2, :cond_4

    .line 458
    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    if-ne v2, v6, :cond_3

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 466
    :cond_3
    const-string v2, "RuimRecords"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuimRecords: mncLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "mcc":I
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_append_operator_numeric"

    invoke-static {v2, v3, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    .line 482
    .local v1, "needToAppend":Z
    if-eqz v1, :cond_5

    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 488
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getRuimId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleIP_NAIs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 2

    .prologue
    .line 1936
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1937
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    .line 1938
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v1

    .line 1940
    :goto_0
    return v1

    .restart local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageWaiting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1943
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1944
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_2

    .line 1945
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1945
    goto :goto_0

    .line 1947
    .restart local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getVoiceMessageCount()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 37
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 821
    const/16 v23, 0x0

    .line 823
    .local v23, "isRecordLoadResponse":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v33

    if-eqz v33, :cond_1

    .line 824
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Received message "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "] while being destroyed. Ignoring."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v33, v0

    sparse-switch v33, :sswitch_data_0

    .line 1420
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1427
    :cond_2
    :goto_1
    if-eqz v23, :cond_0

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 831
    :sswitch_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onReady()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1422
    :catch_0
    move-exception v19

    .line 1424
    .local v19, "exc":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v33, "RuimRecords"

    const-string v34, "Exception parsing RUIM record"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1427
    if-eqz v23, :cond_0

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto :goto_0

    .line 835
    .end local v19    # "exc":Ljava/lang/RuntimeException;
    :sswitch_1
    :try_start_3
    const-string v33, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1427
    :catchall_0
    move-exception v33

    if-eqz v23, :cond_3

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    :cond_3
    throw v33

    .line 840
    :sswitch_2
    const/16 v23, 0x1

    .line 842
    :try_start_4
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 845
    .local v10, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v33

    sget-object v34, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-eq v0, v1, :cond_4

    .line 846
    const-string v33, "RuimRecords"

    const-string v34, "Querying IMSI done, but ParentApp is not ready state."

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 851
    :cond_4
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 852
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Exception querying IMSI, Exception:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 856
    :cond_5
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0x6

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    const/16 v34, 0xf

    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->htcIsAllHexDigits(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 866
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "IMSI: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x6

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "xxxxxxxxx"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 922
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v27

    .line 923
    .local v27, "operatorNumeric":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "NO update mccmnc="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_2

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/HtcIsimData;->SetCDMA_IMSI(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 868
    .end local v27    # "operatorNumeric":Ljava/lang/String;
    :cond_6
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, " get imsi value may be wrong: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi_M:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    goto :goto_2

    .line 935
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    const/16 v23, 0x1

    .line 936
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 937
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [Ljava/lang/String;

    move-object/from16 v0, v33

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    .line 938
    .local v24, "localTemp":[Ljava/lang/String;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    .line 942
    const/16 v33, 0x0

    aget-object v33, v24, v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 943
    const/16 v33, 0x3

    aget-object v33, v24, v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 946
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_9

    .line 948
    const/16 v33, 0x4

    aget-object v33, v24, v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    if-nez v33, :cond_8

    .line 953
    :cond_7
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No PRL version in RIL_CDMA_SUBSCRIPTION : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 968
    :cond_8
    :goto_3
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MDN: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " MIN: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 959
    :cond_9
    const/16 v33, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneType()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 961
    const/16 v23, 0x0

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v33, v0

    const/16 v34, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    goto :goto_3

    .line 964
    :cond_a
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "No PRL version required in RIL_CDMA_SUBSCRIPTION, phonetype: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneType()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 972
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "localTemp":[Ljava/lang/String;
    :sswitch_4
    const/16 v23, 0x1

    .line 974
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 975
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 977
    .local v13, "data":[B
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    .line 983
    const/16 v33, 0x0

    array-length v0, v13

    move/from16 v34, v0

    move/from16 v0, v33

    move/from16 v1, v34

    invoke-static {v13, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToStringwithChar([BII)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 987
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "iccid: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/HtcBuildUtils;->displayIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccidwithchar:Ljava/lang/String;

    .line 991
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "iccidwithchar: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccidwithchar:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/telephony/HtcBuildUtils;->displayIccId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 997
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_5
    sget-boolean v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 998
    const-string v33, "RuimRecords"

    const-string v34, "receive EVENT_GET_KDDI_USER_AGENT_DONE"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_b
    const/16 v23, 0x1

    .line 1002
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1004
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    if-nez v10, :cond_c

    .line 1005
    const-string v33, "RuimRecords"

    const-string v34, "EVENT_GET_KDDI_USER_AGENT_DONE error, null result"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1007
    :cond_c
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_d

    .line 1008
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EVENT_GET_KDDI_USER_AGENT_DONE exception: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v31, Ljava/io/StringWriter;

    invoke-direct/range {v31 .. v31}, Ljava/io/StringWriter;-><init>()V

    .line 1010
    .local v31, "sw":Ljava/io/StringWriter;
    new-instance v17, Ljava/io/PrintWriter;

    move-object/from16 v0, v17

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1011
    .local v17, "errWriter":Ljava/io/PrintWriter;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1012
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EVENT_GET_KDDI_USER_AGENT_DONE exception: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v31 .. v31}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1014
    .end local v17    # "errWriter":Ljava/io/PrintWriter;
    .end local v31    # "sw":Ljava/io/StringWriter;
    :cond_d
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    check-cast v33, [B

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getKddiUserAgentString([B)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mKddiUserAgent:Ljava/lang/String;

    goto/16 :goto_1

    .line 1027
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1028
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EVENT_UPDATE_EFMODEL_DONE ar: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1032
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1033
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1035
    .restart local v13    # "data":[B
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_e

    .line 1036
    const-string v33, "RuimRecords"

    const-string v34, "Load EFMODEL exception!"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1040
    :cond_e
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dst EFModel: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1044
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1045
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1047
    .restart local v13    # "data":[B
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_f

    .line 1048
    const-string v33, "RuimRecords"

    const-string v34, "Load EFSSFC exception!"

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1051
    :cond_f
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EFSSFC: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1063
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1064
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2

    .line 1065
    const-string v33, "RuimRecords"

    const-string v34, "RuimRecords update failed"

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1073
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Event not supported: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1078
    :sswitch_b
    const-string v33, "Event EVENT_GET_SST_DONE Received"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1081
    const/16 v23, 0x1

    .line 1083
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1084
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_10

    .line 1085
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Exception querying CST, Exception:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1088
    :cond_10
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v12, v0

    .line 1089
    .local v12, "cst":[B
    if-eqz v12, :cond_2

    array-length v0, v12

    move/from16 v33, v0

    if-lez v33, :cond_2

    .line 1090
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EF_CST[0]: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    aget-byte v35, v12, v35

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/16 v33, 0x0

    aget-byte v33, v12, v33

    and-int/lit8 v33, v33, 0x2

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_11

    const/16 v33, 0x1

    :goto_4
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsFdnEnabled:Z

    .line 1093
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "mIsFdnEnabled:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsFdnEnabled:Z

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1092
    :cond_11
    const/16 v33, 0x0

    goto :goto_4

    .line 1100
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v12    # "cst":[B
    :sswitch_c
    const/16 v23, 0x0

    .line 1101
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1102
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    .line 1103
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto/16 :goto_1

    .line 1108
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1110
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v33

    sget-object v34, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 1113
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [I

    move-object/from16 v0, v33

    check-cast v0, [I

    move-object/from16 v22, v0

    .line 1114
    .local v22, "ints":[I
    const/16 v33, 0x0

    aget v28, v22, v33

    .line 1115
    .local v28, "otaStatus":I
    const/16 v33, 0x8

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    sget v33, Lcom/android/internal/telephony/uicc/RuimRecords;->SKU_ID:I

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_12

    const/16 v33, 0xf

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    :cond_12
    const/16 v33, 0xa

    move/from16 v0, v28

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    const/16 v33, 0x12

    move/from16 v0, v28

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 1125
    :cond_13
    const-string v33, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto/16 :goto_1

    .line 1135
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v22    # "ints":[I
    .end local v28    # "otaStatus":I
    :sswitch_e
    const/16 v23, 0x1

    .line 1136
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1137
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_14

    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    if-nez v33, :cond_15

    .line 1138
    :cond_14
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "EVENT_RIL_CDMA_RS_INFO ex="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1140
    :cond_15
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_1

    .line 1147
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_f
    const/16 v23, 0x1

    .line 1149
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1150
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_16

    .line 1151
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Get SIPUPP fail:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1154
    :cond_16
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1156
    .restart local v13    # "data":[B
    const/16 v33, 0x0

    aget-byte v33, v13, v33

    move/from16 v0, v33

    and-int/lit16 v14, v0, 0xff

    .line 1157
    .local v14, "datalen":I
    array-length v0, v13

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-le v14, v0, :cond_17

    .line 1158
    array-length v0, v13

    move/from16 v33, v0

    add-int/lit8 v14, v33, -0x1

    .line 1160
    :cond_17
    new-array v0, v14, [B

    move-object/from16 v32, v0

    .line 1161
    .local v32, "uppb":[B
    const/16 v33, 0x1

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v13, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1162
    new-instance v21, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1163
    .local v21, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v33

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_2

    .line 1165
    const/16 v33, 0x4

    :try_start_5
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 1166
    .local v8, "NUM_NAI":I
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    .line 1167
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v8, :cond_2

    .line 1168
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    const/16 v34, 0x10

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_19

    .line 1169
    const/16 v33, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1170
    .local v6, "NAI_ENTRY_INDEX":I
    const/16 v33, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1171
    .local v7, "NAI_LENGTH":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    mul-int/lit8 v34, v7, 0x8

    add-int/lit8 v34, v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_18

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    move-object/from16 v33, v0

    mul-int/lit8 v34, v7, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->htcConvertOctetToString([B)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v33, v20

    .line 1174
    const/16 v33, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 1181
    .local v3, "AUTH_ALGORITHM":I
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SIP ICC"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1167
    .end local v3    # "AUTH_ALGORITHM":I
    .end local v6    # "NAI_ENTRY_INDEX":I
    .end local v7    # "NAI_LENGTH":I
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1185
    .restart local v6    # "NAI_ENTRY_INDEX":I
    .restart local v7    # "NAI_LENGTH":I
    :cond_18
    move/from16 v20, v8

    goto :goto_6

    .line 1189
    .end local v6    # "NAI_ENTRY_INDEX":I
    .end local v7    # "NAI_LENGTH":I
    :cond_19
    move/from16 v20, v8

    goto :goto_6

    .line 1192
    .end local v8    # "NUM_NAI":I
    .end local v20    # "i":I
    :catch_1
    move-exception v18

    .line 1193
    .local v18, "ex":Ljava/lang/Exception;
    :try_start_6
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Get SIPUPP error:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1199
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    .end local v14    # "datalen":I
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v21    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v32    # "uppb":[B
    :sswitch_10
    const/16 v23, 0x1

    .line 1201
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1202
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1a

    .line 1203
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Get MIPUPP fail:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1206
    :cond_1a
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1208
    .restart local v13    # "data":[B
    const/16 v33, 0x0

    aget-byte v33, v13, v33

    move/from16 v0, v33

    and-int/lit16 v14, v0, 0xff

    .line 1209
    .restart local v14    # "datalen":I
    array-length v0, v13

    move/from16 v33, v0

    add-int/lit8 v33, v33, -0x1

    move/from16 v0, v33

    if-le v14, v0, :cond_1b

    .line 1210
    array-length v0, v13

    move/from16 v33, v0

    add-int/lit8 v14, v33, -0x1

    .line 1212
    :cond_1b
    new-array v0, v14, [B

    move-object/from16 v32, v0

    .line 1213
    .restart local v32    # "uppb":[B
    const/16 v33, 0x1

    const/16 v34, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    move/from16 v2, v34

    invoke-static {v13, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1214
    new-instance v21, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1215
    .restart local v21    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v33

    const/16 v34, 0x10

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_2

    .line 1217
    const/16 v33, 0x1

    :try_start_7
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 1218
    .local v9, "RETRY_INFO_INCLUDED":I
    if-eqz v9, :cond_1c

    .line 1219
    const/16 v33, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1221
    :cond_1c
    const/16 v33, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 1222
    .restart local v8    # "NUM_NAI":I
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    .line 1223
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_7
    move/from16 v0, v20

    if-ge v0, v8, :cond_2

    .line 1224
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    const/16 v34, 0x77

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_21

    .line 1225
    const/16 v33, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1226
    .restart local v6    # "NAI_ENTRY_INDEX":I
    const/16 v33, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 1227
    .restart local v7    # "NAI_LENGTH":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    mul-int/lit8 v34, v7, 0x8

    add-int/lit8 v34, v34, 0x6b

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_20

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    move-object/from16 v33, v0

    mul-int/lit8 v34, v7, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->htcConvertOctetToString([B)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v33, v20

    .line 1236
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MIP ICC"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1238
    const/16 v33, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1239
    const/16 v33, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1240
    .local v4, "MN_AAA_SPI_INDICATOR":I
    if-eqz v4, :cond_1d

    .line 1241
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    const/16 v34, 0x25

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_1f

    .line 1242
    const/16 v33, 0x20

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1248
    :cond_1d
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_1e

    .line 1249
    const/16 v33, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1250
    const/16 v33, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1251
    .local v5, "MN_HA_SPI_INDICATOR":I
    if-eqz v5, :cond_1e

    .line 1252
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v33

    const/16 v34, 0x20

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_1e

    .line 1253
    const/16 v33, 0x20

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1223
    .end local v4    # "MN_AAA_SPI_INDICATOR":I
    .end local v5    # "MN_HA_SPI_INDICATOR":I
    .end local v6    # "NAI_ENTRY_INDEX":I
    .end local v7    # "NAI_LENGTH":I
    :cond_1e
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_7

    .line 1245
    .restart local v4    # "MN_AAA_SPI_INDICATOR":I
    .restart local v6    # "NAI_ENTRY_INDEX":I
    .restart local v7    # "NAI_LENGTH":I
    :cond_1f
    move/from16 v20, v8

    goto :goto_8

    .line 1259
    .end local v4    # "MN_AAA_SPI_INDICATOR":I
    :cond_20
    move/from16 v20, v8

    goto :goto_9

    .line 1263
    .end local v6    # "NAI_ENTRY_INDEX":I
    .end local v7    # "NAI_LENGTH":I
    :cond_21
    move/from16 v20, v8

    goto :goto_9

    .line 1266
    .end local v8    # "NUM_NAI":I
    .end local v9    # "RETRY_INFO_INCLUDED":I
    .end local v20    # "i":I
    :catch_2
    move-exception v18

    .line 1267
    .restart local v18    # "ex":Ljava/lang/Exception;
    :try_start_8
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Get MIPUPP error:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1276
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    .end local v14    # "datalen":I
    .end local v18    # "ex":Ljava/lang/Exception;
    .end local v21    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v32    # "uppb":[B
    :sswitch_11
    const/16 v23, 0x1

    .line 1278
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1279
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_22

    .line 1280
    const-string v33, "RuimRecords"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Get SF_EUIMID fail:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1283
    :cond_22
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1285
    .restart local v13    # "data":[B
    if-eqz v13, :cond_26

    array-length v0, v13

    move/from16 v33, v0

    const/16 v34, 0x7

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_26

    .line 1286
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 1287
    .local v30, "strBuf":Ljava/lang/StringBuilder;
    array-length v0, v13

    move/from16 v33, v0

    add-int/lit8 v20, v33, -0x1

    .line 1288
    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_25

    .line 1289
    aget-byte v33, v13, v20

    shr-int/lit8 v33, v33, 0x4

    and-int/lit8 v15, v33, 0xf

    .line 1290
    .local v15, "digit1":I
    const/16 v33, 0xa

    move/from16 v0, v33

    if-ge v15, v0, :cond_23

    .line 1291
    add-int/lit8 v33, v15, 0x30

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1296
    :goto_b
    aget-byte v33, v13, v20

    and-int/lit8 v16, v33, 0xf

    .line 1297
    .local v16, "digit2":I
    const/16 v33, 0xa

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1298
    add-int/lit8 v33, v16, 0x30

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1303
    :goto_c
    add-int/lit8 v20, v20, -0x1

    .line 1304
    goto :goto_a

    .line 1294
    .end local v16    # "digit2":I
    :cond_23
    add-int/lit8 v33, v15, -0xa

    add-int/lit8 v33, v33, 0x61

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 1301
    .restart local v16    # "digit2":I
    :cond_24
    add-int/lit8 v33, v16, -0xa

    add-int/lit8 v33, v33, 0x61

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 1305
    .end local v15    # "digit1":I
    .end local v16    # "digit2":I
    :cond_25
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mSfEuimid:Ljava/lang/String;

    .line 1306
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SF_EUIMID: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSfEuimid:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x6

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "xxxxxxxxx"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1309
    .end local v20    # "i":I
    .end local v30    # "strBuf":Ljava/lang/StringBuilder;
    :cond_26
    const-string v34, "RuimRecords"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Empty SF_EUIMID len:"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    if-eqz v13, :cond_27

    array-length v0, v13

    move/from16 v33, v0

    :goto_d
    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_27
    const/16 v33, -0x1

    goto :goto_d

    .line 1318
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v33

    sget-object v34, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    if-ne v0, v1, :cond_2

    .line 1319
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto/16 :goto_1

    .line 1325
    :sswitch_13
    const/16 v23, 0x1

    .line 1326
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1327
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1328
    .restart local v13    # "data":[B
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-nez v33, :cond_2

    .line 1332
    array-length v0, v13

    move/from16 v33, v0

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_2

    .line 1333
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v11, v0, [B

    .line 1334
    .local v11, "b":[B
    const/16 v33, 0x0

    const/16 v34, 0x4

    aget-byte v34, v13, v34

    aput-byte v34, v11, v33

    .line 1335
    const/16 v33, 0x1

    const/16 v34, 0x3

    aget-byte v34, v13, v34

    aput-byte v34, v11, v33

    .line 1336
    const/16 v33, 0x2

    const/16 v34, 0x2

    aget-byte v34, v13, v34

    aput-byte v34, v11, v33

    .line 1337
    const/16 v33, 0x3

    const/16 v34, 0x1

    aget-byte v34, v13, v34

    aput-byte v34, v11, v33

    .line 1339
    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;

    .line 1340
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v33

    if-eqz v33, :cond_28

    .line 1341
    const-string v33, "gsm.cdma.uim.id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1344
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isAllowSetCDMAProperty()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1345
    const-string v33, "gsm.cdma.uim.id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1359
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "b":[B
    .end local v13    # "data":[B
    :sswitch_14
    const/16 v23, 0x1

    .line 1361
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1362
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_29

    .line 1363
    const-string v33, "RuimRecords"

    const-string v34, "Exception while GET MLPL, Exception:"

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1367
    :cond_29
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1368
    .restart local v13    # "data":[B
    if-nez v13, :cond_2a

    .line 1369
    const-string v33, "Invalid MLPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1427
    if-eqz v23, :cond_0

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto/16 :goto_0

    .line 1373
    :cond_2a
    :try_start_9
    sget-boolean v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v33, :cond_2b

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MLPL="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1374
    :cond_2b
    array-length v0, v13

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2

    .line 1375
    const/16 v33, 0x3

    aget-byte v33, v13, v33

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shl-int/lit8 v33, v33, 0x8

    const/16 v34, 0x4

    aget-byte v34, v13, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    or-int v25, v33, v34

    .line 1376
    .local v25, "mlplVersion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v33

    if-eqz v33, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    .line 1377
    .local v29, "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_e
    if-eqz v29, :cond_2d

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_2d

    .line 1378
    const-string v33, "got slot 2 MLPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1379
    const-string v33, "cdma.mlpl.version.slot2"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :goto_f
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MLPL version="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1376
    .end local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2c
    const/16 v29, 0x0

    goto :goto_e

    .line 1381
    .restart local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_2d
    const-string v33, "got slot 1 MLPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1382
    const-string v33, "cdma.mlpl.version.slot1"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 1388
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v13    # "data":[B
    .end local v25    # "mlplVersion":I
    .end local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_15
    const/16 v23, 0x1

    .line 1390
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 1391
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v33, v0

    if-eqz v33, :cond_2e

    .line 1392
    const-string v33, "RuimRecords"

    const-string v34, "Exception while GET MSPL, Exception:"

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v35, v0

    invoke-static/range {v33 .. v35}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1396
    :cond_2e
    iget-object v0, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, [B

    move-object/from16 v0, v33

    check-cast v0, [B

    move-object v13, v0

    .line 1397
    .restart local v13    # "data":[B
    if-nez v13, :cond_2f

    .line 1398
    const-string v33, "Invalid MSPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1427
    if-eqz v23, :cond_0

    .line 1428
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onRecordLoaded()V

    goto/16 :goto_0

    .line 1402
    :cond_2f
    :try_start_a
    sget-boolean v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v33, :cond_30

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MSPL="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1403
    :cond_30
    array-length v0, v13

    move/from16 v33, v0

    const/16 v34, 0x4

    move/from16 v0, v33

    move/from16 v1, v34

    if-le v0, v1, :cond_2

    .line 1404
    const/16 v33, 0x3

    aget-byte v33, v13, v33

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shl-int/lit8 v33, v33, 0x8

    const/16 v34, 0x4

    aget-byte v34, v13, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    or-int v26, v33, v34

    .line 1405
    .local v26, "msplVersion":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v33

    if-eqz v33, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/UiccCard;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    .line 1406
    .restart local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :goto_10
    if-eqz v29, :cond_32

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_32

    .line 1407
    const-string v33, "got slot 2 MSPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1408
    const-string v33, "cdma.mspl.version.slot2"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    :goto_11
    const-string v33, "cdma.mspl.version"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MSPL version="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1405
    .end local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_31
    const/16 v29, 0x0

    goto :goto_10

    .line 1410
    .restart local v29    # "phone":Lcom/android/internal/telephony/PhoneBase;
    :cond_32
    const-string v33, "got slot 1 MSPL"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1411
    const-string v33, "cdma.mspl.version.slot1"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_11

    .line 829
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x5 -> :sswitch_4
        0xa -> :sswitch_3
        0xe -> :sswitch_9
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x13 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_a
        0x1f -> :sswitch_c
        0x27 -> :sswitch_6
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x65 -> :sswitch_d
        0x66 -> :sswitch_e
        0x67 -> :sswitch_5
        0x68 -> :sswitch_f
        0x69 -> :sswitch_10
        0x6a -> :sswitch_11
        0x6b -> :sswitch_12
        0x6c -> :sswitch_13
        0x6d -> :sswitch_14
        0x6e -> :sswitch_15
    .end sparse-switch
.end method

.method public isChinaMVNOSim()Z
    .locals 4

    .prologue
    .line 2446
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 2448
    .local v0, "iccnumeric":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaMVNOSim, icc numeric: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2450
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2451
    :cond_0
    const-string v2, "isChinaMVNOSim return false because record not loaded or empty icc numeric"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 2452
    const/4 v1, 0x0

    .line 2466
    :goto_0
    return v1

    .line 2455
    :cond_1
    const/4 v1, 0x0

    .line 2457
    .local v1, "status":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/uicc/ChinaMVNOTable;->isChinaMVNOSIM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2459
    if-nez v1, :cond_2

    .line 2460
    sget-object v2, Lcom/android/internal/telephony/uicc/RuimRecords;->CT_NETWORK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/uicc/RuimRecords;->CT_MVNO_SPN_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2462
    const/4 v1, 0x1

    .line 2465
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChinaMVNOSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isProvisioned()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1853
    const-string v2, "persist.radio.test-csim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1865
    :cond_0
    :goto_0
    return v0

    .line 1857
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_2

    move v0, v1

    .line 1858
    goto :goto_0

    .line 1861
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 1863
    goto :goto_0
.end method

.method public isReportImsiFromeMe()Z
    .locals 3

    .prologue
    .line 2416
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 2417
    .local v0, "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :goto_0
    const/4 v1, 0x0

    .line 2418
    .local v1, "isReportImsiFromeMe":Z
    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isReportImsiFromMe(Lcom/android/internal/telephony/uicc/IccRecords;)Z

    move-result v1

    .line 2420
    :cond_0
    return v1

    .line 2416
    .end local v0    # "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v1    # "isReportImsiFromeMe":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2062
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2067
    const-string v0, "RuimRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    return-void
.end method

.method public notifyPhoneModeChanged()V
    .locals 1

    .prologue
    .line 2401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    .line 2402
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->resetRecords()V

    .line 2403
    return-void
.end method

.method public notifyPhoneModeChangedDone()V
    .locals 2

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v0, v1, :cond_0

    .line 2408
    const/16 v0, 0x6b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->sendEmptyMessage(I)Z

    .line 2410
    :cond_0
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1529
    const-string v3, "record load complete"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1533
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->htcReadAdditionRecords()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->dynamicUpdateApn(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v4, :cond_2

    .line 1544
    const-string v2, "RuimRecords"

    const-string v3, "RuimRecords: record load complete, but ParentApp is not ready state"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1550
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    .line 1582
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsControlledByIccCardProxy:Z

    if-nez v3, :cond_7

    .line 1584
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 1585
    .local v0, "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :goto_1
    if-eqz v0, :cond_c

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isReportImsiFromMe(Lcom/android/internal/telephony/uicc/IccRecords;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1587
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1589
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1590
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isAllowSetCDMAProperty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1592
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuimRecords: onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1594
    const-string v3, "gsm.sim.operator.numeric"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 1600
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1601
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isAllowSetCDMAProperty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1606
    :cond_5
    const-string v3, "onAllRecordsLoaded set mcc imsi=xxxx"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1608
    const-string v3, "gsm.sim.operator.iso-country"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 1615
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->setLocaleFromCsim()V

    .line 1624
    .end local v0    # "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v1    # "operator":Ljava/lang/String;
    :cond_7
    :goto_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1625
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->setNAARecordsLoaded()V

    .line 1628
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    .line 1584
    goto/16 :goto_1

    .line 1597
    .restart local v0    # "icccardpxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v1    # "operator":Ljava/lang/String;
    :cond_a
    const-string v3, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1613
    :cond_b
    const-string v3, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1617
    .end local v1    # "operator":Ljava/lang/String;
    :cond_c
    const-string v3, "Does not update sim related properties by RuimRecords!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1641
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    .line 1649
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->updateEFRuimModel()V

    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f90

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 1655
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f3f

    const/16 v2, 0x29

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 1516
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1519
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1520
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->onAllRecordsLoaded()V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1521
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 1522
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 1523
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 1
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    if-eqz p1, :cond_0

    .line 426
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    goto :goto_0
.end method

.method protected resetRecords()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 314
    iput v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCountVoiceMessages:I

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting0 mMncLength"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMncLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 317
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIccId:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->clearInformationWhenRuimAbsent()V

    .line 327
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    .line 333
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isReportImsiFromeMe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->isAllowSetCDMAProperty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    :cond_1
    const-string v0, "gsm.sim.operator.numeric"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 337
    const-string v0, "gsm.sim.operator.alpha"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 338
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 352
    :cond_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsRequested:Z

    .line 355
    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mIsRecordsLoad:Z

    .line 357
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 399
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 408
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    const-string v3, "setVoiceMailNumber not implemented"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 406
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 407
    const-string v1, "method setVoiceMailNumber is not implemented"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 1904
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 1931
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIccPhoneBase()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    .line 1926
    .local v0, "phone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    .line 1927
    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .end local v0    # "phone":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(I)V

    .line 1928
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mRecordsEventsRegistrants:Landroid/os/RegistrantList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m_ota_commited"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mOtaCommited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMyMobileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "xxxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMin2Min1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEFpl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFpl:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEFli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mEFli:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCsimSpnDisplayCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeSystemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords;->mHomeNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
