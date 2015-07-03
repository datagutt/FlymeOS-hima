.class public Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "CdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;,
        Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;
    }
.end annotation


# static fields
.field public static DBG_GET_MDN:Ljava/lang/String; = null

.field public static final ERR_NO_RESPONSE:Ljava/lang/String; = "FFFF"

.field private static final ERR_NV_CMD_FAILED:Ljava/lang/String; = "0400"

.field private static final ERR_NV_INTERNAL_DMSS_USE:Ljava/lang/String; = "0100"

.field private static final ERR_NV_LENGTH:I = 0x4

.field private static final ERR_NV_MEMORY_FULL:Ljava/lang/String; = "0300"

.field private static final ERR_NV_NOT_EXIST_OR_BAD_PARAMS:Ljava/lang/String; = "0600"

.field private static final ERR_NV_NOT_RECOGN_CMD:Ljava/lang/String; = "0200"

.field private static final ERR_NV_NOT_SUPPORT:Ljava/lang/String; = "0500"

.field private static final ERR_NV_READ_ONLY:Ljava/lang/String; = "0700"

.field private static final EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED:I = 0x270f

.field static IMSI_11_12:Ljava/lang/String; = null

.field static IMSI_MCC:Ljava/lang/String; = null

.field static final LOG_TAG:Ljava/lang/String; = "CdmaSST"

.field static final MCC_COMMAND:Ljava/lang/String; = "C826B00000"

.field private static final MDN_PROVISION_CHECKING:Z

.field static final MNC_COMMAND:Ljava/lang/String; = "C826B10000"

.field private static final NITZ_UPDATE_DIFF_DEFAULT:I = 0x7d0

.field private static final NITZ_UPDATE_SPACING_DEFAULT:I = 0x927c0

.field static final NVITEM_ID_LENGTH:I = 0x8

.field private static final NV_SUCCESS:Ljava/lang/String; = "0000"

.field private static final SKU_ID:I

.field private static final S_DBG:Z = false

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "ServiceStateTracker"

.field static mImsiReady:Z

.field static mRuimLoaded:Z

.field private static mRuimProvisioned:Z

.field public static performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;


# instance fields
.field private mAutoTimeObserver:Landroid/database/ContentObserver;

.field private mAutoTimeZoneObserver:Landroid/database/ContentObserver;

.field protected mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field private mCdmaRoaming:Z

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mCr:Landroid/content/ContentResolver;

.field protected mCurPlmn:Ljava/lang/String;

.field private mCurrentCarrier:Ljava/lang/String;

.field mCurrentOtaspMode:I

.field private mDataRoaming:Z

.field private mDefaultRoamingIndicator:I

.field mFlightModeBootup:Ljava/lang/Boolean;

.field private mForceSpnUpdate:Z

.field private mGetEventDate:Ljava/util/Date;

.field private mGetEventTime:J

.field protected mGotCountryCode:Z

