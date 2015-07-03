.class public Lcom/android/internal/telephony/dataconnection/DctController;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;,
        Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;,
        Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;,
        Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x1

.field private static final EVENT_BASE:I = 0x64

.field private static final EVENT_DATA_ATTACHED:I = 0x1f4

.field private static final EVENT_DATA_DETACHED:I = 0x258

.field private static final EVENT_DCTRACKER_DISPOSED:I = 0x69

.field private static final EVENT_EXECUTE_ALL_REQUESTS:I = 0x66

.field private static final EVENT_EXECUTE_REQUEST:I = 0x65

.field private static final EVENT_PHONE1_DETACH:I = 0x1

.field private static final EVENT_PHONE1_RADIO_OFF:I = 0x5

.field private static final EVENT_PHONE2_DETACH:I = 0x2

.field private static final EVENT_PHONE2_RADIO_OFF:I = 0x6

.field private static final EVENT_PHONE3_DETACH:I = 0x3

.field private static final EVENT_PHONE3_RADIO_OFF:I = 0x7

.field private static final EVENT_PHONE4_DETACH:I = 0x4

.field private static final EVENT_PHONE4_RADIO_OFF:I = 0x8

.field private static final EVENT_PROCESS_REQUESTS:I = 0x64

.field private static final EVENT_RELEASE_ALL_REQUESTS:I = 0x68

.field private static final EVENT_RELEASE_REQUEST:I = 0x67

.field private static final EVENT_SET_DATA_ALLOW_DONE:I = 0x2

.field private static final INTENT_RETRY_DATA_SUBSCRIPTION_ALARM:Ljava/lang/String; = "com.htc.internal.telephony.data-retry-data-subscription"

.field private static final LOG_TAG:Ljava/lang/String; = "DctC"

.field private static final MAX_REQUEST_ID:I = 0xffff

.field private static final MIN_REQUEST_ID:I = -0x1

.field private static final PHONE_NONE:I = -0x1

.field private static final RETRY_DATA_SUB_DEFAULT_TIMES:I = 0x3

.field private static final RETRY_DATA_SUB_DELAY_DEFAULT_MILLIS:I = 0x2710

.field public static final mDualCardProject:Z

.field private static sDctController:Lcom/android/internal/telephony/dataconnection/DctController;


# instance fields
.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mAnySlotVoiceCallOn:Z

.field private mApnTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentDataPhone:I

.field private mDataPhoneId:I

.field private mDataSettingsObserver:Landroid/database/ContentObserver;

.field private mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

.field private mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

.field private mDcSwitchStateHandler:[Landroid/os/Handler;

.field private mDisposedPhoneId:I

.field private mNetworkFactory:[Landroid/net/NetworkFactory;

.field private mNetworkFactoryMessenger:[Landroid/os/Messenger;

.field private mNetworkFilter:[Landroid/net/NetworkCapabilities;

.field private mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

.field private mPendingSetDataSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNum:I

.field private mPhones:[Lcom/android/internal/telephony/PhoneProxy;

.field private mRequestInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestedDataPhone:I

.field private mResetDataSubAfterVoiceCallEnd:Z

.field private mRspHander:Landroid/os/Handler;

.field private mServicePowerOffFlag:[Z

.field private mSubController:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>([Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 17
    .param p1, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 360
    invoke-direct/range {p0 .. p0}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    .line 105
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mSubController:Lcom/android/internal/telephony/SubscriptionController;

    .line 115
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    .line 120
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    .line 121
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 151
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mAnySlotVoiceCallOn:Z

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    .line 157
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDisposedPhoneId:I

    .line 160
    const/16 v2, -0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    .line 168
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    .line 193
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$1;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataSettingsObserver:Landroid/database/ContentObserver;

    .line 201
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController$2;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mRspHander:Landroid/os/Handler;

    .line 238
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/dataconnection/DctController$3;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    .line 361
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 362
    :cond_0
    if-nez p1, :cond_2

    .line 363
    const-string v2, "DctController(phones): UNEXPECTED phones=null, ignore"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    const-string v2, "DctController(phones): UNEXPECTED phones.length=0, ignore"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_3
    move-object/from16 v0, p1

    array-length v2, v0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    .line 370
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    .line 371
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    .line 373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Landroid/os/Handler;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    .line 377
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Landroid/os/Messenger;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    .line 378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Landroid/net/NetworkFactory;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    new-array v2, v2, [Landroid/net/NetworkCapabilities;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 400
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v12, v2, :cond_5

    .line 401
    move v14, v12

    .line 402
    .local v14, "phoneId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v12

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, v12

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;-><init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)V

    aput-object v3, v2, v12

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->start()V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    new-instance v3, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v4, v4, v12

    invoke-direct {v3, v4, v14}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;-><init>(Lcom/android/internal/telephony/dataconnection/DcSwitchState;I)V

    aput-object v3, v2, v12

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    aput-object v3, v2, v12

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v2, v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateHandler:[Landroid/os/Handler;

    aget-object v4, v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v15

    .line 414
    .local v15, "status":I
    if-nez v15, :cond_4

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DctController(phones): Connect success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 424
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBase;

    .line 435
    .local v7, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42008

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 437
    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42007

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 441
    iget-object v10, v7, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 442
    .local v10, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    const/16 v2, 0x69

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v12}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDcTrackerDisposed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v12

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 447
    .local v9, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    aput-object v3, v2, v12

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v2, v2, v12

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "DctC"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v8, v3, v12

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v2, v16, v12

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v12

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v3, Landroid/os/Messenger;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v4, v4, v12

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v3, v2, v12

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v12

    const-string v3, "Telephony"

    invoke-virtual {v9, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 400
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 417
    .end local v7    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v9    # "cm":Landroid/net/ConnectivityManager;
    .end local v10    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DctController(phones): Could not connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 476
    .end local v14    # "phoneId":I
    .end local v15    # "status":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    .line 478
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v11, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 482
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string v2, "com.htc.internal.telephony.data-retry-data-subscription"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/dataconnection/DctController$DataStateReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Lcom/android/internal/telephony/dataconnection/DctController$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 490
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v13

    .line 493
    .local v13, "intent":Landroid/content/Intent;
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v2, :cond_1

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method private IsDuplicateRequest(Landroid/net/NetworkRequest;)Z
    .locals 9
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1318
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1319
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1320
    .local v1, "dpRequest":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1321
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1322
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v6, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    .line 1323
    .local v6, "tmp":Landroid/net/NetworkRequest;
    invoke-virtual {v6, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1327
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v4

    .line 1328
    .local v4, "phoneId":I
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 1329
    .local v3, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1330
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Landroid/net/NetworkRequest;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1331
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IsDuplicateRequest: Find duplicate request and apn type has enabled, NetworkRequest="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1332
    const/4 v1, 0x1

    goto :goto_0

    .line 1337
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v3    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v4    # "phoneId":I
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v6    # "tmp":Landroid/net/NetworkRequest;
    :cond_1
    return v1
.end method

.method private IsRequestPhoneIdInvalid(Landroid/net/NetworkRequest;)Z
    .locals 8
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, "invalidPhoneId":Z
    iget-object v3, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v3}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v2

    .line 1344
    .local v2, "specifier":Ljava/lang/String;
    const/4 v1, -0x1

    .line 1345
    .local v1, "phoneId":I
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1346
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    .line 1347
    .local v4, "subId":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultDataPhoneId: subId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1348
    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    .line 1353
    .end local v4    # "subId":J
    :goto_0
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1354
    const/4 v0, 0x1

    .line 1356
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRequestPhoneId: phoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", specifier="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", invalidPhoneId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1357
    return v0

    .line 1350
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSettingsChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onPhoneModeChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DctController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->onActionIntentRetryDataSubscriptionAlarm(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->IsRequestPhoneIdInvalid(Landroid/net/NetworkRequest;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidApnType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->isPreferSpecificType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;
    .param p2, "x2"    # Z

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->requestNetwork(Landroid/net/NetworkRequest;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # Landroid/net/NetworkRequest;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseNetwork(Landroid/net/NetworkRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/dataconnection/DctController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p1, "x1"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DctController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/dataconnection/DctController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDataConnectionFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DctController;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onSubInfoReady()V

    return-void
.end method

.method private getDataConnectionFromSetting()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 652
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 653
    .local v1, "subId":[J
    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 654
    .local v0, "phoneId":I
    return v0
.end method

.method private getIccCardState(I)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DctController.getInstance can\'t be called before makeDCTController()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private getRequestPhoneId(Landroid/net/NetworkRequest;)I
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 1207
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 1208
    .local v1, "specifier":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1209
    .local v0, "phoneId":I
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1210
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v0

    .line 1215
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestPhoneId: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", specifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1216
    return v0

    .line 1212
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    goto :goto_0
.end method

.method private getTopRequestPhoneId()I
    .locals 8

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v1

    .line 1183
    .local v1, "phoneId":I
    const v5, 0xffff

    .line 1184
    .local v5, "specificRequestId":I
    const/4 v2, -0x1

    .line 1186
    .local v2, "requestId":I
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1187
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1188
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1189
    .local v3, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v4

    .line 1190
    .local v4, "requestPhoneId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTopRequestPhoneId: requestInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1191
    iget-boolean v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->specificType:Z

    if-eqz v6, :cond_1

    .line 1192
    iget-object v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    if-ge v6, v5, :cond_0

    .line 1193
    iget-object v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v5, v6, Landroid/net/NetworkRequest;->requestId:I

    .line 1194
    move v1, v4

    goto :goto_0

    .line 1196
    :cond_1
    const v6, 0xffff

    if-ne v5, v6, :cond_0

    iget-object v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v6, v6, Landroid/net/NetworkRequest;->requestId:I

    if-le v6, v2, :cond_0

    .line 1197
    iget-object v6, v3, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v2, v6, Landroid/net/NetworkRequest;->requestId:I

    .line 1198
    move v1, v4

    goto :goto_0

    .line 1202
    .end local v3    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v4    # "requestPhoneId":I
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTopRequestPhoneId: phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1203
    return v1
.end method

.method private isPreferSpecificType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1241
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getPreferSpecificTypeList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isValidApnType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "supl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hipri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fota"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cbs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "verizon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "internet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "httpproxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "callernameid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "verizon800"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x1

    .line 647
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidphoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 624
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 665
    const-string v0, "DctC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 675
    const-string v0, "DctC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 660
    const-string v0, "DctC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 670
    const-string v0, "DctC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-void
.end method

.method public static makeDctController([Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/dataconnection/DctController;
    .locals 1
    .param p0, "phones"    # [Lcom/android/internal/telephony/PhoneProxy;

    .prologue
    .line 354
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;-><init>([Lcom/android/internal/telephony/PhoneProxy;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    .line 357
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DctController;->sDctController:Lcom/android/internal/telephony/dataconnection/DctController;

    return-object v0
.end method

.method private onActionIntentRetryDataSubscriptionAlarm(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;

    .line 1287
    .local v0, "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionIntentRetryDataSubscriptionAlarm: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sdsInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1289
    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->setSingalActiveForDataSubscription(Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;)V

    .line 1292
    :cond_0
    return-void
.end method

.method private onExecuteAllRequests(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 1005
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onExecuteAllRequests: phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1006
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1007
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1008
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1009
    .local v1, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v2, v1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1010
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    goto :goto_0

    .line 1013
    .end local v1    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    :cond_1
    return-void
.end method

.method private onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V
    .locals 5
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .prologue
    .line 992
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onExecuteRequest: requestInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 994
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    if-nez v3, :cond_0

    .line 995
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    .line 996
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 997
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 998
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 999
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->enableApnType(Landroid/net/NetworkRequest;)V

    .line 1002
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onPhoneModeChanged()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, -0x1

    .line 1128
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDisposedPhoneId:I

    if-ne v0, v12, :cond_0

    .line 1129
    const-string v0, "onPhoneModeChanged: mDisposedPhoneId is invalid, shouldn\'t happen!"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1179
    :goto_0
    return-void

    .line 1133
    :cond_0
    const-string v0, "onPhoneModeChanged"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1134
    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDisposedPhoneId:I

    .line 1137
    .local v9, "i":I
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 1147
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1149
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1154
    iget-object v8, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1155
    .local v8, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-eqz v8, :cond_1

    .line 1156
    const/16 v0, 0x69

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, p0, v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->registerForDcTrackerDisposed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 1162
    .local v7, "cm":Landroid/net/ConnectivityManager;
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v10, v0, v9

    .line 1164
    .local v10, "oldnfm":Landroid/os/Messenger;
    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 1166
    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DctC"

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v6, v1, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/Phone;Landroid/net/NetworkCapabilities;)V

    aput-object v0, v11, v9

    .line 1169
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v0, v0, v9

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/NetworkFactory;->setScoreFilter(I)V

    .line 1170
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v2, v2, v9

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    aput-object v1, v0, v9

    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v0, v0, v9

    const-string v1, "Telephony"

    invoke-virtual {v7, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/dataconnection/DctController;->removeRequestWithAssignedPhone(I)V

    .line 1177
    iput v12, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDisposedPhoneId:I

    .line 1178
    const/4 v10, 0x0

    .line 1179
    goto/16 :goto_0
.end method

.method private onProcessRequest()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, -0x1

    .line 937
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getTopRequestPhoneId()I

    move-result v3

    .line 957
    .local v3, "phoneId":I
    const/4 v0, -0x1

    .line 958
    .local v0, "activePhoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v6, 0x1

    .line 959
    .local v6, "requestPhoneActive":Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 961
    .local v4, "reqNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 962
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v8

    if-nez v8, :cond_4

    .line 963
    move v0, v1

    .line 968
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onProcessRequest: phoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", activePhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestPhoneActive="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reqNum="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 973
    if-eq v0, v10, :cond_1

    if-eqz v6, :cond_7

    .line 974
    :cond_1
    if-ne v0, v10, :cond_5

    if-nez v4, :cond_5

    .line 975
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v8, v8, v3

    new-instance v9, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10, v7}, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;Z)V

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)I

    .line 989
    :cond_2
    :goto_2
    return-void

    .end local v1    # "i":I
    .end local v4    # "reqNum":I
    .end local v6    # "requestPhoneActive":Z
    :cond_3
    move v6, v7

    .line 958
    goto :goto_0

    .line 961
    .restart local v1    # "i":I
    .restart local v4    # "reqNum":I
    .restart local v6    # "requestPhoneActive":Z
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 977
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 978
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 979
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 980
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v7, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v7

    if-ne v7, v3, :cond_6

    iget-boolean v7, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    if-nez v7, :cond_6

    .line 981
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)I

    goto :goto_3

    .line 986
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectAllSync()I

    goto :goto_2
.end method

.method private onReleaseAllRequests(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "currRequest":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReleaseAllRequests: phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1040
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1041
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1043
    .local v2, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1046
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;Z)V

    goto :goto_0

    .line 1050
    .end local v2    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    :cond_1
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V
    .locals 1
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .prologue
    .line 1018
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;Z)V

    .line 1019
    return-void
.end method

.method private onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;Z)V
    .locals 5
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .param p2, "disconnect"    # Z

    .prologue
    .line 1021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReleaseRequest: requestInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disconnect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1024
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    if-eqz v3, :cond_0

    .line 1025
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v2

    .line 1026
    .local v2, "phoneId":I
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1027
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1030
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v3, p2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disableApnType(Landroid/net/NetworkRequest;Z)V

    .line 1032
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    .line 1035
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v2    # "phoneId":I
    :cond_0
    return-void
.end method

.method private onSettingsChange()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 1070
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v4

    .line 1071
    .local v4, "newDataPhoneId":I
    const/4 v1, 0x0

    .line 1073
    .local v1, "didDisconnect":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSettingsChange: mDataPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newDataPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1075
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1078
    :cond_0
    const-string v8, "onSettingsChange: Invalid PhoneId"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1124
    :cond_1
    return-void

    .line 1082
    :cond_2
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    if-eq v4, v8, :cond_6

    .line 1083
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1084
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1085
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1086
    .local v6, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v8, v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v8, v8, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v7

    .line 1087
    .local v7, "specifier":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1088
    :cond_4
    iget-boolean v8, v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->specificType:Z

    if-nez v8, :cond_3

    .line 1089
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .line 1091
    .local v5, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1092
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    iget-object v8, v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v8, v11}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->disableApnType(Landroid/net/NetworkRequest;Z)V

    .line 1093
    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->executed:Z

    .line 1094
    const/4 v1, 0x1

    goto :goto_0

    .line 1099
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v5    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v7    # "specifier":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onSettingsChange: didDisconnect="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->isDualSimSingleDataCapable()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1106
    if-eqz v1, :cond_7

    .line 1107
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    aget-object v8, v8, v9

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, p0, v11, v9}, Lcom/android/internal/telephony/PhoneProxy;->registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1116
    :goto_1
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    .line 1120
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v2, v8, :cond_1

    .line 1121
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v8, v8, v2

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 1120
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1110
    .end local v2    # "i":I
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto :goto_1

    .line 1114
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DctController;->executeAllRequests(I)V

    goto :goto_1
.end method

.method private onSubInfoReady()V
    .locals 4

    .prologue
    .line 1055
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    const/16 v2, -0x3e8

    if-ne v1, v2, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->getDefaultDataPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    .line 1059
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubInfoReady: mDataPhoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1060
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v0, v1, :cond_1

    .line 1062
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFilter:[Landroid/net/NetworkCapabilities;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getSubId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;

    aget-object v1, v1, v0

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    :cond_1
    return-void
.end method

.method private releaseNetwork(Landroid/net/NetworkRequest;)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;

    .prologue
    .line 887
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 888
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseNetwork: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->releaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->isDualSimSingleDataCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 895
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 900
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private removeRequestWithAssignedPhone(I)V
    .locals 10
    .param p1, "phoneId"    # I

    .prologue
    .line 1296
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1297
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1298
    .local v3, "mRemoveReq":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkRequest;>;"
    const/4 v2, 0x0

    .line 1299
    .local v2, "key":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1300
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 1301
    .local v5, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    iget-object v8, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->getRequestPhoneId(Landroid/net/NetworkRequest;)I

    move-result v6

    .line 1302
    .local v6, "requestPhoneId":I
    iget-object v8, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget-object v8, v8, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v8}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v7

    .line 1303
    .local v7, "specifier":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeRequestWithAssignedPhone: requestInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1304
    if-eqz v7, :cond_0

    if-ne v6, p1, :cond_0

    .line 1305
    iget-object v8, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    iget v8, v8, Landroid/net/NetworkRequest;->requestId:I

    iget-object v9, v5, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v3, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1306
    const-string v8, "removeRequestWithAssignedPhone: Remove this request since phone disposed."

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    .end local v5    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    .end local v6    # "requestPhoneId":I
    .end local v7    # "specifier":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 1310
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1311
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkRequest;

    .line 1312
    .local v4, "request":Landroid/net/NetworkRequest;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v9, v4, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1314
    .end local v4    # "request":Landroid/net/NetworkRequest;
    :cond_2
    return-void
.end method

.method private requestNetwork(Landroid/net/NetworkRequest;Z)I
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkRequest;
    .param p2, "specificType"    # Z

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->IsDuplicateRequest(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .line 873
    .restart local v0    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestNetwork: request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", specificType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestInfos:Ljava/util/HashMap;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->isDualSimSingleDataCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    .line 883
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 871
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .end local v0    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/net/NetworkRequest;Z)V

    .restart local v0    # "requestInfo":Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;
    goto :goto_0

    .line 879
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->executeRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    goto :goto_1
.end method

.method private startAlarmForRetryDataSubscription(II)V
    .locals 10
    .param p1, "delay"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 1270
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.internal.telephony.data-retry-data-subscription"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "subscription"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAlarmForResetDataSubscription: delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1277
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    .line 1278
    .local v3, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1280
    .local v0, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 1281
    .local v2, "mAlarmManager":Landroid/app/AlarmManager;
    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, p1

    add-long/2addr v6, v8

    invoke-virtual {v2, v4, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1283
    return-void
.end method


# virtual methods
.method public declared-synchronized disableApnType(JLjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 595
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 597
    .local v0, "phoneId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 598
    :cond_0
    const-string v1, "disableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    const/4 v1, 0x3

    .line 603
    :goto_0
    monitor-exit p0

    return v1

    .line 601
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType():type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",powerOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->disconnectSync(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 595
    .end local v0    # "phoneId":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 846
    const-string v2, "DctController.dispose"

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v1, v2, :cond_0

    .line 848
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 850
    .local v0, "cm":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkFactory(Landroid/os/Messenger;)V

    .line 851
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactoryMessenger:[Landroid/os/Messenger;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 856
    sget-boolean v2, Lcom/android/internal/telephony/dataconnection/DctController;->mDualCardProject:Z

    if-eqz v2, :cond_1

    .line 857
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 859
    :cond_1
    return-void
.end method

.method public declared-synchronized enableApnType(JLjava/lang/String;)I
    .locals 9
    .param p1, "subId"    # J
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, -0x1

    .line 519
    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v3

    .line 521
    .local v3, "phoneId":I
    if-eq v3, v7, :cond_0

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 522
    :cond_0
    const-string v5, "enableApnType(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    :goto_0
    monitor-exit p0

    return v4

    .line 526
    :cond_1
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType():type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",powerOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mServicePowerOffFlag:[Z

    aget-boolean v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 529
    const-string v5, "default"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 530
    const/4 v2, 0x0

    .local v2, "peerphoneId":I
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I

    if-ge v2, v5, :cond_5

    .line 532
    if-ne v3, v2, :cond_3

    .line 530
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 536
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "activeApnTypes":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v5, v0

    if-eqz v5, :cond_2

    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 539
    const-string v5, "default"

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v5, v5, v2

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/PhoneProxy;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v5, v6, :cond_4

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType:Peer Phone still have non-default active APN type:activeApnTypes["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 519
    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    .end local v3    # "phoneId":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 538
    .restart local v0    # "activeApnTypes":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "peerphoneId":I
    .restart local v3    # "phoneId":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 551
    .end local v0    # "activeApnTypes":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "peerphoneId":I
    :cond_5
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): CurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", RequestedDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 554
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v4

    if-nez v4, :cond_6

    .line 556
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 557
    const-string v4, "enableApnType(): mRequestedDataPhone equals request PHONE ID."

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 558
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 562
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    if-ne v4, v7, :cond_7

    .line 563
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    .line 564
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE is NONE or IDLE, mCurrentDataPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 567
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->connectSync(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 569
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType(): current PHONE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 570
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    if-eq v3, v4, :cond_8

    .line 571
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 573
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mApnTypes:Ljava/util/HashSet;

    invoke-virtual {v4, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 574
    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mRequestedDataPhone:I

    .line 575
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchState:[Lcom/android/internal/telephony/dataconnection/DcSwitchState;

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mCurrentDataPhone:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchState;->cleanupAllConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public executeAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeAllRequests: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 915
    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 916
    return-void
.end method

.method public executeRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .prologue
    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "executeRequest: requestInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 910
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 911
    return-void
.end method

.method public getDataStateChangedCallback()Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDataStateChangedCallback:Lcom/android/internal/telephony/DefaultPhoneNotifier$IDataStateChangedCallback;

    return-object v0
.end method

.method public getDefaultDataPhoneId()I
    .locals 5

    .prologue
    .line 1220
    const/4 v0, -0x1

    .line 1221
    .local v0, "phoneId":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v2

    .line 1222
    .local v2, "subId":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDataPhoneId: subId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1223
    invoke-static {v2, v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    .line 1224
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultDataPhoneId: invalid phoneId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", change phoneId to slot1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 1226
    const/4 v0, 0x0

    .line 1228
    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 712
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 835
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Un-handled message ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->loge(Ljava/lang/String;)V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 736
    :sswitch_0
    const-string v8, "EVENT_PROCESS_REQUESTS"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto :goto_0

    .line 740
    :sswitch_1
    const-string v8, "EVENT_EXECUTE_REQUEST"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 741
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    goto :goto_0

    .line 744
    :sswitch_2
    const-string v8, "EVENT_EXECUTE_ALL_REQUESTS"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 745
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->onExecuteAllRequests(I)V

    goto :goto_0

    .line 748
    :sswitch_3
    const-string v8, "EVENT_RELEASE_REQUEST"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 749
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V

    goto :goto_0

    .line 752
    :sswitch_4
    const-string v8, "EVENT_RELEASE_ALL_REQUESTS"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 753
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->onReleaseAllRequests(I)V

    goto :goto_0

    .line 756
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 757
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 758
    .local v5, "phoneId":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_ALL_DATA_DISCONNECTED phoneId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 759
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    .line 760
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DctController;->onProcessRequest()V

    goto :goto_0

    .line 764
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "phoneId":Ljava/lang/Integer;
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 765
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 766
    .restart local v5    # "phoneId":Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_DCTRACKER_DISPOSED phoneId :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDisposedPhoneId:I

    goto/16 :goto_0

    .line 772
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "phoneId":Ljava/lang/Integer;
    :sswitch_7
    const-string v8, "EVENT_VOICE_CALL_STARTED"

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 773
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mAnySlotVoiceCallOn:Z

    goto/16 :goto_0

    .line 776
    :sswitch_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_VOICE_CALL_ENDED: mResetDataSubAfterVoiceCallEnd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 777
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mAnySlotVoiceCallOn:Z

    .line 778
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    if-eqz v8, :cond_0

    .line 779
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    .line 780
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 781
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;

    .line 782
    .local v7, "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Voice call end retry pend subscription for sdsInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 783
    if-eqz v7, :cond_1

    .line 784
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/dataconnection/DctController;->setSingalActiveForDataSubscription(Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;)V

    goto :goto_1

    .line 791
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 792
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;

    .line 793
    .restart local v7    # "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    const-string v6, "success."

    .line 794
    .local v6, "reason":Ljava/lang/String;
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    .line 795
    if-eqz v7, :cond_6

    .line 796
    iget-boolean v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mAnySlotVoiceCallOn:Z

    if-eqz v8, :cond_4

    .line 798
    const-string v6, "voice call is on, retry data subscription after voice call end."

    .line 799
    iput-boolean v9, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    .line 800
    iput v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    .line 801
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :cond_2
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SET_DATA_SUBSCRIPTION_DONE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sdsInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v7, :cond_3

    const-string v7, "null"

    .end local v7    # "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    :cond_3
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    .restart local v7    # "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    :cond_4
    const-string v8, "persist.radio.retry_times"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 805
    .local v4, "maxTimes":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set data subscripiton failed. maxTimes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", retryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 806
    iget v8, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    if-ge v8, v4, :cond_5

    .line 807
    const-string v8, "persist.radio.retry_delay"

    const/16 v9, 0x2710

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 808
    .local v1, "delay":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", retry after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-int/lit16 v9, v1, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 809
    iget v8, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    .line 810
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    iget v8, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-direct {p0, v1, v8}, Lcom/android/internal/telephony/dataconnection/DctController;->startAlarmForRetryDataSubscription(II)V

    goto/16 :goto_2

    .line 813
    .end local v1    # "delay":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", not retry"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 814
    iput v10, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    .line 815
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 819
    .end local v4    # "maxTimes":I
    :cond_6
    const-string v6, "set data subscripiton failed, not retry."

    goto/16 :goto_2

    .line 823
    :cond_7
    iput-boolean v10, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mResetDataSubAfterVoiceCallEnd:Z

    .line 824
    if-eqz v7, :cond_2

    .line 825
    iput v10, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->retryCount:I

    .line 826
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPendingSetDataSubs:Ljava/util/HashMap;

    iget v9, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v8, v7, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->completedmsg:Landroid/os/Message;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 712
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_6
        0x42007 -> :sswitch_7
        0x42008 -> :sswitch_8
        0x42082 -> :sswitch_9
    .end sparse-switch
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .prologue
    .line 607
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DctController;->isValidphoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    const-string v0, "isDataConnectivityPossible(): with PHONE_NONE or Invalid PHONE ID"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logw(Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x0

    .line 611
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDualSimSingleDataCapable()Z
    .locals 1

    .prologue
    .line 1234
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getDualSimSingleDataCapable()Z

    move-result v0

    return v0
.end method

.method public isIdleOrDeacting(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->isIdleOrDeactingSync()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processRequests()V
    .locals 1

    .prologue
    .line 904
    const-string v0, "processRequests"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 905
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 906
    return-void
.end method

.method public registerForDataSwitchInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 699
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 700
    .local v0, "r":Landroid/os/Registrant;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    monitor-enter v2

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mNotifyDataSwitchInfo:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 702
    monitor-exit v2

    .line 703
    return-void

    .line 702
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseAllRequests(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAllRequests: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 925
    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 926
    return-void
.end method

.method public releaseRequest(Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$RequestInfo;

    .prologue
    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseRequest: requestInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 920
    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->sendMessage(Landroid/os/Message;)Z

    .line 921
    return-void
.end method

.method public setDataSubId(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 681
    const-string v0, "Should not call this dummy function, returned"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V

    .line 695
    return-void
.end method

.method public setSingalActiveForDataSubscription(IZLandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1251
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;IIZLandroid/os/Message;)V

    .line 1252
    .local v0, "sdsInfo":Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DctController;->setSingalActiveForDataSubscription(Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;)V

    .line 1254
    return-void
.end method

.method public setSingalActiveForDataSubscription(Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;)V
    .locals 4
    .param p1, "sdsInfo"    # Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;

    .prologue
    .line 1258
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1259
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->phoneId:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .line 1260
    .local v1, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v1, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 1261
    .local v0, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-eqz v0, :cond_0

    .line 1262
    iget-boolean v2, p1, Lcom/android/internal/telephony/dataconnection/DctController$SetDataSubInfo;->enable:Z

    const v3, 0x42082

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->onSetSingalActiveForDataSubscription(ZLandroid/os/Message;)V

    .line 1267
    .end local v0    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v1    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_0
    return-void
.end method