.field protected mHomeNetworkId:[I

.field protected mHomeSystemId:[I

.field private mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

.field private mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

.field private mHtcContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsEriTextLoaded:Z

.field private mIsInPrl:Z

.field private mIsMccMncChange:Z

.field protected mIsMinInfoReady:Z

.field protected mIsSubscriptionFromRuim:Z

.field private mLocale:Ljava/util/Locale;

.field protected mMdn:Ljava/lang/String;

.field protected mMin:Ljava/lang/String;

.field protected mNeedFixZone:Z

.field mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

.field private mNitzUpdateDiff:I

.field private mNitzUpdateSpacing:I

.field private mOldOperatorNumeric:Ljava/lang/String;

.field mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

.field private mOperatorStringLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalOperatorName:Ljava/lang/String;

.field mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mPrevSignalBar:I

.field private mPrevSignalBarTime:J

.field protected mPrlVersion:Ljava/lang/String;

.field public mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

.field private mRegistrationDeniedReason:Ljava/lang/String;

.field protected mRegistrationState:I

.field private mRoamingIndicator:I

.field mSavedAtTime:J

.field mSavedTime:J

.field mSavedTimeZone:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoneDst:Z

.field private mZoneOffset:I

.field private mZoneTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    sget v2, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    .line 177
    const-string v2, "not response CDMA Subscription"

    sput-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    .line 205
    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    .line 206
    sput-object v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    .line 210
    sget-boolean v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_null_mdn_min_if_ruim_not_provision"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    .line 214
    sput-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    .line 1578
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->IDLE:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    .line 308
    new-instance v0, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0}, Landroid/telephony/CellInfoCdma;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 309
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 312
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p1, v5, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 121
    const-string v5, "ro.nitz_update_spacing"

    const v6, 0x927c0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    .line 126
    const-string v5, "ro.nitz_update_diff"

    const/16 v6, 0x7d0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    .line 129
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 136
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 152
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 153
    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 160
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 164
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 181
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 184
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 185
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 188
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    .line 191
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 193
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 199
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    .line 221
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .line 236
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    .line 252
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    .line 4735
    iput v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    .line 4736
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    .line 315
    new-instance v5, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    .line 319
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 320
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    .line 321
    new-instance v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v5}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 322
    new-instance v5, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v5}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v7, 0x27

    invoke-static {v5, v6, p0, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 326
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 330
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 331
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setPhoneType(I)V

    .line 334
    new-instance v3, Lcom/android/internal/telephony/gsm/OperatorInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/OperatorInfo;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 337
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 339
    .local v2, "powerManager":Landroid/os/PowerManager;
    const-string v3, "ServiceStateTracker"

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0, v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 343
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1e

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 346
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x28

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaPrlChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 347
    const/16 v3, 0x24

    invoke-virtual {p1, p0, v3, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x25

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 351
    const/16 v3, 0x46

    invoke-virtual {p1, p0, v3, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->registerForIccCardProxyReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 354
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x47

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemResetNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x4b

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSilentFlightMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 361
    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x33

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaCTMccMncChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 369
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v3, :cond_2

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x3d

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x43

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x45

    invoke-interface {v3, p0, v5, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForMdmRstSIMHotSwap(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->initPowerState()V

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v5, "auto_time_zone"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 400
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "APP_REQUEST_REFRESH_PHONE_INFO"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    sget-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v3, :cond_3

    .line 408
    const-string v3, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1, v8, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 420
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.htc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    .line 429
    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/ServiceStateTracker;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    .line 441
    return-void

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 14
    .param p0, "dwVal"    # Ljava/lang/Long;
    .param p1, "dwDigits"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v12, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v10, 0xa

    .line 1518
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, "i":Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .local v2, "dwRet":Ljava/lang/Long;
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, "dwBase":Ljava/lang/Long;
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1520
    .local v0, "dwBCD":Ljava/lang/Long;
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    rem-long/2addr v4, v10

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1521
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    .line 1522
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1524
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 1529
    return-object v2

    .line 1526
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 1527
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public static ReverseByte(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 1503
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_0

    .line 1514
    .end local p0    # "val":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 1506
    .restart local p0    # "val":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1507
    .local v2, "length":I
    const-string v3, ""

    .line 1508
    .local v3, "reverse":Ljava/lang/String;
    move-object v4, p0

    .line 1509
    .local v4, "tmp":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_1

    .line 1510
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 1511
    .local v1, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1512
    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "len":I
    :cond_1
    move-object p0, v3

    .line 1514
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 96
    sput-boolean p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->revertToNitzTimeZone()V

    return-void
.end method

.method private findTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 11
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3132
    move v5, p1

    .line 3133
    .local v5, "rawOffset":I
    if-eqz p2, :cond_0

    .line 3134
    const v9, 0x36ee80

    sub-int/2addr v5, v9

    .line 3136
    :cond_0
    invoke-static {v5}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v8

    .line 3137
    .local v8, "zones":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 3138
    .local v2, "guess":Ljava/util/TimeZone;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 3139
    .local v1, "d":Ljava/util/Date;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v0, v3

    .line 3140
    .local v7, "zone":Ljava/lang/String;
    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 3141
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, p3, p4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    if-ne v9, p1, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-ne v9, p2, :cond_2

    .line 3143
    move-object v2, v6

    .line 3148
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v7    # "zone":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 3139
    .restart local v6    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "zone":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fixOperatorNameForLra(Landroid/telephony/ServiceState;)Z
    .locals 5
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 4769
    const/4 v1, 0x0

    .line 4771
    .local v1, "ret":Z
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 4773
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4774
    const-string v2, "Digital Roaming"

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 4775
    const/4 v1, 0x1

    .line 4783
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 4784
    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixOperatorNameForLra, operator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", roaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    :cond_2
    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fixOperatorNameForLra, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    return v1

    .line 4777
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;->CdmaSST:Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBanner(Lcom/android/internal/telephony/cdma/CDMAPhone$BannerQuerier;)Ljava/lang/String;

    move-result-object v0

    .line 4778
    .local v0, "banner":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 4779
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 4780
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private fixTimeZone(Ljava/lang/String;I)V
    .locals 7
    .param p1, "isoCountryCode"    # Ljava/lang/String;
    .param p2, "updateType"    # I

    .prologue
    .line 2734
    const/4 v6, 0x0

    .line 2736
    .local v6, "zone":Ljava/util/TimeZone;
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/lang/String;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v6

    .line 2740
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    if-eqz v0, :cond_0

    .line 2741
    if-nez v6, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 2745
    :cond_0
    if-eqz v6, :cond_2

    .line 2746
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2747
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    .line 2749
    :cond_1
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 2752
    :cond_2
    return-void

    .line 2741
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoTime()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3697
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3699
    :goto_0
    return v1

    .line 3697
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3698
    :catch_0
    move-exception v0

    .line 3699
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getAutoTimeZone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3705
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 3707
    :goto_0
    return v1

    .line 3705
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3706
    :catch_0
    move-exception v0

    .line 3707
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getForcePerformRadioOff()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1586
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->performRadioCommandState:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    sget-object v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;->TURNING_OFF:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$RadioCommandState;

    if-eq v0, v1, :cond_0

    .line 1587
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;
    .locals 2

    .prologue
    .line 4222
    const/4 v0, 0x0

    .line 4223
    .local v0, "proxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 4224
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v0

    .line 4226
    :cond_0
    return-object v0
.end method

.method private getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;
    .locals 2
    .param p1, "iccRec"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 4230
    const/4 v0, 0x0

    .line 4231
    .local v0, "imsi":Ljava/lang/String;
    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_0

    .line 4232
    if-eqz p1, :cond_0

    .line 4233
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v1, :cond_1

    .line 4234
    check-cast p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 4241
    :cond_0
    :goto_0
    return-object v0

    .line 4236
    .restart local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    instance-of v1, p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v1, :cond_0

    .line 4237
    check-cast p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local p1    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNitzTimeZone(IZJ)Ljava/util/TimeZone;
    .locals 3
    .param p1, "offset"    # I
    .param p2, "dst"    # Z
    .param p3, "when"    # J

    .prologue
    .line 3122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3123
    .local v0, "guess":Ljava/util/TimeZone;
    if-nez v0, :cond_0

    .line 3125
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->findTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v0

    .line 3127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNitzTimeZone returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v1, v0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3128
    return-object v0

    .line 3125
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3127
    :cond_2
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSubscriptionInfoAndStartPollingThreads()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 564
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 565
    return-void
.end method

.method private handleCdmaSubscriptionSource(I)V
    .locals 3
    .param p1, "newSubscriptionSource"    # I

    .prologue
    .line 1544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscription Source : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1546
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 1548
    .local v0, "oldIsSubscriptionFromRuim":Z
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    .line 1550
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveCdmaSubscriptionSource(I)V

    .line 1551
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v1, :cond_0

    .line 1553
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1557
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eq v0, v1, :cond_1

    .line 1559
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    .line 1562
    :cond_1
    return-void

    .line 1548
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleIfLanguageChanged()V
    .locals 10

    .prologue
    const v9, 0x3070154

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 3795
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v6, v7, :cond_a

    .line 3796
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    .line 3797
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mLocale:Ljava/util/Locale;

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3800
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-nez v6, :cond_1

    .line 3801
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    .line 3803
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x308001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3804
    .local v3, "opStr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 3805
    aget-object v6, v3, v1

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3806
    .local v4, "strArray":[Ljava/lang/String;
    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 3807
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    aget-object v7, v4, v2

    aget-object v8, v4, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3804
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3812
    .end local v1    # "i":I
    .end local v3    # "opStr":[Ljava/lang/String;
    .end local v4    # "strArray":[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v6, :cond_4

    .line 3813
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 3817
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_7

    .line 3819
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v6

    if-eq v6, v5, :cond_5

    move v2, v5

    .line 3821
    .local v2, "isRoaming":Z
    :cond_5
    if-eqz v2, :cond_8

    sget v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_8

    .line 3823
    const-string v5, "CdmaSST"

    const-string v6, "KDDI and into roaming network"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v5, :cond_6

    .line 3838
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getCtMvnoOperatorName(Lcom/android/internal/telephony/uicc/IccRecords;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v0

    .line 3839
    .local v0, "customizedSpn":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 3840
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v0, v6}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    .end local v0    # "customizedSpn":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    .line 3853
    .end local v2    # "isRoaming":Z
    :cond_7
    :goto_2
    return-void

    .line 3830
    .restart local v2    # "isRoaming":Z
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-ne v5, v6, :cond_9

    .line 3831
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3834
    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3847
    .end local v2    # "isRoaming":Z
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    if-nez v5, :cond_b

    .line 3848
    const-string v5, "CdmaSST"

    const-string v6, "No HTC Context was loaded!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3850
    :cond_b
    const-string v5, "CdmaSST"

    const-string v6, "Language is not changed, leave as what it was!!"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private handleImsRadioReset()V
    .locals 4

    .prologue
    .line 4540
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 4544
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTracker;
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 4547
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 4559
    :cond_0
    :goto_0
    return-void

    .line 4548
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4550
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 4556
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    .locals 6
    .param p1, "currRadioState"    # Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4566
    const/4 v0, 0x0

    .line 4567
    .local v0, "clearTakeAction":Z
    if-eqz p1, :cond_5

    .line 4570
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4571
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v4, :cond_2

    move v0, v2

    .line 4586
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 4589
    sput-boolean v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    .line 4590
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 4591
    sput-boolean v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    .line 4593
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v4

    if-ne v4, v2, :cond_6

    move v1, v2

    .line 4594
    .local v1, "isNVdevice":Z
    :goto_1
    if-nez p1, :cond_7

    if-eqz v1, :cond_7

    .line 4596
    const-string v2, "CdmaSST"

    const-string v3, "htcClearCacheWhenSimUnavaliable return for NV device"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    .end local v1    # "isNVdevice":Z
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    .line 4571
    goto :goto_0

    .line 4574
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p1, v4, :cond_4

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p1, v4, :cond_0

    .line 4576
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 4584
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v1, v3

    .line 4593
    goto :goto_1

    .line 4600
    .restart local v1    # "isNVdevice":Z
    :cond_7
    const-string v2, "CdmaSST"

    const-string v3, "htcClearCacheWhenSimUnavaliable clear"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 4604
    const-string v2, "gsm.cdma.pri.version"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4605
    iput-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 4606
    sput-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    .line 4607
    sput-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    goto :goto_2
.end method

.method public static isCustomizeCDMARadioTech(I)Z
    .locals 4
    .param p0, "radioTech"    # I

    .prologue
    .line 4798
    invoke-static {p0}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xe

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 4801
    .local v0, "value":Z
    :goto_0
    const-string v1, "CdmaSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustomizeCDMARadioTech:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4802
    return v0

    .line 4798
    .end local v0    # "value":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHomeSid(I)Z
    .locals 2
    .param p1, "sid"    # I

    .prologue
    .line 3891
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 3892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3893
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 3894
    const/4 v1, 0x1

    .line 3898
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 3892
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3898
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRoamIndForHomeSystem(Ljava/lang/String;)Z
    .locals 8
    .param p1, "roamInd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3390
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3393
    .local v2, "homeRoamIndicators":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3396
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 3397
    .local v1, "homeRoamInd":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3398
    const/4 v5, 0x1

    .line 3406
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "homeRoamInd":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return v5

    .line 3396
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "homeRoamInd":Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 9
    .param p1, "cdmaRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3420
    sget v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v8, 0x1b

    if-eq v7, v8, :cond_0

    sget v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v8, 0x1c

    if-ne v7, v8, :cond_2

    :cond_0
    move v5, p1

    .line 3435
    :cond_1
    :goto_0
    return v5

    .line 3425
    :cond_2
    const-string v7, "gsm.sim.operator.alpha"

    const-string v8, "empty"

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3429
    .local v4, "spn":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 3430
    .local v2, "onsl":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    .line 3432
    .local v3, "onss":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v5

    .line 3433
    .local v0, "equalsOnsl":Z
    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v1, v5

    .line 3435
    .local v1, "equalsOnss":Z
    :goto_2
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    :cond_3
    move v5, v6

    goto :goto_0

    .end local v0    # "equalsOnsl":Z
    .end local v1    # "equalsOnss":Z
    :cond_4
    move v0, v6

    .line 3432
    goto :goto_1

    .restart local v0    # "equalsOnsl":Z
    :cond_5
    move v1, v6

    .line 3433
    goto :goto_2
.end method

.method public static pendZero(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "digits"    # I

    .prologue
    .line 1533
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1536
    :cond_0
    return-object p0
.end method

.method private queueNextSignalStrengthPoll()V
    .locals 4

    .prologue
    .line 3159
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    if-eqz v1, :cond_0

    .line 3172
    :goto_0
    return-void

    .line 3167
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3168
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3171
    const-wide/16 v2, 0x4e20

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private regCodeIsRoaming(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 3378
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestMCC()V
    .locals 3

    .prologue
    .line 3994
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B00000"

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 3995
    return-void
.end method

.method private requestMNC()V
    .locals 3

    .prologue
    .line 4002
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v1, "C826B10000"

    const/16 v2, 0x39

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 4003
    return-void
.end method

.method private revertToNitzTime()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 3775
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3779
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTime: mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3781
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 3787
    iget-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    goto :goto_0
.end method

.method private revertToNitzTimeZone()V
    .locals 3

    .prologue
    .line 3866
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_time_zone"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 3874
    :cond_0
    :goto_0
    return-void

    .line 3870
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertToNitzTimeZone: tz=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3871
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3872
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveCdmaSubscriptionSource(I)V
    .locals 2
    .param p1, "source"    # I

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Storing cdma subscription source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "subscription_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 558
    return-void
.end method

.method private saveNitzTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3713
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 3752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTime: time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3755
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    .line 3756
    return-void
.end method

.method private setAndBroadcastNetworkSetTime(JILjava/lang/String;)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "updateType"    # I
    .param p4, "updateZone"    # Ljava/lang/String;

    .prologue
    .line 3760
    invoke-static {p1, p2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 3762
    if-ltz p3, :cond_0

    .line 3763
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_0

    .line 3764
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1, p3, p1, p2, p4}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupNitz(IJLjava/lang/String;)V

    .line 3768
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3769
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3770
    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3771
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3772
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V
    .locals 2
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 3722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAndBroadcastNetworkSetTimeZone: setTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3724
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V

    .line 3725
    return-void
.end method

.method private setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;I)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;
    .param p2, "updateType"    # I

    .prologue
    .line 3729
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 3731
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 3733
    if-ltz p2, :cond_0

    .line 3734
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    .line 3735
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->setupTimeZone(ILjava/lang/String;)V

    .line 3739
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3740
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3741
    const-string v2, "time-zone"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3742
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3743
    return-void
.end method

.method private setOperatorProperties()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4383
    sget v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v12, 0xa

    if-eq v11, v12, :cond_0

    sget v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v12, 0x55

    if-eq v11, v12, :cond_0

    sget v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v12, 0x62

    if-ne v11, v12, :cond_7

    :cond_0
    move v0, v10

    .line 4386
    .local v0, "SprintOperNum":Z
    :goto_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 4387
    .local v8, "operatorNumeric":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 4391
    .local v7, "operatorName":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v11

    if-eq v11, v13, :cond_1

    .line 4396
    const-string v8, ""

    .line 4397
    const-string v7, ""

    .line 4400
    :cond_1
    const/4 v5, 0x0

    .line 4403
    .local v5, "notSprintLte":Z
    if-eqz v0, :cond_3

    .line 4404
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 4406
    .local v1, "dataServiceState":Landroid/telephony/ServiceState;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    const/16 v12, 0xe

    if-ne v11, v12, :cond_8

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v11

    if-ne v11, v10, :cond_8

    .line 4416
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v10, :cond_2

    .line 4417
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 4418
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    .line 4424
    :cond_2
    const/4 v5, 0x1

    .line 4461
    .end local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    :cond_3
    :goto_1
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setOperatorProperties - service state operator numeric: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", operator name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4465
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "gsm.operator.alpha"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4466
    .local v6, "oldOperatorAlpha":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    if-eqz v10, :cond_4

    if-eqz v8, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 4473
    :cond_4
    const-string v10, "CdmaSST"

    const-string v11, "setOperatorProperties - set operator numeric/alpha to system properties"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "gsm.operator.numeric"

    invoke-virtual {v10, v11, v8}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4476
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "gsm.operator.alpha"

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4478
    iput-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOldOperatorNumeric:Ljava/lang/String;

    .line 4481
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_a

    .line 4482
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "gsm.operator.iso-country"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 4531
    :goto_2
    return-void

    .end local v0    # "SprintOperNum":Z
    .end local v5    # "notSprintLte":Z
    .end local v6    # "oldOperatorAlpha":Ljava/lang/String;
    .end local v7    # "operatorName":Ljava/lang/String;
    .end local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_7
    move v0, v9

    .line 4383
    goto/16 :goto_0

    .line 4449
    .restart local v0    # "SprintOperNum":Z
    .restart local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    .restart local v5    # "notSprintLte":Z
    .restart local v7    # "operatorName":Ljava/lang/String;
    .restart local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    if-ne v10, v13, :cond_3

    .line 4451
    :cond_9
    sget-object v10, Lcom/android/internal/telephony/cdma/CDMAPhone;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4452
    const-string v10, "ro.cdma.home.operator.alpha"

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4454
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setOperatorProperties - hardcode operator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4485
    .end local v1    # "dataServiceState":Landroid/telephony/ServiceState;
    .restart local v6    # "oldOperatorAlpha":Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 4491
    const-string v4, ""

    .line 4493
    .local v4, "isoCountryCode":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 4494
    const/4 v9, 0x0

    const/4 v10, 0x3

    :try_start_0
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 4507
    :cond_b
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->findBestMatching(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/telephony/cdma/HtcCdmaCountry;

    move-result-object v3

    .line 4509
    .local v3, "htcCountry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    if-eqz v3, :cond_c

    .line 4510
    iget-object v9, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 4511
    iget-object v4, v3, Lcom/android/internal/telephony/cdma/HtcCdmaCountry;->countryIso:Ljava/lang/String;

    .line 4517
    :cond_c
    if-eqz v0, :cond_d

    .line 4519
    if-nez v5, :cond_d

    .line 4522
    const-string v4, "us"

    .line 4526
    :cond_d
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v10, "gsm.operator.iso-country"

    invoke-virtual {v9, v10, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    const-string v9, "CdmaSST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setOperatorProperties - set iso-country: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 4496
    .end local v3    # "htcCountry":Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
    :catch_0
    move-exception v2

    .line 4497
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4498
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 4499
    .local v2, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4503
    .end local v2    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :catch_2
    move-exception v2

    .line 4504
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pollStateDone: countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private setTimeFromNITZString(Ljava/lang/String;J)V
    .locals 38
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "nitzReceiveTime"    # J

    .prologue
    .line 3449
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v30

    .line 3452
    .local v30, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_0

    .line 3453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->receiveNitz(Ljava/lang/String;JJLjava/util/Date;)V

    .line 3457
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " start="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v30, p2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3464
    :try_start_0
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 3466
    .local v9, "c":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->clear()V

    .line 3467
    const/16 v2, 0x10

    const/4 v4, 0x0

    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 3469
    const-string v2, "[/:,+-]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 3471
    .local v24, "nitzSubs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_1

    .line 3472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->getFakeNitz(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 3476
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v0, v2, 0x7d0

    move/from16 v35, v0

    .line 3477
    .local v35, "year":I
    const/4 v2, 0x1

    move/from16 v0, v35

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 3480
    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .line 3481
    .local v23, "month":I
    const/4 v2, 0x2

    move/from16 v0, v23

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 3483
    const/4 v2, 0x2

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 3484
    .local v10, "date":I
    const/4 v2, 0x5

    invoke-virtual {v9, v2, v10}, Ljava/util/Calendar;->set(II)V

    .line 3486
    const/4 v2, 0x3

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 3487
    .local v15, "hour":I
    const/16 v2, 0xa

    invoke-virtual {v9, v2, v15}, Ljava/util/Calendar;->set(II)V

    .line 3489
    const/4 v2, 0x4

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 3490
    .local v22, "minute":I
    const/16 v2, 0xc

    move/from16 v0, v22

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 3492
    const/4 v2, 0x5

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 3493
    .local v27, "second":I
    const/16 v2, 0xd

    move/from16 v0, v27

    invoke-virtual {v9, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 3495
    const/16 v2, 0x2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    const/16 v28, 0x1

    .line 3497
    .local v28, "sign":Z
    :goto_0
    const/4 v2, 0x6

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 3499
    .local v5, "tzOffset":I
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x8

    if-lt v2, v4, :cond_9

    const/4 v2, 0x7

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 3509
    .local v11, "dst":I
    :goto_1
    if-eqz v28, :cond_a

    const/4 v2, 0x1

    :goto_2
    mul-int/2addr v2, v5

    mul-int/lit8 v2, v2, 0xf

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v5, v2, 0x3e8

    .line 3511
    const/4 v3, 0x0

    .line 3517
    .local v3, "zone":Ljava/util/TimeZone;
    move-object/from16 v0, v24

    array-length v2, v0

    const/16 v4, 0x9

    if-lt v2, v4, :cond_2

    .line 3518
    const/16 v2, 0x8

    aget-object v2, v24, v2

    const/16 v4, 0x21

    const/16 v6, 0x2f

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v34

    .line 3519
    .local v34, "tzname":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 3522
    .end local v34    # "tzname":Ljava/lang/String;
    :cond_2
    const-string v2, "gsm.operator.iso-country"

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3525
    .local v19, "iso":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 3529
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 3530
    if-eqz v11, :cond_b

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 3531
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 3532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    .line 3533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v2, :cond_e

    .line 3534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v0, v24

    array-length v4, v0

    const/16 v6, 0x8

    if-lt v4, v6, :cond_d

    if-eqz v11, :cond_c

    const/4 v4, 0x1

    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_5
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->searchSmartTimeZoneForNITZ(Ljava/util/TimeZone;Ljava/lang/Boolean;IJ)Ljava/util/TimeZone;

    move-result-object v3

    .line 3557
    :cond_3
    :goto_6
    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    if-ne v2, v5, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    if-eqz v11, :cond_12

    const/4 v2, 0x1

    :goto_7
    if-eq v4, v2, :cond_5

    .line 3562
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    .line 3563
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    .line 3564
    if-eqz v11, :cond_13

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    .line 3565
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    .line 3575
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 3576
    .local v29, "strBuf":Ljava/lang/StringBuilder;
    const-string v2, "NITZ: tzOffset="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3578
    const-string v2, " dst="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3580
    const-string v2, " zone="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    if-eqz v3, :cond_14

    .line 3582
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    :goto_9
    const-string v2, " iso="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3588
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    const-string v2, " mGotCountryCode="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3590
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3591
    const-string v2, " mNeedFixZone="

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3593
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3597
    if-eqz v3, :cond_7

    .line 3598
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTimeZone()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3599
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTimeZone(Ljava/lang/String;)V

    .line 3601
    :cond_6
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->saveNitzTimeZone(Ljava/lang/String;)V

    .line 3604
    :cond_7
    const-string v2, "gsm.ignore-nitz"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3605
    .local v18, "ignore":Ljava/lang/String;
    if-eqz v18, :cond_15

    const-string v2, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 3606
    const-string v2, "NITZ: Not setting clock because gsm.ignore-nitz is set"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3693
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v5    # "tzOffset":I
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "date":I
    .end local v11    # "dst":I
    .end local v15    # "hour":I
    .end local v18    # "ignore":Ljava/lang/String;
    .end local v19    # "iso":Ljava/lang/String;
    .end local v22    # "minute":I
    .end local v23    # "month":I
    .end local v24    # "nitzSubs":[Ljava/lang/String;
    .end local v27    # "second":I
    .end local v28    # "sign":Z
    .end local v29    # "strBuf":Ljava/lang/StringBuilder;
    .end local v35    # "year":I
    :goto_a
    return-void

    .line 3495
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "date":I
    .restart local v15    # "hour":I
    .restart local v22    # "minute":I
    .restart local v23    # "month":I
    .restart local v24    # "nitzSubs":[Ljava/lang/String;
    .restart local v27    # "second":I
    .restart local v35    # "year":I
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 3499
    .restart local v5    # "tzOffset":I
    .restart local v28    # "sign":Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 3509
    .restart local v11    # "dst":I
    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 3530
    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v19    # "iso":Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 3534
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 3541
    :cond_e
    if-nez v3, :cond_3

    .line 3542
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    if-eqz v2, :cond_3

    .line 3543
    if-eqz v19, :cond_10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 3544
    if-eqz v11, :cond_f

    const/4 v2, 0x1

    :goto_b
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, v19

    invoke-static {v5, v2, v6, v7, v0}, Landroid/util/TimeUtils;->getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x0

    goto :goto_b

    .line 3552
    :cond_10
    if-eqz v11, :cond_11

    const/4 v2, 0x1

    :goto_c
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getNitzTimeZone(IZJ)Ljava/util/TimeZone;

    move-result-object v3

    goto/16 :goto_6

    :cond_11
    const/4 v2, 0x0

    goto :goto_c

    .line 3557
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 3564
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 3585
    .restart local v29    # "strBuf":Ljava/lang/StringBuilder;
    :cond_14
    const-string v2, "<null>"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_9

    .line 3690
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v5    # "tzOffset":I
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "date":I
    .end local v11    # "dst":I
    .end local v15    # "hour":I
    .end local v19    # "iso":Ljava/lang/String;
    .end local v22    # "minute":I
    .end local v23    # "month":I
    .end local v24    # "nitzSubs":[Ljava/lang/String;
    .end local v27    # "second":I
    .end local v28    # "sign":Z
    .end local v29    # "strBuf":Ljava/lang/StringBuilder;
    .end local v35    # "year":I
    :catch_0
    move-exception v14

    .line 3691
    .local v14, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Parsing NITZ time "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_a

    .line 3611
    .end local v14    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v5    # "tzOffset":I
    .restart local v9    # "c":Ljava/util/Calendar;
    .restart local v10    # "date":I
    .restart local v11    # "dst":I
    .restart local v15    # "hour":I
    .restart local v18    # "ignore":Ljava/lang/String;
    .restart local v19    # "iso":Ljava/lang/String;
    .restart local v22    # "minute":I
    .restart local v23    # "month":I
    .restart local v24    # "nitzSubs":[Ljava/lang/String;
    .restart local v27    # "second":I
    .restart local v28    # "sign":Z
    .restart local v29    # "strBuf":Ljava/lang/StringBuilder;
    .restart local v35    # "year":I
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3616
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v20, v6, p2

    .line 3619
    .local v20, "millisSinceNitzReceived":J
    const-wide/16 v6, 0x0

    cmp-long v2, v20, v6

    if-gez v2, :cond_16

    .line 3622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, clock has rolled backwards since NITZ time was received, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3686
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3687
    .local v12, "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_a

    .line 3629
    .end local v12    # "end":J
    :cond_16
    const-wide/32 v6, 0x7fffffff

    cmp-long v2, v20, v6

    if-lez v2, :cond_17

    .line 3632
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: not setting time, processing has taken "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v6, 0x5265c00

    div-long v6, v20, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " days"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3686
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3687
    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_a

    .line 3640
    .end local v12    # "end":J
    :cond_17
    const/16 v2, 0xe

    move-wide/from16 v0, v20

    long-to-int v4, v0

    :try_start_5
    invoke-virtual {v9, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 3642
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAutoTime()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3646
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    sub-long v16, v6, v36

    .line 3647
    .local v16, "gained":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    move-wide/from16 v36, v0

    sub-long v32, v6, v36

    .line 3648
    .local v32, "timeSinceLastUpdate":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_spacing"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateSpacing:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    .line 3650
    .local v26, "nitzUpdateSpacing":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "nitz_update_diff"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNitzUpdateDiff:I

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    .line 3653
    .local v25, "nitzUpdateDiff":I
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    const-wide/16 v36, 0x0

    cmp-long v2, v6, v36

    if-eqz v2, :cond_18

    move/from16 v0, v26

    int-to-long v6, v0

    cmp-long v2, v32, v6

    if-gtz v2, :cond_18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v36, v0

    cmp-long v2, v6, v36

    if-lez v2, :cond_1b

    .line 3656
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: Auto updating time of day to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " NITZ receive delay="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    :goto_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v4, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setAndBroadcastNetworkSetTime(JILjava/lang/String;)V

    .line 3681
    .end local v16    # "gained":J
    .end local v25    # "nitzUpdateDiff":I
    .end local v26    # "nitzUpdateSpacing":I
    .end local v32    # "timeSinceLastUpdate":J
    :cond_19
    const-string v2, "NITZ: update nitz time property"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3682
    const-string v2, "gsm.nitz.time"

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3683
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    .line 3684
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3686
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3687
    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_a

    .line 3665
    .end local v12    # "end":J
    .restart local v16    # "gained":J
    .restart local v25    # "nitzUpdateDiff":I
    .restart local v26    # "nitzUpdateSpacing":I
    .restart local v32    # "timeSinceLastUpdate":J
    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    .line 3671
    :cond_1b
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: ignore, a previous update was "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v32

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms ago and gained="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3686
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3687
    .restart local v12    # "end":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NITZ: end="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " dur="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v6, v12, v30

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_a

    .line 3686
    .end local v12    # "end":J
    .end local v16    # "gained":J
    .end local v20    # "millisSinceNitzReceived":J
    .end local v25    # "nitzUpdateDiff":I
    .end local v26    # "nitzUpdateSpacing":I
    .end local v32    # "timeSinceLastUpdate":J
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 3687
    .restart local v12    # "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NITZ: end="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " dur="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v6, v12, v30

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3688
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3689
    throw v2
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method private signalBarLogControl(I)Z
    .locals 10
    .param p1, "signalBar"    # I

    .prologue
    .line 4738
    const/4 v2, 0x0

    .line 4739
    .local v2, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4740
    .local v0, "currentTime":J
    const-wide/16 v4, 0x1388

    .line 4741
    .local v4, "timeInterval":J
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    if-ne v3, p1, :cond_1

    .line 4742
    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1388

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4743
    const/4 v2, 0x0

    .line 4753
    :goto_0
    return v2

    .line 4745
    :cond_0
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    .line 4746
    const/4 v2, 0x1

    goto :goto_0

    .line 4749
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBar:I

    .line 4750
    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrevSignalBarTime:J

    .line 4751
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 1468
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1469
    .local v1, "errState":Ljava/lang/String;
    const-string v0, ""

    .line 1470
    .local v0, "errMsg":Ljava/lang/String;
    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1471
    const-string v0, ""

    .line 1491
    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1492
    const-string v2, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command state is error, reason is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_0
    return-object v0

    .line 1472
    :cond_1
    const-string v2, "0100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1473
    const-string v0, "internal dmss used"

    goto :goto_0

    .line 1474
    :cond_2
    const-string v2, "0200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1475
    const-string v0, "can\'t recognize command"

    goto :goto_0

    .line 1476
    :cond_3
    const-string v2, "0300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1477
    const-string v0, "memory is full"

    goto :goto_0

    .line 1478
    :cond_4
    const-string v2, "0400"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1479
    const-string v0, "command is fail"

    goto :goto_0

    .line 1480
    :cond_5
    const-string v2, "0500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1481
    const-string v0, "not support this command"

    goto :goto_0

    .line 1482
    :cond_6
    const-string v2, "0600"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1483
    const-string v0, "bad command parameters or not exists"

    goto :goto_0

    .line 1484
    :cond_7
    const-string v2, "0700"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1485
    const-string v0, "memeory is read only"

    goto :goto_0

    .line 1486
    :cond_8
    const-string v2, "FFFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1487
    const-string v0, "No respone!!"

    goto :goto_0

    .line 1489
    :cond_9
    const-string v0, "command error with non-knowing reason"

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->checkCorrectThread()V

    .line 446
    const-string v1, "ServiceStateTracker dispose"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 450
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceNetworkStateChanged(Landroid/os/Handler;)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 453
    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaCTMccMncChange(Landroid/os/Handler;)V

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForEriFileLoaded(Landroid/os/Handler;)V

    .line 460
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 461
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 462
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForIccCardProxyReady(Landroid/os/Handler;)V

    .line 463
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 464
    .local v0, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v0, :cond_2

    .line 465
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 472
    .end local v0    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNITZTime(Landroid/os/Handler;)V

    .line 473
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAutoTimeZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 475
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 476
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaPrlChanged(Landroid/os/Handler;)V

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSIMHotSwap(Landroid/os/Handler;)V

    .line 480
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForMdmRstSIMHotSwap(Landroid/os/Handler;)V

    .line 483
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForModemResetNotify(Landroid/os/Handler;)V

    .line 487
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForSilentFlightMode(Landroid/os/Handler;)V

    .line 491
    sget-boolean v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v1, :cond_3

    .line 492
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v1, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/BaseCommands;->unregisterForCdmaSubscriptionSourceChanged(Landroid/os/Handler;)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unsetOnIccRefresh(Landroid/os/Handler;)V

    .line 498
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->dispose()V

    .line 504
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    .line 510
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v1, :cond_5

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->dispose()V

    .line 512
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    .line 517
    :cond_5
    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    .line 518
    return-void

    .line 468
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4678
    const-string v0, "CdmaServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4679
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/ServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNewCellLoc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentOtaspMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNeedFixZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNeedFixZone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneDst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneDst:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mZoneTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mGotCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSavedAtTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSavedAtTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurPlmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHomeNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPrlVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsMinInfoReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsEriTextLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsEriTextLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSubscriptionFromRuim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaSSM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRegistrationDeniedReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCurrentCarrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentCarrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4712
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 522
    const-string v0, "CdmaServiceStateTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method protected fixTimeZone(Ljava/lang/String;)V
    .locals 1
    .param p1, "isoCountryCode"    # Ljava/lang/String;

    .prologue
    .line 2728
    const/4 v0, 0x0

    .line 2731
    .local v0, "zone":Ljava/util/TimeZone;
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3925
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    .line 3926
    const-string v0, "MIN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3927
    const/4 v0, 0x0

    .line 3930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCdmaVoiceCampedOperator(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 12
    .param p1, "objAccountInfos"    # Ljava/lang/Object;

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v6, 0x0

    .line 4627
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/HtcAccountInfos;

    .line 4628
    .local v0, "htcAccountInfos":Lcom/android/internal/telephony/HtcAccountInfos;
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 4630
    .local v3, "isRoamingNetwork":Ljava/lang/Boolean;
    :goto_1
    const/16 v5, 0xa

    new-array v4, v5, [Ljava/lang/String;

    .line 4631
    .local v4, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v7

    .line 4632
    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    aput-object v5, v4, v7

    .line 4633
    const/4 v5, 0x2

    iget v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mZoneOffset:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 4634
    const/4 v5, 0x3

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 4635
    aput-object v6, v4, v8

    .line 4636
    aput-object v6, v4, v9

    .line 4637
    const/4 v5, 0x6

    aput-object v6, v4, v5

    .line 4638
    const/4 v5, 0x7

    aput-object v6, v4, v5

    .line 4639
    aput-object v6, v4, v10

    .line 4640
    aput-object v6, v4, v11

    .line 4642
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_9

    .line 4643
    if-eqz v0, :cond_9

    .line 4644
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, v5, v6, v6, v7}, Lcom/android/internal/telephony/HtcAccountInfos;->getAccountInfos(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)[Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, [Lcom/android/internal/telephony/HtcIccType;

    move-object v2, v5

    check-cast v2, [Lcom/android/internal/telephony/HtcIccType;

    .line 4645
    .local v2, "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    if-eqz v2, :cond_9

    .line 4646
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 4647
    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 4648
    aget-object v5, v4, v8

    if-nez v5, :cond_0

    .line 4649
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    aput-object v5, v4, v8

    .line 4651
    :cond_0
    aget-object v5, v4, v9

    if-nez v5, :cond_1

    .line 4652
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    aput-object v5, v4, v9

    .line 4654
    :cond_1
    aget-object v5, v4, v10

    if-nez v5, :cond_2

    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 4655
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 4657
    :cond_2
    aget-object v5, v4, v11

    if-nez v5, :cond_3

    .line 4658
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    aput-object v5, v4, v11

    .line 4646
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4628
    .end local v1    # "i":I
    .end local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    .end local v3    # "isRoamingNetwork":Ljava/lang/Boolean;
    .end local v4    # "result":[Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    move-object v3, v6

    goto/16 :goto_1

    .restart local v3    # "isRoamingNetwork":Ljava/lang/Boolean;
    .restart local v4    # "result":[Ljava/lang/String;
    :cond_6
    move-object v5, v6

    .line 4631
    goto/16 :goto_2

    :cond_7
    move-object v5, v6

    .line 4632
    goto/16 :goto_3

    .line 4663
    .restart local v1    # "i":I
    .restart local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :cond_8
    const-string v5, "CdmaSST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCdmaVoiceCampedOperator result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    .end local v1    # "i":I
    .end local v2    # "iccTypes":[Lcom/android/internal/telephony/HtcIccType;
    :cond_9
    return-object v4
.end method

.method public getCurrentDataConnectionState()I
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0
.end method

.method protected getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 6
    .param p1, "givenServiceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4246
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 4247
    .local v0, "eriSs":Landroid/telephony/ServiceState;
    :goto_0
    const/4 v2, 0x0

    .line 4249
    .local v2, "updateByHtcEri":Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    .line 4250
    .local v1, "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    if-eqz v1, :cond_0

    .line 4251
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriCarrierId()I

    move-result v5

    if-ltz v5, :cond_2

    move v2, v3

    .line 4253
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 4254
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 4255
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIconMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    .line 4266
    :goto_2
    return-object v0

    .line 4246
    .end local v0    # "eriSs":Landroid/telephony/ServiceState;
    .end local v1    # "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    .end local v2    # "updateByHtcEri":Z
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    goto :goto_0

    .restart local v0    # "eriSs":Landroid/telephony/ServiceState;
    .restart local v1    # "mHtcRadio":Lcom/android/internal/telephony/cdma/HtcRadio;
    .restart local v2    # "updateByHtcEri":Z
    :cond_2
    move v2, v4

    .line 4251
    goto :goto_1

    .line 4258
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4259
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    .line 4264
    :goto_3
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    goto :goto_2

    .line 4262
    :cond_4
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    goto :goto_3
.end method

.method getImsi()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4026
    sget-boolean v8, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v8

    if-nez v8, :cond_6

    .line 4028
    const/4 v3, 0x0

    .line 4029
    .local v3, "imsi":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v1

    .line 4030
    .local v1, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v1, :cond_5

    .line 4036
    const/4 v2, 0x0

    .line 4037
    .local v2, "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4038
    sget-object v8, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 4043
    :goto_0
    if-eqz v2, :cond_0

    .line 4044
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;

    move-result-object v3

    .line 4047
    :cond_0
    if-nez v3, :cond_5

    .line 4048
    sget v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    sget v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v9, 0x55

    if-eq v8, v9, :cond_1

    sget v8, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v9, 0x62

    if-ne v8, v9, :cond_3

    :cond_1
    move v0, v7

    .line 4049
    .local v0, "SprintOperNum":Z
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v8

    const-string v9, "build_account_main_flag"

    invoke-static {v8, v9, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    move v4, v7

    .line 4050
    .local v4, "isCDMAonUICC":Z
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 4051
    const-string v6, "RUIM imsi= null for Sprint UICC project"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4089
    .end local v0    # "SprintOperNum":Z
    .end local v1    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v2    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "isCDMAonUICC":Z
    :goto_3
    return-object v3

    .line 4041
    .restart local v1    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .restart local v2    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .restart local v3    # "imsi":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v0, v6

    .line 4048
    goto :goto_1

    .restart local v0    # "SprintOperNum":Z
    :cond_4
    move v4, v6

    .line 4049
    goto :goto_2

    .line 4058
    .end local v0    # "SprintOperNum":Z
    .end local v2    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_5
    if-eqz v3, :cond_6

    .line 4059
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RUIM imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 4067
    .end local v1    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_6
    sget-boolean v6, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v6

    if-nez v6, :cond_8

    .line 4068
    const/4 v3, 0x0

    .line 4069
    .restart local v3    # "imsi":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    .line 4070
    .restart local v2    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_7

    .line 4072
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    .line 4075
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RUIM imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 4079
    .end local v2    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 4081
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RSInfo imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4082
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v3, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    goto/16 :goto_3

    .line 4084
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v5

    .line 4085
    .local v5, "retrieved_Min":Ljava/lang/String;
    if-eqz v5, :cond_a

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v6, :cond_a

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 4086
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMSI_MCC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4087
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 4089
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method public getMdnNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3915
    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->MDN_PROVISION_CHECKING:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimProvisioned:Z

    if-nez v0, :cond_0

    .line 3916
    const-string v0, "MDN haven\'t been provisioned"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3917
    const/4 v0, 0x0

    .line 3920
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    if-eqz v0, :cond_0

    .line 3858
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getOperatorInfo()Lcom/android/internal/telephony/gsm/OperatorInfo;

    move-result-object v0

    .line 3861
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorInfo:Lcom/android/internal/telephony/gsm/OperatorInfo;

    goto :goto_0
.end method

.method getOtasp()I
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    .line 4134
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    .line 4135
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: bad mMin=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4136
    const/4 v0, 0x1

    .line 4146
    .local v0, "provisioningState":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOtasp: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4147
    return v0

    .line 4138
    .end local v0    # "provisioningState":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    const-string v2, "1111110111"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "000000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "test_cdma_setup"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4141
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "provisioningState":I
    goto :goto_0

    .line 4143
    .end local v0    # "provisioningState":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "provisioningState":I
    goto :goto_0
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3974
    const-string v0, "gsm.cdma.pri.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "gsm.cdma.pri.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method public getPreferredOnly()I
    .locals 1

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3936
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 3937
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3938
    const-string v2, "getPrlVersion for isMultiSimEnabled = true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3941
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v2, :cond_1

    .line 3943
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    .line 3958
    :goto_0
    return-object v0

    .line 3952
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    if-eqz v2, :cond_1

    .line 3953
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    .line 3954
    .local v0, "prlVer":Ljava/lang/String;
    goto :goto_0

    .line 3958
    .end local v0    # "prlVer":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 4322
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 59
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 570
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    .line 571
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v5, :cond_1

    .line 578
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1450
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 585
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    goto :goto_0

    .line 602
    :sswitch_1
    const-string v5, "Receive EVENT_RUIM_READY and Send Request getCDMASubscription."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 603
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 607
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    goto :goto_0

    .line 616
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    .line 617
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMCC()V

    .line 618
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->requestMNC()V

    .line 621
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 628
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 631
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto :goto_0

    .line 639
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_3

    .line 640
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleCdmaSubscriptionSource(I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    .line 651
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "support_lte"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v56

    .line 656
    .local v56, "supportLTE":Z
    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_2

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v6, 0x1c

    if-ne v5, v6, :cond_3

    :cond_2
    if-nez v56, :cond_3

    .line 660
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x270f

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestClearAvoidNetwork(Landroid/os/Message;)V

    .line 666
    .end local v56    # "supportLTE":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v5, v6, :cond_4

    .line 667
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 681
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v26

    .line 682
    .local v26, "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 685
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 686
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->tryUnlockRadioPower(Ljava/lang/String;)Z

    .line 689
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 768
    .end local v26    # "currRadioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 775
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 780
    .local v22, "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->queueNextSignalStrengthPoll()V

    goto/16 :goto_0

    .line 786
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 788
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_e

    .line 789
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object/from16 v55, v5

    check-cast v55, [Ljava/lang/String;

    .line 790
    .local v55, "states":[Ljava/lang/String;
    const/4 v10, -0x1

    .line 791
    .local v10, "baseStationId":I
    const v11, 0x7fffffff

    .line 792
    .local v11, "baseStationLatitude":I
    const v12, 0x7fffffff

    .line 793
    .local v12, "baseStationLongitude":I
    const/4 v13, -0x1

    .line 794
    .local v13, "systemId":I
    const/4 v14, -0x1

    .line 796
    .local v14, "networkId":I
    move-object/from16 v0, v55

    array-length v5, v0

    const/16 v6, 0x9

    if-le v5, v6, :cond_d

    .line 798
    const/4 v5, 0x4

    :try_start_0
    aget-object v5, v55, v5

    if-eqz v5, :cond_6

    .line 799
    const/4 v5, 0x4

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 801
    :cond_6
    const/4 v5, 0x5

    aget-object v5, v55, v5

    if-eqz v5, :cond_7

    .line 802
    const/4 v5, 0x5

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 804
    :cond_7
    const/4 v5, 0x6

    aget-object v5, v55, v5

    if-eqz v5, :cond_8

    .line 805
    const/4 v5, 0x6

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 808
    :cond_8
    if-nez v11, :cond_9

    if-nez v12, :cond_9

    .line 809
    const v11, 0x7fffffff

    .line 810
    const v12, 0x7fffffff

    .line 812
    :cond_9
    const/16 v5, 0x8

    aget-object v5, v55, v5

    if-eqz v5, :cond_a

    .line 813
    const/16 v5, 0x8

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 815
    :cond_a
    const/16 v5, 0x9

    aget-object v5, v55, v5

    if-eqz v5, :cond_b

    .line 816
    const/16 v5, 0x9

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 824
    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v5, :cond_d

    .line 825
    const/16 v52, 0x4

    .line 827
    .local v52, "registrationState":I
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v55, v5

    if-eqz v5, :cond_c

    .line 828
    const/4 v5, 0x0

    aget-object v5, v55, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v52

    .line 831
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v9

    .line 832
    .local v9, "nitzServiceState":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v5, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    invoke-direct/range {v5 .. v14}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v15, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateLocation(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v42

    .line 838
    .local v42, "nitzIso":Ljava/lang/String;
    if-eqz v42, :cond_d

    .line 839
    packed-switch v9, :pswitch_data_0

    .line 850
    .end local v9    # "nitzServiceState":I
    .end local v42    # "nitzIso":Ljava/lang/String;
    .end local v52    # "registrationState":I
    :cond_d
    :goto_3
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v14

    invoke-virtual/range {v15 .. v20}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 852
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 857
    .end local v10    # "baseStationId":I
    .end local v11    # "baseStationLatitude":I
    .end local v12    # "baseStationLongitude":I
    .end local v13    # "systemId":I
    .end local v14    # "networkId":I
    .end local v55    # "states":[Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableSingleLocationUpdate()V

    goto/16 :goto_0

    .line 818
    .restart local v10    # "baseStationId":I
    .restart local v11    # "baseStationLatitude":I
    .restart local v12    # "baseStationLongitude":I
    .restart local v13    # "systemId":I
    .restart local v14    # "networkId":I
    .restart local v55    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v30

    .line 819
    .local v30, "ex":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing cell location data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 842
    .end local v30    # "ex":Ljava/lang/NumberFormatException;
    .restart local v9    # "nitzServiceState":I
    .restart local v42    # "nitzIso":Ljava/lang/String;
    .restart local v52    # "registrationState":I
    :pswitch_1
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto :goto_3

    .line 863
    .end local v9    # "nitzServiceState":I
    .end local v10    # "baseStationId":I
    .end local v11    # "baseStationLatitude":I
    .end local v12    # "baseStationLongitude":I
    .end local v13    # "systemId":I
    .end local v14    # "networkId":I
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v42    # "nitzIso":Ljava/lang/String;
    .end local v52    # "registrationState":I
    .end local v55    # "states":[Ljava/lang/String;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 864
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 868
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 870
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 872
    new-instance v31, Ljava/text/SimpleDateFormat;

    const-string v5, "dd/MM/yyyy hh:mm:ss.SSS"

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 873
    .local v31, "formatter":Ljava/text/DateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v50

    .line 874
    .local v50, "now":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v24

    .line 875
    .local v24, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, v24

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 877
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object/from16 v25, v5

    check-cast v25, [Ljava/lang/String;

    .line 884
    .local v25, "cdmaSubscription":[Ljava/lang/String;
    if-eqz v25, :cond_19

    move-object/from16 v0, v25

    array-length v5, v0

    const/4 v6, 0x4

    if-lt v5, v6, :cond_19

    .line 886
    const/4 v5, 0x0

    aget-object v5, v25, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 887
    const/4 v5, 0x1

    aget-object v5, v25, v5

    const/4 v6, 0x2

    aget-object v6, v25, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    const/4 v5, 0x3

    aget-object v5, v25, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMin:Ljava/lang/String;

    .line 893
    move-object/from16 v0, v25

    array-length v5, v0

    const/4 v6, 0x5

    if-lt v5, v6, :cond_15

    .line 895
    const/4 v5, 0x4

    aget-object v5, v25, v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 900
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_10

    .line 901
    :cond_f
    const-string v5, "CdmaSST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No PRL version in RIL_CDMA_SUBSCRIPTION : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 910
    :cond_10
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last GET_CDMA_SUBSCRIPTION MDN response on:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    .line 917
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    if-nez v5, :cond_16

    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION: MDN=null on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 928
    :goto_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 930
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateOtaspState()V

    .line 931
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_17

    .line 933
    const-string v5, "GET_CDMA_SUBSCRIPTION set imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/IccRecords;->setImsi(Ljava/lang/String;)V

    .line 943
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v5, :cond_11

    .line 944
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumber(Ljava/lang/String;I)V

    .line 948
    :cond_11
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v5, :cond_0

    .line 949
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_12

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 952
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 958
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "cdma_disable_nv_cdma_if_no_uicc_lte"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v5, v6, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_NOT_INITIALIZED:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v5, v6, :cond_18

    .line 969
    :cond_14
    const-string v5, "RUIM card projects and K2PLC_MPCS SIM not send INTENT_VALUE_ICC_IMSI in CARD_ABSENT"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :cond_15
    const-string v5, "CdmaSST"

    const-string v6, "No PRL version in RIL_CDMA_SUBSCRIPTION"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 923
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION: MDN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 938
    :cond_17
    const-string v5, "GET_CDMA_SUBSCRIPTION either mIccRecords is null  or NV type device - not setting Imsi in mIccRecords"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 977
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v6, "IMSI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 990
    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get last GET_CDMA_SUBSCRIPTION MDN response: error parsing cdmaSubscription params num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DBG_GET_MDN:Ljava/lang/String;

    .line 994
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GET_CDMA_SUBSCRIPTION: error parsing cdmaSubscription params num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1004
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v24    # "calendar":Ljava/util/Calendar;
    .end local v25    # "cdmaSubscription":[Ljava/lang/String;
    .end local v31    # "formatter":Ljava/text/DateFormat;
    .end local v50    # "now":J
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1008
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1010
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v43, v5, v6

    check-cast v43, Ljava/lang/String;

    .line 1011
    .local v43, "nitzString":Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v44

    .line 1013
    .local v44, "nitzReceiveTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-wide/from16 v2, v44

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setTimeFromNITZString(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1019
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v43    # "nitzString":Ljava/lang/String;
    .end local v44    # "nitzReceiveTime":J
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1023
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDontPollSignalStrength:Z

    .line 1025
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    goto/16 :goto_0

    .line 1030
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_c
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    if-nez v5, :cond_1d

    .line 1031
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRuimLoaded:Z

    .line 1041
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v5, v5, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v5, :cond_1a

    .line 1042
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    check-cast v5, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    .line 1047
    :cond_1a
    sget-boolean v5, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v5, :cond_1c

    .line 1048
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcIccCardProxy()Lcom/android/internal/telephony/uicc/IccCardProxy;

    move-result-object v32

    .line 1049
    .local v32, "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v5, :cond_1c

    .line 1050
    if-eqz v32, :cond_1c

    .line 1051
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v33

    .line 1052
    .local v33, "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getIMSI_fromIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 1054
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    .line 1055
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v5, :cond_1c

    .line 1056
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_1b

    .line 1057
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1059
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_1c

    .line 1063
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 1064
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v6, "IMSI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    .end local v32    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    .end local v33    # "iccRec":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateNetworkNameDisplay()V

    goto/16 :goto_0

    .line 1034
    :cond_1d
    const-string v5, "Receive RUIM refresh reload"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1035
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    .line 1036
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_7

    .line 1084
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1086
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1093
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_e
    const-string v5, "[CdmaServiceStateTracker] ERI file has been loaded, repolling."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 1098
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1099
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1100
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object/from16 v36, v5

    check-cast v36, [I

    .line 1101
    .local v36, "ints":[I
    const/4 v5, 0x0

    aget v47, v36, v5

    .line 1102
    .local v47, "otaStatus":I
    const/16 v5, 0x8

    move/from16 v0, v47

    if-eq v0, v5, :cond_1e

    const/16 v5, 0xa

    move/from16 v0, v47

    if-ne v0, v5, :cond_0

    .line 1104
    :cond_1e
    const-string v5, "EVENT_OTA_PROVISION_STATUS_CHANGE: Complete, Reload MDN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1111
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v36    # "ints":[I
    .end local v47    # "otaStatus":I
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1112
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1113
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object/from16 v36, v5

    check-cast v36, [I

    .line 1114
    .restart local v36    # "ints":[I
    const/4 v5, 0x0

    aget v5, v36, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 1118
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v36    # "ints":[I
    :sswitch_11
    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v5, :cond_0

    .line 1119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_CT_MCCMNC_CHANGE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1120
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    goto/16 :goto_0

    .line 1125
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1126
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_1f

    .line 1127
    const-string v5, "EVENT_RIL_CDMA_RS_INFO:CDMA Info ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    :cond_1f
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_21

    .line 1129
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    .line 1130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RIL_CDMA_RS_INFO:version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mobile_sw_version:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->mobile_sw_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " esn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->esn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " prl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->prl_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pre_only:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pre_only:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " customer_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->customer_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pri:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pri2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1143
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    .line 1144
    .local v38, "mCc":Ljava/lang/String;
    const-string v5, "gsm.cdma.nv.mcc"

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const-string v5, "gsm.cdma.nv.mnc"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->imsi:Ljava/lang/String;

    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v5, "gsm.cdma.nv.home.country"

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1153
    .end local v38    # "mCc":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 1154
    .local v58, "unifiedPRIversion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRDInfo:Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CdmaRadioStateInfo;->pri_version_2:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    .line 1158
    :cond_20
    const-string v5, "gsm.cdma.pri.version"

    move-object/from16 v0, v58

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1148
    .end local v58    # "unifiedPRIversion":Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 1150
    .local v27, "e":Ljava/lang/Exception;
    const-string v5, "CdmaSST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1161
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_21
    const-string v5, "EVENT_RIL_CDMA_RS_INFO:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1168
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_13
    const-string v54, ""

    .line 1169
    .local v54, "retrieved_IMSI_MCC":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1170
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_23

    .line 1171
    const-string v5, "EVENT_RESPONSE_MCC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1204
    :goto_9
    sput-object v54, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    .line 1205
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1206
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v5, :cond_0

    .line 1207
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    .line 1208
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v5, :cond_0

    .line 1209
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_22

    .line 1210
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1212
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 1215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1216
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v6, "IMSI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :cond_23
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_26

    .line 1173
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1174
    .local v41, "nValue":Ljava/lang/String;
    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1176
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xe

    if-lt v5, v6, :cond_24

    .line 1180
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1181
    .local v40, "nCommand":Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 1182
    .local v35, "id":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1184
    .local v21, "NvItemData":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1185
    .local v4, "NAM":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1186
    .local v46, "nonDecode":Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v46

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .line 1187
    .local v48, "nonDecodeVal":J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1188
    .local v28, "decodeVal":J
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v54

    .line 1189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MCC:IMSI_MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1194
    .end local v4    # "NAM":Ljava/lang/String;
    .end local v21    # "NvItemData":Ljava/lang/String;
    .end local v28    # "decodeVal":J
    .end local v35    # "id":Ljava/lang/String;
    .end local v40    # "nCommand":Ljava/lang/String;
    .end local v46    # "nonDecode":Ljava/lang/String;
    .end local v48    # "nonDecodeVal":J
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MNC:IMSI_MCC: unexpect nCommand length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1199
    :cond_25
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MCC:error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1202
    .end local v41    # "nValue":Ljava/lang/String;
    :cond_26
    const-string v5, "EVENT_RESPONSE_MCC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1226
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v54    # "retrieved_IMSI_MCC":Ljava/lang/String;
    :sswitch_14
    const-string v53, ""

    .line 1227
    .local v53, "retrieved_IMSI_11_12":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1228
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v5, :cond_28

    .line 1229
    const-string v5, "EVENT_RESPONSE_MNC:ar.result == null."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1263
    :goto_a
    sput-object v53, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    .line 1264
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1265
    sget-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-nez v5, :cond_0

    .line 1266
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    .line 1267
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    if-eqz v5, :cond_0

    .line 1268
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v5, :cond_27

    .line 1269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1271
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isReportImsiFromCdma()Ljava/lang/Boolean;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_0

    .line 1274
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v6, "IMSI"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1230
    :cond_28
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2b

    .line 1231
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->validateStateOfNv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1232
    .restart local v41    # "nValue":Ljava/lang/String;
    const-string v5, ""

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1234
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xc

    if-lt v5, v6, :cond_29

    .line 1238
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1239
    .restart local v40    # "nCommand":Ljava/lang/String;
    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 1240
    .restart local v35    # "id":Ljava/lang/String;
    const/16 v5, 0x8

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 1241
    .restart local v21    # "NvItemData":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1242
    .restart local v4    # "NAM":Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->ReverseByte(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 1243
    .restart local v46    # "nonDecode":Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v46

    invoke-static {v0, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v48

    .line 1244
    .restart local v48    # "nonDecodeVal":J
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->DecodeBCD(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1245
    .restart local v28    # "decodeVal":J
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v53

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MNC:IMSI_11_12:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1251
    .end local v4    # "NAM":Ljava/lang/String;
    .end local v21    # "NvItemData":Ljava/lang/String;
    .end local v28    # "decodeVal":J
    .end local v35    # "id":Ljava/lang/String;
    .end local v40    # "nCommand":Ljava/lang/String;
    .end local v46    # "nonDecode":Ljava/lang/String;
    .end local v48    # "nonDecodeVal":J
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MNC:IMSI_11_12: unexpect nCommand length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1257
    :cond_2a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_RESPONSE_MNC:error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1261
    .end local v41    # "nValue":Ljava/lang/String;
    :cond_2b
    const-string v5, "EVENT_RESPONSE_MNC:No this section!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1287
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v53    # "retrieved_IMSI_11_12":Ljava/lang/String;
    :sswitch_15
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleIfLanguageChanged()V

    goto/16 :goto_0

    .line 1292
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1293
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    .line 1294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    if-eqz v5, :cond_0

    .line 1298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaVoiceMail:Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/HtcCdmaVoiceMail;->setNumberToDefault(I)V

    goto/16 :goto_0

    .line 1308
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1309
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object/from16 v37, v5

    check-cast v37, [I

    .line 1310
    .local v37, "isSIMRemoved":[I
    const-string v6, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event EVENT_SIM_HOT_SWAP_STATUS Received - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v37, :cond_2c

    move-object/from16 v0, v37

    array-length v5, v0

    :goto_b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    if-eqz v37, :cond_0

    move-object/from16 v0, v37

    array-length v5, v0

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aget v5, v37, v5

    if-nez v5, :cond_0

    .line 1315
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    .line 1317
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcClearCacheWhenSimUnavaliable(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0x37

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->requestGetRadioSysInfo(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1310
    :cond_2c
    const/4 v5, -0x1

    goto :goto_b

    .line 1328
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v37    # "isSIMRemoved":[I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 1329
    .restart local v32    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    if-eqz v32, :cond_0

    .line 1330
    const/16 v5, 0x1b

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1346
    .end local v32    # "iccCardProxy":Lcom/android/internal/telephony/uicc/IccCardProxy;
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1347
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [I

    move-object/from16 v39, v5

    check-cast v39, [I

    .line 1348
    .local v39, "modemRestart":[I
    if-eqz v39, :cond_0

    move-object/from16 v0, v39

    array-length v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 1351
    const/16 v5, 0x47

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_2f

    .line 1354
    const/4 v5, 0x0

    aget v5, v39, v5

    if-nez v5, :cond_2e

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2e

    .line 1355
    const-string v34, ""

    .line 1356
    .local v34, "iccoperator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v5, :cond_30

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1361
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyModemResetReason(Ljava/lang/String;)V

    .line 1365
    .end local v34    # "iccoperator":Ljava/lang/String;
    :cond_2e
    new-instance v23, Landroid/content/Intent;

    const-string v5, "com.htc.android.ModemLoggingNotify"

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    .local v23, "bc":Landroid/content/Intent;
    const-string v5, "Status"

    const/4 v6, 0x0

    aget v6, v39, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1367
    const-string v5, "phone_type"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneType()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    const-string v5, "phone_slot"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1378
    .end local v23    # "bc":Landroid/content/Intent;
    :cond_2f
    const/4 v5, 0x0

    aget v5, v39, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1379
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    .line 1382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v6, "gsm.modem.reset.period"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const/16 v5, 0x4b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_31

    const v57, 0x11170

    .line 1387
    .local v57, "timer":I
    :goto_d
    const/16 v5, 0x48

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move/from16 v0, v57

    int-to-long v6, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1390
    const/16 v5, 0x4b

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    if-ne v5, v6, :cond_0

    .line 1391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1358
    .end local v57    # "timer":I
    .restart local v34    # "iccoperator":Ljava/lang/String;
    :cond_30
    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    if-eqz v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    .line 1359
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_MCC:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->IMSI_11_12:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_c

    .line 1386
    .end local v34    # "iccoperator":Ljava/lang/String;
    :cond_31
    const v57, 0xea60

    goto :goto_d

    .line 1408
    .end local v22    # "ar":Landroid/os/AsyncResult;
    .end local v39    # "modemRestart":[I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v6, "sys.under_silent_reset"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_0

    .line 1416
    :sswitch_1b
    const-string v5, "EVENT_CHANGE_IMS_STATE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setPowerStateToDesired()V

    goto/16 :goto_0

    .line 1421
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1423
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_32

    .line 1424
    const-string v5, "CdmaSST"

    const-string v6, "Set plmn list succesfully"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1426
    :cond_32
    const-string v5, "CdmaSST"

    const-string v6, "Set plmn list failed"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1434
    .end local v22    # "ar":Landroid/os/AsyncResult;
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/AsyncResult;

    .line 1435
    .restart local v22    # "ar":Landroid/os/AsyncResult;
    if-nez v22, :cond_33

    .line 1436
    const-string v5, "CdmaSST"

    const-string v6, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED AsyncResult is null."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1439
    :cond_33
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_34

    .line 1440
    const-string v5, "CdmaSST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED AsyncResult has exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1444
    :cond_34
    const-string v5, "CdmaSST"

    const-string v6, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 830
    .restart local v10    # "baseStationId":I
    .restart local v11    # "baseStationLatitude":I
    .restart local v12    # "baseStationLongitude":I
    .restart local v13    # "systemId":I
    .restart local v14    # "networkId":I
    .restart local v52    # "registrationState":I
    .restart local v55    # "states":[Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_2

    .line 583
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_5
        0x5 -> :sswitch_7
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0x12 -> :sswitch_d
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x1a -> :sswitch_1
        0x1b -> :sswitch_c
        0x1e -> :sswitch_4
        0x1f -> :sswitch_6
        0x22 -> :sswitch_8
        0x23 -> :sswitch_2
        0x24 -> :sswitch_e
        0x25 -> :sswitch_f
        0x27 -> :sswitch_0
        0x28 -> :sswitch_10
        0x2d -> :sswitch_1b
        0x33 -> :sswitch_11
        0x35 -> :sswitch_15
        0x37 -> :sswitch_12
        0x38 -> :sswitch_13
        0x39 -> :sswitch_14
        0x3d -> :sswitch_16
        0x43 -> :sswitch_17
        0x45 -> :sswitch_17
        0x46 -> :sswitch_18
        0x47 -> :sswitch_19
        0x48 -> :sswitch_1a
        0x4b -> :sswitch_19
        0x4e -> :sswitch_1c
        0x270f -> :sswitch_1d
    .end sparse-switch

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 13
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/16 v12, 0xe

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2471
    iget-object v6, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    if-eq v6, v9, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2473
    :cond_1
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_c

    .line 2474
    const/4 v1, 0x0

    .line 2476
    .local v1, "err":Lcom/android/internal/telephony/CommandException$Error;
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v6, v6, Lcom/android/internal/telephony/CommandException;

    if-eqz v6, :cond_2

    .line 2477
    iget-object v6, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    check-cast v6, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 2480
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v6, :cond_3

    .line 2482
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 2486
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2488
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cancelPollState()V

    goto :goto_0

    .line 2492
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v1, v6, :cond_5

    .line 2493
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePollStateResult: RIL returned an error where it must succeed"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2503
    .end local v1    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v9, v6, v8

    add-int/lit8 v9, v9, -0x1

    aput v9, v6, v8

    .line 2505
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v6, v6, v8

    if-nez v6, :cond_0

    .line 2506
    const/4 v4, 0x0

    .line 2507
    .local v4, "namMatch":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isHomeSid(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2508
    const/4 v4, 0x1

    .line 2514
    :cond_6
    sget v6, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v9, 0xd

    if-ne v6, v9, :cond_7

    .line 2516
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    if-nez v6, :cond_7

    .line 2519
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v6

    if-ne v6, v12, :cond_d

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 2524
    :cond_7
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v6, :cond_e

    .line 2525
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2531
    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 2536
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    .line 2537
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2538
    const/4 v3, 0x1

    .line 2539
    .local v3, "isPrlLoaded":Z
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2540
    const/4 v3, 0x0

    .line 2542
    :cond_8
    if-eqz v3, :cond_9

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    if-nez v6, :cond_f

    .line 2544
    :cond_9
    const-string v6, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2545
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    .line 2573
    :cond_a
    :goto_4
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v5

    .line 2582
    .local v5, "roamingIndicator":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getHtcEriServiceState(Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2583
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 2590
    .local v0, "eriIconInd":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ". mCdmaRoaming = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", isPrlLoaded = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ". namMatch = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " , mIsInPrl = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", mRoamingIndicator = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", eriIconInd = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", mDefaultRoamingIndicator= "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2608
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v6

    const-string v9, "cdma_disable_nv_cdma_if_no_uicc_lte"

    invoke-static {v6, v9, v8}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v6

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v6, v8, :cond_b

    .line 2616
    const-string v6, "MPCS SIM set ECC only service in ABSENT"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2617
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    .line 2618
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v11}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2622
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto/16 :goto_0

    .line 2497
    .end local v0    # "eriIconInd":I
    .end local v3    # "isPrlLoaded":Z
    .end local v4    # "namMatch":Z
    .end local v5    # "roamingIndicator":I
    :cond_c
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2498
    :catch_0
    move-exception v2

    .line 2499
    .local v2, "ex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handlePollStateResult: Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "namMatch":Z
    :cond_d
    move v6, v8

    .line 2519
    goto/16 :goto_2

    .line 2527
    :cond_e
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    goto/16 :goto_3

    .line 2546
    .restart local v3    # "isPrlLoaded":Z
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isSidsAllZeros()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2547
    if-nez v4, :cond_10

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_10

    .line 2549
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 2550
    :cond_10
    if-eqz v4, :cond_12

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-nez v6, :cond_12

    .line 2552
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    if-ne v6, v12, :cond_11

    .line 2554
    const-string v6, "Turn off roaming indicator as voice is LTE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2555
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 2557
    :cond_11
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v11}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 2559
    :cond_12
    if-nez v4, :cond_13

    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    if-eqz v6, :cond_13

    .line 2561
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 2564
    :cond_13
    iget v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    if-gt v6, v11, :cond_14

    .line 2565
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4

    .line 2568
    :cond_14
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v9, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v6, v9}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto/16 :goto_4
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 35
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2130
    sparse-switch p1, :sswitch_data_0

    .line 2459
    const-string v3, "handlePollStateResultMessage: RIL response handle in wrong phone! Expected CDMA RIL request and get GSM RIL request."

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2132
    :sswitch_0
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v33, v3

    check-cast v33, [Ljava/lang/String;

    .line 2134
    .local v33, "states":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " states="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2138
    const/16 v30, 0x4

    .line 2139
    .local v30, "regState":I
    const/16 v20, 0x0

    .line 2141
    .local v20, "dataRadioTechnology":I
    move-object/from16 v0, v33

    array-length v3, v0

    if-lez v3, :cond_3

    .line 2143
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 2146
    move-object/from16 v0, v33

    array-length v3, v0

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x3

    aget-object v3, v33, v3

    if-eqz v3, :cond_1

    .line 2147
    const/4 v3, 0x3

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 2154
    :cond_1
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isCustomizeCDMARadioTech(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    .line 2158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2160
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not CDMA radioTechnology DATA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2164
    :catch_0
    move-exception v23

    .line 2165
    .local v23, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 2170
    .end local v23    # "ex":Ljava/lang/NumberFormatException;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v21

    .line 2172
    .local v21, "dataRegState":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    .line 2175
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoaming:Z

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 2177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 2178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 2180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlPollStateResultMessage: cdma setDataRegState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " regState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dataRadioTechnology="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2188
    .end local v20    # "dataRadioTechnology":I
    .end local v21    # "dataRegState":I
    .end local v30    # "regState":I
    .end local v33    # "states":[Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v33, v3

    check-cast v33, [Ljava/lang/String;

    .line 2190
    .restart local v33    # "states":[Ljava/lang/String;
    const/16 v31, 0x4

    .line 2191
    .local v31, "registrationState":I
    const/16 v28, -0x1

    .line 2192
    .local v28, "radioTechnology":I
    const/4 v8, -0x1

    .line 2194
    .local v8, "baseStationId":I
    const v9, 0x7fffffff

    .line 2196
    .local v9, "baseStationLatitude":I
    const v10, 0x7fffffff

    .line 2197
    .local v10, "baseStationLongitude":I
    const/4 v2, 0x0

    .line 2198
    .local v2, "cssIndicator":I
    const/4 v11, 0x0

    .line 2199
    .local v11, "systemId":I
    const/4 v12, 0x0

    .line 2200
    .local v12, "networkId":I
    const/16 v32, -0x1

    .line 2201
    .local v32, "roamingIndicator":I
    const/16 v34, 0x0

    .line 2202
    .local v34, "systemIsInPrl":I
    const/16 v22, 0x0

    .line 2203
    .local v22, "defaultRoamingIndicator":I
    const/16 v29, 0x0

    .line 2205
    .local v29, "reasonForDenial":I
    move-object/from16 v0, v33

    array-length v3, v0

    const/16 v4, 0xe

    if-lt v3, v4, :cond_12

    .line 2207
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v33, v3

    if-eqz v3, :cond_4

    .line 2208
    const/4 v3, 0x0

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 2210
    :cond_4
    const/4 v3, 0x3

    aget-object v3, v33, v3

    if-eqz v3, :cond_5

    .line 2211
    const/4 v3, 0x3

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 2213
    :cond_5
    const/4 v3, 0x4

    aget-object v3, v33, v3

    if-eqz v3, :cond_6

    .line 2214
    const/4 v3, 0x4

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 2216
    :cond_6
    const/4 v3, 0x5

    aget-object v3, v33, v3

    if-eqz v3, :cond_7

    .line 2217
    const/4 v3, 0x5

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2219
    :cond_7
    const/4 v3, 0x6

    aget-object v3, v33, v3

    if-eqz v3, :cond_8

    .line 2220
    const/4 v3, 0x6

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2223
    :cond_8
    if-nez v9, :cond_9

    if-nez v10, :cond_9

    .line 2224
    const v9, 0x7fffffff

    .line 2225
    const v10, 0x7fffffff

    .line 2227
    :cond_9
    const/4 v3, 0x7

    aget-object v3, v33, v3

    if-eqz v3, :cond_a

    .line 2228
    const/4 v3, 0x7

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2230
    :cond_a
    const/16 v3, 0x8

    aget-object v3, v33, v3

    if-eqz v3, :cond_b

    .line 2231
    const/16 v3, 0x8

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2233
    :cond_b
    const/16 v3, 0x9

    aget-object v3, v33, v3

    if-eqz v3, :cond_c

    .line 2234
    const/16 v3, 0x9

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2236
    :cond_c
    const/16 v3, 0xa

    aget-object v3, v33, v3

    if-eqz v3, :cond_d

    .line 2237
    const/16 v3, 0xa

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    .line 2239
    :cond_d
    const/16 v3, 0xb

    aget-object v3, v33, v3

    if-eqz v3, :cond_e

    .line 2240
    const/16 v3, 0xb

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 2242
    :cond_e
    const/16 v3, 0xc

    aget-object v3, v33, v3

    if-eqz v3, :cond_f

    .line 2243
    const/16 v3, 0xc

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 2245
    :cond_f
    const/16 v3, 0xd

    aget-object v3, v33, v3

    if-eqz v3, :cond_10

    .line 2246
    const/16 v3, 0xd

    aget-object v3, v33, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v29

    .line 2261
    :cond_10
    :goto_1
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isCustomizeCDMARadioTech(I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 2263
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_11

    .line 2265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2267
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not CDMA radioTechnology VOICE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2248
    :catch_1
    move-exception v23

    .line 2249
    .restart local v23    # "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_POLL_STATE_REGISTRATION_CDMA: error parsing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 2252
    .end local v23    # "ex":Ljava/lang/NumberFormatException;
    :cond_12
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning! Wrong number of parameters returned from RIL_REQUEST_REGISTRATION_STATE: expected 14 or more strings and got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " strings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2275
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v3, :cond_14

    .line 2276
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v7

    .line 2277
    .local v7, "nitzServiceState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    new-instance v3, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventTime:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGetEventDate:Ljava/util/Date;

    invoke-direct/range {v3 .. v12}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;-><init>(JLjava/util/Date;IIIIII)V

    invoke-virtual {v13, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateRegState(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;)Ljava/lang/String;

    move-result-object v25

    .line 2283
    .local v25, "nitzIso":Ljava/lang/String;
    if-eqz v25, :cond_14

    .line 2284
    packed-switch v7, :pswitch_data_0

    .line 2294
    .end local v7    # "nitzServiceState":I
    .end local v25    # "nitzIso":Ljava/lang/String;
    :cond_14
    :goto_2
    :pswitch_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    .line 2298
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0xa

    aget-object v3, v33, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isRoamIndForHomeSystem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaRoaming:Z

    .line 2300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->regCodeToServiceState(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/telephony/ServiceState;->setRilVoiceRadioTechnology(I)V

    .line 2310
    sget v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_15

    sget v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v4, 0x1c

    if-ne v3, v4, :cond_16

    .line 2320
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_16

    .line 2321
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v4, "auto_time"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2327
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->setCssIndicator(I)V

    .line 2328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3, v11, v12}, Landroid/telephony/ServiceState;->setSystemAndNetworkId(II)V

    .line 2329
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingIndicator:I

    .line 2330
    if-nez v34, :cond_19

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsInPrl:Z

    .line 2331
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDefaultRoamingIndicator:I

    .line 2335
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v18, v12

    invoke-virtual/range {v13 .. v18}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 2338
    if-nez v29, :cond_1a

    .line 2339
    const-string v3, "General"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    .line 2346
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_17

    .line 2347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration denied, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2350
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationState:I

    const/16 v5, 0xfe

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->htcSetCdmaRadioPowerSaveMode(Z)V

    goto/16 :goto_0

    .line 2287
    .restart local v7    # "nitzServiceState":I
    .restart local v25    # "nitzIso":Ljava/lang/String;
    :pswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 2298
    .end local v7    # "nitzServiceState":I
    .end local v25    # "nitzIso":Ljava/lang/String;
    :cond_18
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 2330
    :cond_19
    const/4 v3, 0x1

    goto :goto_4

    .line 2340
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v29

    if-ne v0, v3, :cond_1b

    .line 2341
    const-string v3, "Authentication Failure"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_5

    .line 2343
    :cond_1b
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRegistrationDeniedReason:Ljava/lang/String;

    goto :goto_5

    .line 2350
    :cond_1c
    const/4 v3, 0x0

    goto :goto_6

    .line 2355
    .end local v2    # "cssIndicator":I
    .end local v8    # "baseStationId":I
    .end local v9    # "baseStationLatitude":I
    .end local v10    # "baseStationLongitude":I
    .end local v11    # "systemId":I
    .end local v12    # "networkId":I
    .end local v22    # "defaultRoamingIndicator":I
    .end local v28    # "radioTechnology":I
    .end local v29    # "reasonForDenial":I
    .end local v31    # "registrationState":I
    .end local v32    # "roamingIndicator":I
    .end local v33    # "states":[Ljava/lang/String;
    .end local v34    # "systemIsInPrl":I
    :sswitch_2
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v27, v3

    check-cast v27, [Ljava/lang/String;

    .line 2357
    .local v27, "opNames":[Ljava/lang/String;
    if-eqz v27, :cond_22

    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_22

    .line 2360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_POLL_STATE_OPERATOR_CDMA - len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v3, :cond_1d

    .line 2362
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    const/4 v5, 0x2

    aget-object v5, v27, v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->fakeOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v27, v3

    .line 2395
    :cond_1d
    const/16 v26, 0x0

    .line 2396
    .local v26, "opLong":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriRoamingIndicator()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    const/16 v24, 0x1

    .line 2401
    .local v24, "isRoaming":Z
    :goto_7
    if-eqz v24, :cond_20

    sget v3, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_20

    .line 2404
    const-string v3, "CdmaSST"

    const-string v4, "KDDI and into roaming network"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x3070154

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2432
    :goto_8
    const/4 v3, 0x0

    aget-object v3, v27, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 2433
    const/4 v3, 0x2

    aget-object v3, v27, v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getCustomizeSPNString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v19

    .line 2434
    .local v19, "customize_SPN_India":Ljava/lang/String;
    if-eqz v19, :cond_1e

    .line 2436
    move-object/from16 v26, v19

    .line 2437
    const/4 v3, 0x1

    aput-object v19, v27, v3

    .line 2438
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 2440
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opLong="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",opNames[1]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v4, 0x1

    aget-object v4, v27, v4

    const/4 v5, 0x2

    aget-object v5, v27, v5

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    .end local v19    # "customize_SPN_India":Ljava/lang/String;
    .end local v24    # "isRoaming":Z
    .end local v26    # "opLong":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v3, :cond_0

    .line 2450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    if-eqz v27, :cond_23

    move-object/from16 v0, v27

    array-length v3, v0

    const/4 v5, 0x3

    if-lt v3, v5, :cond_23

    const/4 v3, 0x2

    aget-object v3, v27, v3

    :goto_a
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->updateOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 2451
    .restart local v25    # "nitzIso":Ljava/lang/String;
    if-eqz v25, :cond_0

    .line 2452
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixTimeZone(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2396
    .end local v25    # "nitzIso":Ljava/lang/String;
    .restart local v26    # "opLong":Ljava/lang/String;
    :cond_1f
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 2407
    .restart local v24    # "isRoaming":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x2

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    const/4 v4, 0x2

    aget-object v4, v27, v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "opLong":Ljava/lang/String;
    check-cast v26, Ljava/lang/String;

    .line 2410
    .restart local v26    # "opLong":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In mOperatorStringLists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2424
    :cond_21
    const/4 v3, 0x0

    aget-object v26, v27, v3

    .line 2425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opNames[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2446
    .end local v24    # "isRoaming":Z
    .end local v26    # "opLong":Ljava/lang/String;
    :cond_22
    const-string v3, "EVENT_POLL_STATE_OPERATOR_CDMA: error parsing opNames"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2450
    :cond_23
    const/4 v3, 0x0

    goto :goto_a

    .line 2130
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_2
    .end sparse-switch

    .line 2284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected hangupAndPowerOff()V
    .locals 1

    .prologue
    .line 4153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcHangupAndPowerOff(Ljava/lang/Boolean;)V

    .line 4154
    return-void
.end method

.method protected htcHangupAndPowerOff(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "simRemainActive"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4165
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 4166
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 4167
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCall;->hangupIfAlive()V

    .line 4172
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    if-eqz v0, :cond_1

    .line 4174
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    .line 4202
    :goto_0
    return-void

    .line 4176
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected htcSetPowerStateToDesired(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "isRequestedByPhoneApp"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1595
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->partialDisableUnderMultiPhone(Landroid/content/Context;)[Z

    move-result-object v1

    .line 1597
    .local v1, "partialDisableStatus":[Z
    :goto_0
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_0

    .line 1599
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    .line 1600
    const-string v4, "change mDesiredPowerState to false by partialDisableStatus"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1605
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceShuttingDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDeviceShuttingDown:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDesiredPowerState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPowerOffDelayNeed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPowerOffDelayNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAlarmSwitch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImsFlightModeRequest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1612
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFlightModeBootup = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1632
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_7

    .line 1635
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportOperatorPreferredPLMN()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1636
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPlmnlist()Ljava/lang/String;

    move-result-object v2

    .line 1637
    .local v2, "plmnlist":Ljava/lang/String;
    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v4

    if-nez v4, :cond_5

    .line 1638
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x4e

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredPLMNList(Ljava/lang/String;Landroid/os/Message;)V

    .line 1645
    .end local v2    # "plmnlist":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    if-eqz v4, :cond_6

    .line 1647
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    .line 1910
    :cond_3
    :goto_2
    return-void

    .end local v1    # "partialDisableStatus":[Z
    :cond_4
    move-object v1, v3

    .line 1595
    goto/16 :goto_0

    .line 1640
    .restart local v1    # "partialDisableStatus":[Z
    .restart local v2    # "plmnlist":Ljava/lang/String;
    :cond_5
    const-string v4, "CdmaSST"

    const-string v5, "operator preferred PLMN list is empty."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1649
    .end local v2    # "plmnlist":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_2

    .line 1651
    :cond_7
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1652
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1655
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcPowerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Ljava/lang/Boolean;)V

    goto :goto_2

    .line 1657
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1658
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestShutdown(Landroid/os/Message;)V

    goto :goto_2

    .line 1662
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v4, v5, :cond_3

    .line 1665
    const-string v4, "CdmaSST"

    const-string v5, "Boot-up with airplane mode is on"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    .line 1667
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    .line 1669
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1671
    :cond_a
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    .line 1672
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCellularPower(ZLandroid/os/Message;)V

    goto :goto_2

    .line 1674
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_2
.end method

.method protected initPowerState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4757
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .line 4759
    .local v0, "airplaneMode":I
    :goto_0
    if-gtz v0, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    .line 4761
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDesiredPowerState:Z

    if-nez v1, :cond_2

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    .line 4763
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mFlightModeBootup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    .line 4764
    const-string v1, "CdmaSST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CONTROL_POWER] initPowerState() mImsFlightModeRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsFlightModeRequest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    return-void

    .end local v0    # "airplaneMode":I
    :cond_0
    move v0, v3

    .line 4757
    goto :goto_0

    .restart local v0    # "airplaneMode":I
    :cond_1
    move v1, v3

    .line 4759
    goto :goto_1

    :cond_2
    move v2, v3

    .line 4761
    goto :goto_2
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 1

    .prologue
    .line 3910
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 4099
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMinInfoReady:Z

    return v0
.end method

.method public isReportImsiFromCdma()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-eqz v0, :cond_0

    .line 4210
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4217
    :goto_0
    return-object v0

    .line 4213
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_report_imsi_from_usim"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4215
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 4217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSidsAllZeros()Z
    .locals 2

    .prologue
    .line 3877
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    if-eqz v1, :cond_1

    .line 3878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3879
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    .line 3880
    const/4 v1, 0x0

    .line 3884
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 3878
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3884
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4371
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4372
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 4376
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4377
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 3182
    const/4 v1, 0x0

    .line 3186
    .local v1, "result":Z
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    if-eqz v4, :cond_0

    move v2, v1

    .line 3313
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 3194
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    if-eqz p1, :cond_2

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 3196
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 3307
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifySignalStrength()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    move v2, v1

    .line 3313
    .restart local v2    # "result":I
    goto :goto_0

    .line 3199
    .end local v2    # "result":I
    :cond_2
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/SignalStrength;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 3200
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 3201
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->validateInputForCDMA()V

    .line 3209
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 3216
    .local v3, "signalBar":I
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->signalBarLogControl(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3217
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signalBar:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3221
    :cond_3
    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSeparateSingnalBar()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3226
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evdoSignalBar="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoSignalBar()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3308
    .end local v3    # "signalBar":I
    :catch_0
    move-exception v0

    .line 3309
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignalStrengthResult() Phone already destroyed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SignalStrength not notified"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected onUpdateIccAvailability()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4328
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v1, :cond_1

    .line 4367
    :cond_0
    :goto_0
    return-void

    .line 4332
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 4334
    .local v0, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eq v1, v0, :cond_0

    .line 4335
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_3

    .line 4336
    const-string v1, "Removing stale icc objects."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4337
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 4339
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4340
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_2

    .line 4341
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 4345
    :cond_2
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4346
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4348
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorCatch:Ljava/lang/String;

    .line 4351
    :cond_3
    if-eqz v0, :cond_0

    .line 4352
    const-string v1, "New card found"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4353
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 4354
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 4355
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_0

    .line 4356
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v2, 0x1a

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4358
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4359
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v1, :cond_0

    .line 4360
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v2, 0x1b

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseSidNid(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sidStr"    # Ljava/lang/String;
    .param p2, "nidStr"    # Ljava/lang/String;

    .prologue
    .line 4271
    if-eqz p1, :cond_0

    .line 4272
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4273
    .local v3, "sid":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    .line 4274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 4276
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeSystemId:[I

    aget-object v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4274
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4277
    :catch_0
    move-exception v0

    .line 4278
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error parsing system id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 4283
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v3    # "sid":[Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: SID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4286
    if-eqz p2, :cond_1

    .line 4287
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4288
    .local v2, "nid":[Ljava/lang/String;
    array-length v4, v2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    .line 4289
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 4291
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHomeNetworkId:[I

    aget-object v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4289
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4292
    :catch_1
    move-exception v0

    .line 4293
    .restart local v0    # "ex":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: error parsing network id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 4298
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .end local v1    # "i":I
    .end local v2    # "nid":[Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA_SUBSCRIPTION: NID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4300
    return-void
.end method

.method public pollState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2641
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    .line 2642
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aput v1, v2, v1

    .line 2644
    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$4;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2709
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2711
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x19

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 2714
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2716
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 2719
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    .line 2721
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 2725
    :goto_0
    return-void

    .line 2648
    :pswitch_0
    const-string v2, "sys.under_silent_reset"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    .line 2652
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    .line 2660
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaSST:Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v0

    .line 2661
    .local v0, "airplaneMode":I
    :goto_1
    if-nez v0, :cond_2

    .line 2663
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2664
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 2665
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2666
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 2668
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .end local v0    # "airplaneMode":I
    :cond_1
    move v0, v1

    .line 2660
    goto :goto_1

    .line 2672
    .restart local v0    # "airplaneMode":I
    :cond_2
    const-string v2, "Radio unavaliable off"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2678
    .end local v0    # "airplaneMode":I
    :pswitch_1
    const-string v2, "sys.under_silent_reset"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    .line 2682
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    .line 2687
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 2688
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 2689
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 2690
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mGotCountryCode:Z

    .line 2692
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 2644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 26

    .prologue
    .line 2819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isCustomizeCDMARadioTech(I)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isCustomizeCDMARadioTech(I)Z

    move-result v22

    if-nez v22, :cond_2

    .line 2822
    :cond_0
    const-string v22, "not CDMA radioTechnology ignore pollStateDone()"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 3116
    :cond_1
    :goto_0
    return-void

    .line 2829
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 2830
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pollStateDone: oldSS=[(same)] newSS=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2838
    :goto_1
    sget-boolean v22, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v22, :cond_3

    const-string v22, "telephony.test.forceRoaming"

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 2843
    :cond_3
    const/16 v19, 0x0

    .line 2848
    .local v19, "resetCompleted":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    if-eqz v22, :cond_5

    .line 2851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    goto :goto_0

    .line 2833
    .end local v19    # "resetCompleted":Z
    :cond_4
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pollStateDone: oldSS=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] newSS=["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2855
    .restart local v19    # "resetCompleted":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    const-string v23, "sys.under_silent_reset"

    const-string v24, "0"

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mModemResetPeriod:Z

    .line 2857
    const/16 v22, 0x48

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->removeMessages(I)V

    .line 2858
    const/16 v19, 0x1

    .line 2864
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 2866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    if-nez v22, :cond_1c

    const/4 v13, 0x1

    .line 2870
    .local v13, "hasRegistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    if-nez v22, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    if-eqz v22, :cond_1d

    const/4 v11, 0x1

    .line 2874
    .local v11, "hasDeregistered":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    if-nez v22, :cond_7

    if-eqz v19, :cond_1e

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    if-nez v22, :cond_1e

    const/4 v5, 0x1

    .line 2879
    .local v5, "hasCdmaDataConnectionAttached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    if-nez v22, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    if-eqz v22, :cond_1f

    const/4 v7, 0x1

    .line 2883
    .local v7, "hasCdmaDataConnectionDetached":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_20

    const/4 v6, 0x1

    .line 2886
    .local v6, "hasCdmaDataConnectionChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_21

    const/4 v15, 0x1

    .line 2889
    .local v15, "hasRilVoiceRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_22

    const/4 v14, 0x1

    .line 2892
    .local v14, "hasRilDataRadioTechnologyChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_23

    const/4 v8, 0x1

    .line 2894
    .local v8, "hasChanged":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v22

    if-nez v22, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v22

    if-eqz v22, :cond_24

    const/16 v17, 0x1

    .line 2896
    .local v17, "hasRoamingOn":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v22

    if-eqz v22, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v22

    if-nez v22, :cond_25

    const/16 v16, 0x1

    .line 2898
    .local v16, "hasRoamingOff":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_26

    const/4 v12, 0x1

    .line 2900
    .local v12, "hasLocationChanged":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v22

    if-nez v22, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v22

    if-eqz v22, :cond_27

    const/4 v10, 0x1

    .line 2902
    .local v10, "hasDataRoamingOn":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v22

    if-eqz v22, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v22

    if-nez v22, :cond_28

    const/4 v9, 0x1

    .line 2904
    .local v9, "hasDataRoamingOff":Z
    :goto_e
    sget-boolean v22, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v22, :cond_8

    .line 2905
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "pollStateDone: hasRegistered="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasDeegistered="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasRilVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasRilDataRadioTechnologyChanged="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasChanged="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasRoamingOn="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasRoamingOff="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " hasLocationChanged="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2921
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    .line 2923
    :cond_9
    const v22, 0xc3c4

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2929
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v21, v0

    .line 2930
    .local v21, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 2931
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 2933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 2935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v20, v0

    .line 2936
    .local v20, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 2937
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 2939
    if-eqz v15, :cond_b

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updatePhoneObject()V

    .line 2943
    :cond_b
    if-eqz v14, :cond_c

    .line 2951
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateNetworkTypeGlobally: false,"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    .line 2953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    const-string v23, "gsm.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    :cond_c
    if-eqz v13, :cond_d

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 2975
    :cond_d
    if-eqz v11, :cond_e

    .line 2976
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOriginalOperatorName:Ljava/lang/String;

    .line 2979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateNetworkTypeGlobally(ZLjava/lang/Integer;)Z

    .line 2984
    :cond_e
    sget v22, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v23, 0x71

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->fixOperatorNameForLra(Landroid/telephony/ServiceState;)Z

    move-result v22

    or-int v8, v8, v22

    .line 2988
    :cond_f
    if-eqz v8, :cond_12

    .line 3007
    sget v22, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->SKU_ID:I

    const/16 v23, 0x21

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_29

    .line 3008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v22

    if-nez v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_11

    .line 3011
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getIndiaHomeOperatorName(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Ljava/lang/String;

    move-result-object v18

    .line 3012
    .local v18, "indiaOperator":Ljava/lang/String;
    if-nez v18, :cond_10

    .line 3013
    const-string v18, ""

    .line 3015
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    .end local v18    # "indiaOperator":Ljava/lang/String;
    :cond_11
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setOperatorProperties()V

    .line 3066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v23, v0

    const-string v24, "gsm.operator.isroaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v22

    if-eqz v22, :cond_2a

    const-string v22, "true"

    :goto_10
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 3073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 3076
    :cond_12
    if-eqz v5, :cond_13

    .line 3077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3080
    :cond_13
    if-eqz v7, :cond_14

    .line 3081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3084
    :cond_14
    if-nez v6, :cond_15

    if-eqz v14, :cond_16

    .line 3085
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 3089
    :cond_16
    if-eqz v17, :cond_17

    .line 3090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3093
    :cond_17
    if-eqz v16, :cond_18

    .line 3094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3098
    :cond_18
    if-eqz v10, :cond_19

    .line 3099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3102
    :cond_19
    if-eqz v9, :cond_1a

    .line 3103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 3107
    :cond_1a
    if-eqz v12, :cond_1b

    .line 3108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 3112
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 3113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcCdmaNitz:Lcom/android/internal/telephony/cdma/HtcCdmaNitz;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->displayNitzHistory(Z)V

    goto/16 :goto_0

    .line 2866
    .end local v5    # "hasCdmaDataConnectionAttached":Z
    .end local v6    # "hasCdmaDataConnectionChanged":Z
    .end local v7    # "hasCdmaDataConnectionDetached":Z
    .end local v8    # "hasChanged":Z
    .end local v9    # "hasDataRoamingOff":Z
    .end local v10    # "hasDataRoamingOn":Z
    .end local v11    # "hasDeregistered":Z
    .end local v12    # "hasLocationChanged":Z
    .end local v13    # "hasRegistered":Z
    .end local v14    # "hasRilDataRadioTechnologyChanged":Z
    .end local v15    # "hasRilVoiceRadioTechnologyChanged":Z
    .end local v16    # "hasRoamingOff":Z
    .end local v17    # "hasRoamingOn":Z
    .end local v20    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v21    # "tss":Landroid/telephony/ServiceState;
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 2870
    .restart local v13    # "hasRegistered":Z
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 2874
    .restart local v11    # "hasDeregistered":Z
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 2879
    .restart local v5    # "hasCdmaDataConnectionAttached":Z
    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 2883
    .restart local v7    # "hasCdmaDataConnectionDetached":Z
    :cond_20
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 2886
    .restart local v6    # "hasCdmaDataConnectionChanged":Z
    :cond_21
    const/4 v15, 0x0

    goto/16 :goto_7

    .line 2889
    .restart local v15    # "hasRilVoiceRadioTechnologyChanged":Z
    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 2892
    .restart local v14    # "hasRilDataRadioTechnologyChanged":Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 2894
    .restart local v8    # "hasChanged":Z
    :cond_24
    const/16 v17, 0x0

    goto/16 :goto_a

    .line 2896
    .restart local v17    # "hasRoamingOn":Z
    :cond_25
    const/16 v16, 0x0

    goto/16 :goto_b

    .line 2898
    .restart local v16    # "hasRoamingOff":Z
    :cond_26
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 2900
    .restart local v12    # "hasLocationChanged":Z
    :cond_27
    const/4 v10, 0x0

    goto/16 :goto_d

    .line 2902
    .restart local v10    # "hasDataRoamingOn":Z
    :cond_28
    const/4 v9, 0x0

    goto/16 :goto_e

    .line 3018
    .restart local v9    # "hasDataRoamingOff":Z
    .restart local v20    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v21    # "tss":Landroid/telephony/ServiceState;
    :cond_29
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    if-eqz v22, :cond_11

    .line 3019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getCtMvnoOperatorName(Lcom/android/internal/telephony/uicc/IccRecords;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v4

    .line 3020
    .local v4, "customizedSpn":Ljava/lang/String;
    if-eqz v4, :cond_11

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v4, v4, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 3066
    .end local v4    # "customizedSpn":Ljava/lang/String;
    :cond_2a
    const-string v22, "false"

    goto/16 :goto_10
.end method

.method protected radioTechnologyToDataServiceState(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 3318
    const/4 v0, 0x1

    .line 3319
    .local v0, "retVal":I
    packed-switch p1, :pswitch_data_0

    .line 3335
    :pswitch_0
    const-string v1, "radioTechnologyToDataServiceState: Wrong radioTechnology code."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3338
    :goto_0
    :pswitch_1
    return v0

    .line 3332
    :pswitch_2
    const/4 v0, 0x0

    .line 3333
    goto :goto_0

    .line 3319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected regCodeToServiceState(I)I
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3344
    sparse-switch p1, :sswitch_data_0

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regCodeToServiceState: unexpected service state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 3362
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 3348
    goto :goto_0

    :sswitch_2
    move v0, v1

    .line 3354
    goto :goto_0

    .line 3344
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_2
        0xfe -> :sswitch_0
    .end sparse-switch
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 532
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 533
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsiReady:Z

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 543
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 4
    .param p1, "registered"    # Z

    .prologue
    .line 4716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsRegistrationState - registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4718
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 4719
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    if-eqz v2, :cond_0

    .line 4720
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 4722
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4723
    .local v1, "context":Landroid/content/Context;
    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4724
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4725
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mAlarmSwitch:Z

    .line 4727
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 4732
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 4731
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mImsRegistrationOnOff:Z

    goto :goto_0
.end method

.method protected setPowerStateToDesired()V
    .locals 1

    .prologue
    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->htcSetPowerStateToDesired(Ljava/lang/Boolean;)V

    .line 1568
    return-void
.end method

.method protected setSignalStrengthDefaultValues()V
    .locals 2

    .prologue
    .line 2628
    new-instance v0, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 2629
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 547
    return-void
.end method

.method protected updateNetworkNameDisplay()V
    .locals 20

    .prologue
    .line 2026
    const-string v4, ""

    .line 2027
    .local v4, "spn":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2028
    .local v5, "showSpn":Z
    const-string v2, ""

    .line 2029
    .local v2, "plmn":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2035
    .local v17, "rule":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 2044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCombinedRegState()I

    move-result v18

    .line 2047
    .local v18, "serviceStatus":I
    if-nez v18, :cond_6

    .line 2048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    .line 2052
    .local v15, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v3, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-ne v1, v3, :cond_4

    .line 2054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mOperatorStringLists:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "plmn":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 2059
    .restart local v2    # "plmn":Ljava/lang/String;
    move-object/from16 v16, v15

    .line 2071
    .local v16, "plmnSource":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    .line 2072
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getICCRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->getCtMvnoOperatorName(Lcom/android/internal/telephony/uicc/IccRecords;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v13

    .line 2073
    .local v13, "customizedSpn":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 2074
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v13, v13, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 2076
    const-string v16, "CT_MVNO"

    .line 2082
    .end local v13    # "customizedSpn":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2083
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v3, "gsm.operator.alpha"

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2093
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcRadio:Lcom/android/internal/telephony/cdma/HtcRadio;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcRadio;->getCdmaEriBannerStyle()I

    move-result v19

    .line 2094
    .local v19, "showPlmnStyle":I
    const/4 v14, 0x0

    .line 2095
    .local v14, "flashPlmn":Z
    const/4 v1, 0x2

    move/from16 v0, v19

    if-ne v0, v1, :cond_3

    .line 2096
    const/4 v14, 0x1

    .line 2100
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v3, 0x1

    const/4 v6, 0x1

    const-string v7, "PLMN"

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .line 2108
    .end local v14    # "flashPlmn":Z
    .end local v19    # "showPlmnStyle":I
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2109
    const-string v1, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkNameDisplay - in service, mCurPlmn: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    .end local v15    # "numeric":Ljava/lang/String;
    .end local v16    # "plmnSource":Ljava/lang/String;
    :goto_2
    return-void

    .line 2062
    .restart local v15    # "numeric":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    .line 2067
    const-string v16, "RIL"

    .restart local v16    # "plmnSource":Ljava/lang/String;
    goto/16 :goto_0

    .line 2105
    :cond_5
    const-string v1, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No change plmn("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ") : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2112
    .end local v15    # "numeric":Ljava/lang/String;
    .end local v16    # "plmnSource":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "NOSRV"

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2114
    const-string v1, "CdmaSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkNameDisplay - not in service, mCurPlmn: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected updateOtaspState()V
    .locals 4

    .prologue
    .line 4303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getOtasp()I

    move-result v1

    .line 4304
    .local v1, "otaspMode":I
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 4305
    .local v0, "oldOtaspMode":I
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    .line 4308
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_0

    .line 4309
    const-string v2, "CDMA_SUBSCRIPTION: call notifyRegistrants()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4310
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCdmaForSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 4312
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    if-eq v0, v2, :cond_1

    .line 4314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CDMA_SUBSCRIPTION: call notifyOtaspChanged old otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new otaspMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4317
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurrentOtaspMode:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyOtaspChanged(I)V

    .line 4319
    :cond_1
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1973
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v1

    .line 1975
    .local v1, "plmn":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSpnDisplay "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1977
    const-string v8, ""

    .line 1978
    .local v8, "spn":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1979
    .local v9, "showSpn":Z
    const/4 v13, 0x0

    .line 1981
    .local v13, "rule":I
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    if-eqz v0, :cond_1

    .line 1982
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .line 1983
    .local v12, "numeric":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    if-eqz v0, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x3070155

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1986
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const/4 v3, 0x0

    const-string v6, "CT"

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 1988
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .line 2023
    .end local v12    # "numeric":Ljava/lang/String;
    :goto_0
    return-void

    .line 1991
    .restart local v12    # "numeric":Ljava/lang/String;
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mIsMccMncChange:Z

    .line 1999
    .end local v12    # "numeric":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2007
    :cond_2
    if-eqz v1, :cond_4

    move v14, v2

    .line 2009
    .local v14, "showPlmn":Z
    :goto_1
    const-string v0, "updateSpnDisplay: changed sending intent showPlmn=\'%b\' plmn=\'%s\'"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    .line 2014
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mHtcCdmaOperatorName:Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;

    const-string v11, "SPN"

    move-object v6, v1

    move v7, v2

    move v10, v2

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOperatorName;->updateFromServiceState(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    .line 2018
    .end local v14    # "showPlmn":Z
    :cond_3
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 2020
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mForceSpnUpdate:Z

    .line 2022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSpnDisplay, mCurPlmn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v14, v4

    .line 2007
    goto :goto_1
.end method
