.class public final Lcom/android/internal/telephony/dataconnection/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnection$1;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field static final BASE:I = 0x40000

.field private static final CMD_TO_STRING_COUNT:I = 0xe

.field private static final DBG:Z = true

.field private static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_DATA_RETRY_CONFIG_GSM:Ljava/lang/String; = "max_retries=infinite,5000,10000,20000,40000,80000,160000,320000"

.field private static final DNS_CHECK_TYPE_DATA_CALL_RESPONSE:Ljava/lang/String; = "DataCallResponse"

.field private static final DNS_CHECK_TYPE_SYSTEM_PROPERTY:Ljava/lang/String; = "SystemProperty"

.field static final EVENT_CONNECT:I = 0x40000

.field static final EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED:I = 0x4000b

.field static final EVENT_DATA_CONNECTION_ROAM_OFF:I = 0x4000d

.field static final EVENT_DATA_CONNECTION_ROAM_ON:I = 0x4000c

.field static final EVENT_DATA_STATE_CHANGED:I = 0x40007

.field static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field static final EVENT_DISCONNECT:I = 0x40004

.field static final EVENT_DISCONNECT_ALL:I = 0x40006

.field static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field static final EVENT_LOST_CONNECTION:I = 0x40009

.field static final EVENT_RETRY_CONNECTION:I = 0x4000a

.field static final EVENT_RIL_CONNECTED:I = 0x40005

.field static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field static final EVENT_TEAR_DOWN_NOW:I = 0x40008

.field private static final MTU_PROPERTY:Ljava/lang/String; = "ro.ril.set.mtusize"

.field private static final NETWORK_TYPE:Ljava/lang/String; = "MOBILE"

.field private static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field private static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field private static final S_DEBUG:Z = false

.field private static final TCP_BUFFER_SIZES_1XRTT:Ljava/lang/String; = "16384,32768,131072,4096,16384,102400"

.field private static final TCP_BUFFER_SIZES_EDGE:Ljava/lang/String; = "4093,26280,70800,4096,16384,70800"

.field private static final TCP_BUFFER_SIZES_EHRPD:Ljava/lang/String; = "131072,262144,1048576,4096,16384,524288"

.field private static final TCP_BUFFER_SIZES_EVDO:Ljava/lang/String; = "4094,87380,262144,4096,16384,262144"

.field private static final TCP_BUFFER_SIZES_GPRS:Ljava/lang/String; = "4092,8760,48000,4096,8760,48000"

.field private static final TCP_BUFFER_SIZES_HSDPA:Ljava/lang/String; = "61167,367002,1101005,8738,52429,262114"

.field private static final TCP_BUFFER_SIZES_HSPA:Ljava/lang/String; = "40778,244668,734003,16777,100663,301990"

.field private static final TCP_BUFFER_SIZES_HSPAP:Ljava/lang/String; = "122334,734003,2202010,32040,192239,576717"

.field private static final TCP_BUFFER_SIZES_LTE:Ljava/lang/String; = "524288,1048576,2097152,262144,524288,1048576"

.field private static final TCP_BUFFER_SIZES_UMTS:Ljava/lang/String; = "58254,349525,1048576,58254,349525,1048576"

.field private static final VDBG:Z = true

.field public static final mDualCardProject:Z

.field private static mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mInstanceNumber_slot1:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mInstanceNumber_slot2:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCmdToString:[Ljava/lang/String;


# instance fields
.field private mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

.field mApnContexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

.field protected mCdmaCarrierId:Ljava/lang/String;

.field mCid:I

.field private mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

.field private mCreateTime:J

.field private mDataRegState:I

.field private mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

.field private mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

.field private mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

.field private mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

.field private mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

.field private mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

.field private mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private mLastFailTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field protected mPcscfAddr:[Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field mRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

.field private mRilRat:I

.field mTag:I

.field private mUserData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot1:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot2:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 178
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDualCardProject:Z

    .line 289
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    .line 291
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v3, "EVENT_CONNECT"

    aput-object v3, v0, v1

    .line 292
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const-string v1, "EVENT_SETUP_DATA_CONNECTION_DONE"

    aput-object v1, v0, v2

    .line 294
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "EVENT_GET_LAST_FAIL_DONE"

    aput-object v2, v0, v1

    .line 295
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "EVENT_DEACTIVATE_DONE"

    aput-object v2, v0, v1

    .line 296
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "EVENT_DISCONNECT"

    aput-object v2, v0, v1

    .line 297
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "EVENT_RIL_CONNECTED"

    aput-object v2, v0, v1

    .line 298
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "EVENT_DISCONNECT_ALL"

    aput-object v2, v0, v1

    .line 299
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "EVENT_DATA_STATE_CHANGED"

    aput-object v2, v0, v1

    .line 300
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "EVENT_TEAR_DOWN_NOW"

    aput-object v2, v0, v1

    .line 301
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "EVENT_LOST_CONNECTION"

    aput-object v2, v0, v1

    .line 302
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "EVENT_RETRY_CONNECTION"

    aput-object v2, v0, v1

    .line 303
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "EVENT_DATA_CONNECTION_DRS_OR_RAT_CHANGED"

    aput-object v2, v0, v1

    .line 305
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_ON"

    aput-object v2, v0, v1

    .line 306
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "EVENT_DATA_CONNECTION_ROAM_OFF"

    aput-object v2, v0, v1

    .line 307
    return-void

    :cond_1
    move v0, v1

    .line 178
    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p5, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p6, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    const v4, 0x7fffffff

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p6}, Lcom/android/internal/telephony/dataconnection/DcController;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 148
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 252
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 258
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    .line 259
    iput v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    .line 266
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    .line 267
    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 268
    new-instance v2, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v2}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    .line 1783
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    .line 1903
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    .line 2090
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    .line 2299
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    .line 2467
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    .line 2513
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    .line 2558
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 544
    const/16 v2, 0x12c

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogRecSize(I)V

    .line 545
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLogOnlyTransitions(Z)V

    .line 546
    const-string v2, "DataConnection constructor E"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 548
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 549
    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 550
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .line 551
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    .line 552
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    .line 553
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 554
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v2, v3, p0}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/dataconnection/DataConnection;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .line 555
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 556
    .local v1, "ss":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    .line 557
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    .line 558
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 559
    .local v0, "networkType":I
    new-instance v2, Landroid/net/NetworkInfo;

    const/4 v3, 0x0

    const-string v4, "MOBILE"

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v6}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 571
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 574
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 575
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 576
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDefaultState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 577
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 579
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    .line 604
    const-string v2, "DataConnection constructor X"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private ByteArrayToHex([B)Ljava/lang/String;
    .locals 9
    .param p1, "in"    # [B

    .prologue
    .line 2832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2833
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 2834
    .local v1, "b":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2833
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2835
    .end local v1    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static ReInitialDataConnectionCounter(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x0

    .line 2912
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 2913
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInstanceNumbe is been initial to 0, phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->slog(Ljava/lang/String;)V

    .line 2915
    if-nez v0, :cond_0

    .line 2916
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2923
    :goto_0
    return-void

    .line 2917
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2918
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 2920
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;)Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "x2"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "x3"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DcController;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcController:Lcom/android/internal/telephony/dataconnection/DcController;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/dataconnection/DataConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/dataconnection/DataConnection;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/dataconnection/DataConnection;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/net/NetworkAgent;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->htcrequestmakeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;)Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "x2"    # Z

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->clearSettings()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActivatingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/dataconnection/DataConnection;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->needResetDCByRatType(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->logAndAddLogRec(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfDisconnectDcConnecting(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/ApnSetting;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcRetryingState;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllOfConnected(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/internal/telephony/dataconnection/DataConnection;)Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/telephony/dataconnection/DcFailCause;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/internal/telephony/dataconnection/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    return-object p1
.end method

.method private checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V
    .locals 4
    .param p1, "apn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 507
    if-nez p2, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 511
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by call response to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_2
    if-eqz p1, :cond_3

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    if-eqz v2, :cond_3

    .line 517
    iget v2, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {p2, v2}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by APN to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_3
    const-string v2, "ro.ril.set.mtusize"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 524
    .local v0, "htcMtu":I
    if-eqz v0, :cond_4

    .line 525
    invoke-virtual {p2, v0}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by htc customized property value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 533
    .local v1, "mtu":I
    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MTU set by config resource to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private clearSettings()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 976
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 978
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 979
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    .line 980
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 983
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 985
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 987
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 988
    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 989
    return-void
.end method

.method static cmdToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "cmd"    # I

    .prologue
    const/high16 v3, 0x40000

    .line 311
    sub-int/2addr p0, v3

    .line 312
    if-ltz p0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 313
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->sCmdToString:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 317
    .local v0, "value":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p0, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    return-object v0

    .line 315
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    add-int v1, p0, v3

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private configureRetry(Z)V
    .locals 9
    .param p1, "forDefault"    # Z

    .prologue
    const/16 v8, 0x7d0

    const/16 v7, 0x3e8

    const/4 v6, 0x5

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getRetryConfig(Z)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "retryConfig":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getCustomerRetryTimer()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "mCustomerRetryTimer":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 646
    if-eqz p1, :cond_3

    .line 648
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRetry: Apply ACC Customer value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 650
    move-object v2, v0

    .line 661
    .local v2, "retryConfigDefault":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 665
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v6, v8, v7}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    .line 688
    .end local v2    # "retryConfigDefault":Ljava/lang/String;
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRetry: forDefault="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRetryManager="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 690
    return-void

    .line 653
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_2

    .line 654
    const-string v2, "max_retries=infinite,5000,10000,20000,40000,80000,160000,320000"

    .restart local v2    # "retryConfigDefault":Ljava/lang/String;
    goto :goto_0

    .line 656
    .end local v2    # "retryConfigDefault":Ljava/lang/String;
    :cond_2
    const-string v2, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    .restart local v2    # "retryConfigDefault":Ljava/lang/String;
    goto :goto_0

    .line 668
    .end local v2    # "retryConfigDefault":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 669
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRetry: Apply ACC Customer value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 670
    move-object v3, v0

    .line 678
    .local v3, "retryConfigSecondary":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 683
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4, v6, v8, v7}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    goto :goto_1

    .line 672
    .end local v3    # "retryConfigSecondary":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v4, :cond_5

    .line 673
    const-string v3, "max_retries=infinite,5000,10000,20000,40000,80000,160000,320000"

    .restart local v3    # "retryConfigSecondary":Ljava/lang/String;
    goto :goto_2

    .line 675
    .end local v3    # "retryConfigSecondary":Ljava/lang/String;
    :cond_5
    const-string v3, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    .restart local v3    # "retryConfigSecondary":Ljava/lang/String;
    goto :goto_2
.end method

.method private getRadioTechToRatType(I)I
    .locals 2
    .param p1, "radioTech"    # I

    .prologue
    .line 2895
    const/4 v0, 0x0

    .line 2896
    .local v0, "RatType":I
    invoke-static {p1}, Landroid/telephony/ServiceState;->is4G(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2897
    const/4 v0, 0x4

    .line 2905
    :goto_0
    return v0

    .line 2898
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->is3GPP(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2899
    const/4 v0, 0x1

    goto :goto_0

    .line 2900
    :cond_1
    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2901
    const/16 v0, 0x8

    goto :goto_0

    .line 2903
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRetryConfig(Z)Ljava/lang/String;
    .locals 3
    .param p1, "forDefault"    # Z

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNetworkType()I

    move-result v1

    .line 610
    .local v1, "nt":I
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 611
    const-string v2, "test.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    .end local v0    # "config":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 617
    :cond_0
    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_2

    .line 624
    :cond_1
    const-string v2, "ro.cdma.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 627
    :cond_2
    if-eqz p1, :cond_3

    .line 628
    const-string v2, "ro.gsm.data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 630
    :cond_3
    const-string v2, "ro.gsm.2nd_data_retry_config"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get_mInstanceNumberofDC(Lcom/android/internal/telephony/PhoneBase;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3011
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    .line 3012
    .local v0, "phoneId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get_mInstanceNumberofDC: phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->slog(Ljava/lang/String;)V

    .line 3014
    if-nez v0, :cond_0

    .line 3015
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot1:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3020
    :goto_0
    return-object v1

    .line 3016
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3017
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot2:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 3020
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0
.end method

.method private htcAddNetworkCapabilitiesByType(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 10
    .param p1, "result"    # Landroid/net/NetworkCapabilities;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1263
    const/4 v1, 0x0

    .local v1, "num":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1264
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    .line 1265
    .local v0, "apntype":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 1263
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1265
    :sswitch_0
    const-string v9, "default"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v4

    goto :goto_1

    :sswitch_1
    const-string v9, "mms"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v5

    goto :goto_1

    :sswitch_2
    const-string v9, "supl"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_3
    const-string v9, "dun"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_4
    const-string v9, "fota"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v3, v8

    goto :goto_1

    :sswitch_5
    const-string v9, "ims"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "cbs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "ia"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "verizon"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_9
    const-string v9, "internet"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string v9, "httpproxy"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_b
    const-string v9, "callernameid"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "verizon800"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_1

    .line 1267
    :pswitch_0
    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1271
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1275
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1279
    :pswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    .line 1280
    .local v2, "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1281
    :cond_2
    invoke-virtual {p1, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1286
    .end local v2    # "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :pswitch_4
    invoke-virtual {p1, v7}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1290
    :pswitch_5
    invoke-virtual {p1, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1294
    :pswitch_6
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1298
    :pswitch_7
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1303
    :pswitch_8
    const/16 v3, 0x1a

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1307
    :pswitch_9
    const/16 v3, 0x1b

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1311
    :pswitch_a
    const/16 v3, 0x1c

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1315
    :pswitch_b
    const/16 v3, 0x1d

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1319
    :pswitch_c
    const/16 v3, 0x1e

    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1327
    .end local v0    # "apntype":Ljava/lang/String;
    :cond_3
    return-object p1

    .line 1265
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1bf3819b -> :sswitch_c
        0xd18 -> :sswitch_7
        0x17ff4 -> :sswitch_6
        0x185fd -> :sswitch_3
        0x197cf -> :sswitch_5
        0x1a6d3 -> :sswitch_1
        0x300cf6 -> :sswitch_4
        0x360bde -> :sswitch_2
        0xba6d6e6 -> :sswitch_a
        0x14f0d0f3 -> :sswitch_8
        0x21ffc741 -> :sswitch_9
        0x4bd16431 -> :sswitch_b
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private htcrequestmakeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 6

    .prologue
    .line 1332
    new-instance v1, Landroid/net/NetworkCapabilities;

    invoke-direct {v1}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1333
    .local v1, "request":Landroid/net/NetworkCapabilities;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1335
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 1337
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->htcAddNetworkCapabilitiesByType(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 1338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcrequestmakeNetworkCapabilities: Capability is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1339
    invoke-static {v1}, Landroid/net/ConnectivityManager;->maybeMarkCapabilitiesRestricted(Landroid/net/NetworkCapabilities;)V

    .line 1340
    const/16 v2, 0xe

    .line 1341
    .local v2, "up":I
    const/16 v0, 0xe

    .line 1342
    .local v0, "down":I
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    packed-switch v3, :pswitch_data_0

    .line 1360
    :goto_0
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 1361
    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1362
    return-object v1

    .line 1343
    :pswitch_0
    const/16 v2, 0x50

    const/16 v0, 0x50

    goto :goto_0

    .line 1344
    :pswitch_1
    const/16 v2, 0x3b

    const/16 v0, 0xec

    goto :goto_0

    .line 1345
    :pswitch_2
    const/16 v2, 0x180

    const/16 v0, 0x180

    goto :goto_0

    .line 1347
    :pswitch_3
    const/16 v2, 0xe

    const/16 v0, 0xe

    goto :goto_0

    .line 1348
    :pswitch_4
    const/16 v2, 0x99

    const/16 v0, 0x999

    goto :goto_0

    .line 1349
    :pswitch_5
    const/16 v2, 0x733

    const/16 v0, 0xc66

    goto :goto_0

    .line 1350
    :pswitch_6
    const/16 v2, 0x64

    const/16 v0, 0x64

    goto :goto_0

    .line 1351
    :pswitch_7
    const/16 v2, 0x800

    const/16 v0, 0x3800

    goto :goto_0

    .line 1352
    :pswitch_8
    const/16 v2, 0x170a

    const/16 v0, 0x3800

    goto :goto_0

    .line 1353
    :pswitch_9
    const/16 v2, 0x170a

    const/16 v0, 0x3800

    goto :goto_0

    .line 1354
    :pswitch_a
    const/16 v2, 0x733

    const/16 v0, 0x1399

    goto :goto_0

    .line 1355
    :pswitch_b
    const v2, 0xc800

    const v0, 0x19000

    goto :goto_0

    .line 1356
    :pswitch_c
    const/16 v2, 0x99

    const/16 v0, 0x9d4

    goto :goto_0

    .line 1357
    :pswitch_d
    const/16 v2, 0x2c00

    const v0, 0xa800

    goto :goto_0

    .line 1342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method private initConnection(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)Z
    .locals 4
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    const/4 v1, 0x0

    .line 1519
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1520
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-nez v2, :cond_0

    .line 1523
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .line 1531
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1533
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initConnection: incompatible apnSetting in ConnectionParams cp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1561
    :goto_0
    return v1

    .line 1539
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    .line 1540
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1541
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    iput v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    .line 1543
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1544
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->configureRetry(Z)V

    .line 1547
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RetryManager;->setRetryCount(I)V

    .line 1553
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/RetryManager;->setRetryForever(Z)V

    .line 1556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initConnection:  RefCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mApnList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnectionParams="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1561
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDnsOk([Ljava/lang/String;)Z
    .locals 5
    .param p1, "domainNameServers"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1040
    const-string v2, "0.0.0.0"

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "0.0.0.0"

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1049
    :cond_0
    const-string v2, "isDnsOk: return false apn.types[0]=%s APN_TYPE_MMS=%s isIpAddress(%s)=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    const-string v4, "mms"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1056
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isDnsOkExt([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "domainNameServers"    # [Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1061
    const/4 v8, 0x0

    .line 1062
    .local v8, "result":Z
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->isDnsCheckDisabled()Z

    move-result v5

    .line 1063
    .local v5, "isSettingDisabled":Z
    const-string v9, ""

    .line 1064
    .local v9, "sDns":Ljava/lang/String;
    const-string v7, "Invalid dns"

    .line 1066
    .local v7, "reason":Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 1068
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_5

    aget-object v2, v1, v4

    .line 1070
    .local v2, "dns":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "0.0.0.0"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1072
    :cond_0
    if-nez v2, :cond_1

    .line 1073
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1079
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(invalid) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1068
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1074
    :cond_1
    const-string v10, "[0-9[.]]+"

    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "[0-9a-fA-F[:]]+"

    invoke-virtual {v2, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1075
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1077
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(hex)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "US_ASCII"

    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->ByteArrayToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1082
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(valid) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1083
    const/4 v8, 0x1

    goto :goto_2

    .line 1085
    :catch_0
    move-exception v3

    .line 1086
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDnsOkExt: check dns failed, e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1091
    .end local v2    # "dns":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    if-eqz v8, :cond_6

    const-string v7, "Valid dns"

    .line 1096
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_6
    if-nez v8, :cond_7

    if-eqz p1, :cond_7

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "0.0.0.0"

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v5, :cond_7

    .line 1098
    const-string v7, "Setting disabled"

    .line 1099
    const/4 v8, 0x1

    .line 1104
    :cond_7
    if-nez v8, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIgnoreDnsMcc()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1105
    const-string v7, "Special Mcc"

    .line 1106
    const/4 v8, 0x1

    .line 1110
    :cond_8
    if-nez v8, :cond_9

    .line 1111
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 1114
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getCustomerId()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {v10, v11, v12}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "VODAP"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    const-string v11, "pruebaedge"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1118
    const-string v7, "Voda sku and match specific apn"

    .line 1119
    const/4 v8, 0x1

    .line 1127
    :cond_9
    :goto_3
    if-nez v8, :cond_b

    .line 1128
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    if-eqz v10, :cond_f

    .line 1129
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 1130
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1131
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MMS types, isIpAddress["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1132
    const/4 v8, 0x1

    .line 1146
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isDnsOkExt: dns=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p1, :cond_c

    const-string v9, " null"

    .end local v9    # "sDns":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", len="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1149
    return v8

    .line 1122
    .restart local v9    # "sDns":Ljava/lang/String;
    :cond_d
    const-string v7, "mApnSetting or apn is null"

    goto/16 :goto_3

    .line 1135
    .restart local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "httpproxy"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v10, v10, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1136
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTPPROXY types, isIpAddress["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v11, v11, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1137
    const/4 v8, 0x1

    .line 1138
    goto/16 :goto_4

    .line 1142
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_f
    const-string v7, "mApnSetting or mApnContexts is null"

    goto/16 :goto_4
.end method

.method private isFixedDnsNeeded()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2930
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getSupportFixedCdmaDNS()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2947
    :cond_0
    :goto_0
    return v2

    .line 2935
    :cond_1
    const/4 v0, 0x1

    .line 2936
    .local v0, "isSidRoaming":Z
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getCdmaSid()Ljava/lang/Integer;

    move-result-object v1

    .line 2938
    .local v1, "mCdmaSid":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 2939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replace DNSs based on sid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x87f

    if-lt v3, v4, :cond_4

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x900

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x1dff

    if-lt v3, v4, :cond_4

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x543f

    if-le v3, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x547e

    if-ge v3, v4, :cond_5

    .line 2944
    :cond_4
    const/4 v0, 0x0

    .line 2947
    :cond_5
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isIgnoreDnsMcc()Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 2841
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->htcGetOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2842
    .local v2, "mccFromIMSI":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v5

    .line 2843
    .local v5, "subId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    aget-wide v8, v5, v7

    invoke-virtual {v6, v8, v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v3

    .line 2845
    .local v3, "mccFromOperator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2848
    .local v1, "mIgnoreDnsCheck":Z
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2849
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2858
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->getIgnoreDNSCheckMCCList()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 2866
    .local v4, "mccList":[Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2869
    const/4 v1, 0x1

    .line 2872
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIgnoreDnsMcc: IMSI="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Operator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Ignore="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Proxy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2876
    return v1

    .line 2850
    .end local v4    # "mccList":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2851
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIgnoreDNSMCC: Can\'t split mcc from IMSI or Operator, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2860
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2861
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIgnoreDNSMCC: Can\'t split mIgnoreDNSCheckMCCList, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2863
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .restart local v4    # "mccList":[Ljava/lang/String;
    goto/16 :goto_1

    .line 2872
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, "no APN"

    goto :goto_2
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1481
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1483
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 2823
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

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

.method static makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)Lcom/android/internal/telephony/dataconnection/DataConnection;
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "id"    # I
    .param p2, "dct"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .param p3, "failBringUpAll"    # Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;
    .param p4, "dcc"    # Lcom/android/internal/telephony/dataconnection/DcController;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v7

    .line 337
    .local v7, "phoneId":I
    add-int/lit8 v1, v7, 0x0

    add-int/lit8 v8, v1, 0x1

    .line 339
    .local v8, "slotId":I
    if-nez v7, :cond_0

    .line 340
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot1:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .line 353
    .local v0, "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->start()V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Made "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 355
    return-object v0

    .line 343
    .end local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_0
    const/4 v1, 0x1

    if-ne v7, v1, :cond_1

    .line 344
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber_slot2:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .restart local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_0

    .line 348
    .end local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;Lcom/android/internal/telephony/dataconnection/DcController;)V

    .restart local v0    # "dc":Lcom/android/internal/telephony/dataconnection/DataConnection;
    goto :goto_0
.end method

.method private makeNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 15

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1367
    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 1368
    .local v4, "result":Landroid/net/NetworkCapabilities;
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1370
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v8, :cond_4

    .line 1371
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v8, Lcom/android/internal/telephony/dataconnection/ApnSetting;->types:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 1372
    .local v6, "type":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v8, :pswitch_data_0

    .line 1371
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1372
    :sswitch_0
    const-string v14, "*"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v9

    goto :goto_1

    :sswitch_1
    const-string v14, "default"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v10

    goto :goto_1

    :sswitch_2
    const-string v14, "mms"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v11

    goto :goto_1

    :sswitch_3
    const-string v14, "supl"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v12

    goto :goto_1

    :sswitch_4
    const-string v14, "dun"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    move v8, v13

    goto :goto_1

    :sswitch_5
    const-string v14, "fota"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_6
    const-string v14, "ims"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x6

    goto :goto_1

    :sswitch_7
    const-string v14, "cbs"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x7

    goto :goto_1

    :sswitch_8
    const-string v14, "ia"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0x8

    goto :goto_1

    :sswitch_9
    const-string v14, "verizon"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0x9

    goto :goto_1

    :sswitch_a
    const-string v14, "internet"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0xa

    goto :goto_1

    :sswitch_b
    const-string v14, "httpproxy"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v14, "callernameid"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v14, "verizon800"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/16 v8, 0xd

    goto/16 :goto_1

    .line 1374
    :pswitch_0
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1375
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1376
    invoke-virtual {v4, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1377
    invoke-virtual {v4, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1378
    invoke-virtual {v4, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1379
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1380
    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1382
    const/16 v8, 0x1a

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1383
    const/16 v8, 0x1b

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1384
    const/16 v8, 0x1c

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1385
    const/16 v8, 0x1d

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1386
    const/16 v8, 0x1e

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 1389
    invoke-virtual {v4, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1394
    :pswitch_1
    const/16 v8, 0xc

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1398
    :pswitch_2
    invoke-virtual {v4, v9}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1402
    :pswitch_3
    invoke-virtual {v4, v10}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1406
    :pswitch_4
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->fetchDunApn()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v5

    .line 1407
    .local v5, "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1408
    :cond_2
    invoke-virtual {v4, v11}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1413
    .end local v5    # "securedDunApn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    :pswitch_5
    invoke-virtual {v4, v12}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1417
    :pswitch_6
    invoke-virtual {v4, v13}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1421
    :pswitch_7
    const/4 v8, 0x5

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1425
    :pswitch_8
    const/4 v8, 0x7

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1430
    :pswitch_9
    const/16 v8, 0x1a

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1434
    :pswitch_a
    const/16 v8, 0x1b

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1438
    :pswitch_b
    const/16 v8, 0x1c

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1442
    :pswitch_c
    const/16 v8, 0x1d

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1446
    :pswitch_d
    const/16 v8, 0x1e

    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto/16 :goto_2

    .line 1453
    .end local v6    # "type":Ljava/lang/String;
    :cond_3
    invoke-static {v4}, Landroid/net/ConnectivityManager;->maybeMarkCapabilitiesRestricted(Landroid/net/NetworkCapabilities;)V

    .line 1455
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    const/16 v7, 0xe

    .line 1456
    .local v7, "up":I
    const/16 v1, 0xe

    .line 1457
    .local v1, "down":I
    iget v8, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    packed-switch v8, :pswitch_data_1

    .line 1475
    :goto_3
    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 1476
    invoke-virtual {v4, v1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 1477
    return-object v4

    .line 1458
    :pswitch_e
    const/16 v7, 0x50

    const/16 v1, 0x50

    goto :goto_3

    .line 1459
    :pswitch_f
    const/16 v7, 0x3b

    const/16 v1, 0xec

    goto :goto_3

    .line 1460
    :pswitch_10
    const/16 v7, 0x180

    const/16 v1, 0x180

    goto :goto_3

    .line 1462
    :pswitch_11
    const/16 v7, 0xe

    const/16 v1, 0xe

    goto :goto_3

    .line 1463
    :pswitch_12
    const/16 v7, 0x99

    const/16 v1, 0x999

    goto :goto_3

    .line 1464
    :pswitch_13
    const/16 v7, 0x733

    const/16 v1, 0xc66

    goto :goto_3

    .line 1465
    :pswitch_14
    const/16 v7, 0x64

    const/16 v1, 0x64

    goto :goto_3

    .line 1466
    :pswitch_15
    const/16 v7, 0x800

    const/16 v1, 0x3800

    goto :goto_3

    .line 1467
    :pswitch_16
    const/16 v7, 0x170a

    const/16 v1, 0x3800

    goto :goto_3

    .line 1468
    :pswitch_17
    const/16 v7, 0x170a

    const/16 v1, 0x3800

    goto :goto_3

    .line 1469
    :pswitch_18
    const/16 v7, 0x733

    const/16 v1, 0x1399

    goto :goto_3

    .line 1470
    :pswitch_19
    const v7, 0xc800

    const v1, 0x19000

    goto :goto_3

    .line 1471
    :pswitch_1a
    const/16 v7, 0x99

    const/16 v1, 0x9d4

    goto :goto_3

    .line 1472
    :pswitch_1b
    const/16 v7, 0x2c00

    const v1, 0xa800

    goto :goto_3

    .line 1372
    :sswitch_data_0
    .sparse-switch
        -0x1bf3819b -> :sswitch_d
        0x2a -> :sswitch_0
        0xd18 -> :sswitch_8
        0x17ff4 -> :sswitch_7
        0x185fd -> :sswitch_4
        0x197cf -> :sswitch_6
        0x1a6d3 -> :sswitch_2
        0x300cf6 -> :sswitch_5
        0x360bde -> :sswitch_3
        0xba6d6e6 -> :sswitch_b
        0x14f0d0f3 -> :sswitch_9
        0x21ffc741 -> :sswitch_a
        0x4bd16431 -> :sswitch_c
        0x5c13d641 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1457
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch
.end method

.method private static msgToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 2620
    if-nez p0, :cond_0

    .line 2621
    const-string v1, "null"

    .line 2656
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2623
    .end local v1    # "retVal":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2625
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v2, "{what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    const-string v2, " when="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    invoke-virtual {p0}, Landroid/os/Message;->getWhen()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2631
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    .line 2632
    const-string v2, " arg1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2633
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2636
    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 2637
    const-string v2, " arg2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2638
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2641
    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 2642
    const-string v2, " obj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2646
    :cond_3
    const-string v2, " target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2649
    const-string v2, " replyTo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2650
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2652
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2654
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "retVal":Ljava/lang/String;
    goto :goto_0
.end method

.method private needResetDCByRatType(II)Z
    .locals 4
    .param p1, "mPreDataRegState"    # I
    .param p2, "mCurDataRegState"    # I

    .prologue
    .line 2884
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getRadioTechToRatType(I)I

    move-result v1

    .line 2885
    .local v1, "mPreRatType":I
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getRadioTechToRatType(I)I

    move-result v0

    .line 2886
    .local v0, "mCurRatType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needResetDCByRatType: mPreDataRegState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mCurDataRegState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2888
    if-eq v1, v0, :cond_0

    .line 2889
    const/4 v2, 0x1

    .line 2891
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyAllDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 3
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 862
    const/4 v0, 0x0

    const v1, 0x4200f

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 863
    return-void
.end method

.method private notifyAllOfConnected(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 848
    const/4 v0, 0x0

    const v1, 0x42000

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 849
    return-void
.end method

.method private notifyAllOfDisconnectDcConnecting(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 857
    const/4 v0, 0x0

    const v1, 0x4207c

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 858
    return-void
.end method

.method private notifyAllOfDisconnectDcRetrying(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 852
    const/4 v0, 0x0

    const v1, 0x42022

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 853
    return-void
.end method

.method private notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V
    .locals 7
    .param p1, "alreadySent"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "event"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 825
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p3, v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 828
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eq v0, p1, :cond_0

    .line 829
    if-eqz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/dataconnection/ApnContext;->setReason(Ljava/lang/String;)V

    .line 830
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v4, p2, v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 832
    .local v3, "msg":Landroid/os/Message;
    const v4, 0x42022

    if-eq v4, p2, :cond_2

    const v4, 0x42023

    if-ne v4, p2, :cond_4

    .line 835
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 836
    .local v1, "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 837
    :cond_3
    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 843
    .end local v1    # "cause":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :goto_1
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 840
    :cond_4
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    goto :goto_1

    .line 845
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    return-void
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;Lcom/android/internal/telephony/dataconnection/DcFailCause;Z)V
    .locals 6
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "sendAll"    # Z

    .prologue
    .line 874
    const/4 v0, 0x0

    .line 876
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz p1, :cond_1

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 878
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 879
    .local v1, "connectionCompletedMsg":Landroid/os/Message;
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 880
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v4, :cond_0

    .line 881
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 884
    .restart local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 885
    .local v2, "timeStamp":J
    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 887
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    if-ne p2, v4, :cond_3

    .line 888
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 889
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 900
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyConnectCompleted at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connectionCompletedMsg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->msgToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 904
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 906
    .end local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .end local v2    # "timeStamp":J
    :cond_1
    if-eqz p3, :cond_2

    .line 907
    const v4, 0x42023

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 910
    :cond_2
    return-void

    .line 891
    .restart local v1    # "connectionCompletedMsg":Landroid/os/Message;
    .restart local v2    # "timeStamp":J
    :cond_3
    iput-object p2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 892
    iput-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    .line 895
    if-nez p2, :cond_4

    sget-object p2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 896
    :cond_4
    new-instance v4, Ljava/lang/Throwable;

    invoke-virtual {p2}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p2, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;Z)V
    .locals 7
    .param p1, "dp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    .param p2, "sendAll"    # Z

    .prologue
    .line 918
    const-string v3, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 920
    const/4 v0, 0x0

    .line 921
    .local v0, "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    const/4 v2, 0x0

    .line 923
    .local v2, "reason":Ljava/lang/String;
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    if-eqz v3, :cond_1

    .line 925
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 926
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mOnCompletedMsg:Landroid/os/Message;

    .line 927
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/dataconnection/ApnContext;

    if-eqz v3, :cond_0

    .line 928
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 930
    .restart local v0    # "alreadySent":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    .line 932
    const-string v4, "msg=%s msg.obj=%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v6, 0x1

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    :goto_0
    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 935
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 936
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 938
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_3

    .line 939
    if-nez v2, :cond_2

    .line 940
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    :cond_2
    const v3, 0x4200f

    invoke-direct {p0, v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->notifyAllWithEvent(Lcom/android/internal/telephony/dataconnection/ApnContext;ILjava/lang/String;)V

    .line 944
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 945
    return-void

    .line 932
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string v3, "<no-reason>"

    goto :goto_0
.end method

.method private onConnect(Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;)V
    .locals 14
    .param p1, "cp"    # Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .prologue
    const-wide/16 v12, -0x1

    const v4, 0x40001

    const/4 v0, 0x0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnect: carrier=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' APN=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' proxy=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' port=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    if-lez v1, :cond_0

    .line 706
    new-instance v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    invoke-direct {v10}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;-><init>()V

    .line 707
    .local v10, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    iput v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 708
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v1

    iput v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 709
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 710
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 711
    const-string v1, ""

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 712
    const-string v1, ""

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 713
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 714
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 715
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 716
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mSuggestedRetryTime:I

    iput v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 718
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 719
    iput v0, v10, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    .line 721
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 722
    .local v8, "msg":Landroid/os/Message;
    const/4 v0, 0x0

    invoke-static {v8, v10, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 723
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnect: FailBringUpAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " send error response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcTesterFailBringUpAll:Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTesterFailBringUpAll;->getDcFailBringUp()Lcom/android/internal/telephony/dataconnection/DcFailBringUp;

    move-result-object v0

    iget v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcFailBringUp;->mCounter:I

    .line 789
    .end local v10    # "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    :goto_0
    return-void

    .line 732
    .end local v8    # "msg":Landroid/os/Message;
    :cond_0
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    .line 733
    iput-wide v12, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    .line 734
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 737
    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 738
    .restart local v8    # "msg":Landroid/os/Message;
    iput-object p1, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget v9, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->authType:I

    .line 741
    .local v9, "authType":I
    const/4 v1, -0x1

    if-ne v9, v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v9, v0

    .line 747
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 759
    .local v3, "mapn":Ljava/lang/String;
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    invoke-static {v0}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    .line 767
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 769
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->roamingProtocol:Ljava/lang/String;

    .line 775
    .local v7, "protocol":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mRilRat:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mProfileId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/ApnSetting;->password:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 742
    .end local v3    # "mapn":Ljava/lang/String;
    .end local v7    # "protocol":Ljava/lang/String;
    :cond_4
    const/4 v9, 0x3

    goto :goto_1

    .line 771
    .restart local v3    # "mapn":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v7, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->protocol:Ljava/lang/String;

    .restart local v7    # "protocol":Ljava/lang/String;
    goto :goto_2
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 998
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .line 999
    .local v1, "response":Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 1002
    .local v0, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget v3, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    if-eq v3, v4, :cond_0

    .line 1004
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1006
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 1036
    .local v2, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_0
    return-object v2

    .line 1007
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 1009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1013
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_1

    .line 1016
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 1017
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .line 1018
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_1
    if-eqz v1, :cond_2

    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 1019
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto :goto_0

    .line 1021
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 1022
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .line 1024
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    if-eqz v3, :cond_5

    .line 1025
    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 1026
    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->mFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    goto :goto_0

    .line 1028
    .end local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetupConnectionCompleted received DataCallResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1029
    iget v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    .line 1031
    iget-object v3, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPcscfAddr:[Ljava/lang/String;

    .line 1033
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v2    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_0
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 7
    .param p1, "response"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1489
    const/4 v1, 0x0

    .line 1490
    .local v1, "okToUseSystemPropertyDns":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "propertyPrefix":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    .line 1492
    .local v0, "dnsServers":[Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dns1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1493
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dns2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1496
    const-string v4, "SystemProperty"

    invoke-direct {p0, v0, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOkExt([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1497
    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    const-string v5, "DataCallResponse"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isDnsOkExt([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->setDNSCheckResult(Z)V

    .line 1503
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v3

    .line 1504
    .local v3, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->isFixedDnsNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-ne v3, v4, :cond_0

    .line 1505
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->fillInFixedDns(Landroid/net/LinkProperties;)V

    .line 1507
    :cond_0
    return-object v3
.end method

.method static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2660
    const-string v0, "DC"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    return-void
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const v7, 0x40003

    const/4 v6, 0x0

    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "discReason":I
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 801
    check-cast v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    .line 803
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "radioTurnedOff"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 804
    const/4 v1, 0x1

    .line 809
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    const-string v3, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 811
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p0, v7, v5, v6, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 822
    :goto_1
    return-void

    .line 805
    .restart local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_1
    iget-object v3, v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;->mReason:Ljava/lang/String;

    const-string v4, "pdpReset"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    const/4 v1, 0x2

    goto :goto_0

    .line 813
    .end local v2    # "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->isIWLANEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 814
    const-string v3, "tearDownData iWLAN enable, call deactivateDataCall"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 815
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p0, v7, v5, v6, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    goto :goto_1

    .line 818
    :cond_3
    const-string v3, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 819
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 820
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {p0, v7, v3, v6, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_1
.end method

.method private updateTcpBufferSizes(I)V
    .locals 11
    .param p1, "rilRat"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1165
    const/4 v4, 0x0

    .line 1166
    .local v4, "sizes":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1177
    .local v2, "ratName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1205
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, "configOverride":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 1208
    aget-object v6, v0, v1

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1209
    .local v5, "split":[Ljava/lang/String;
    aget-object v6, v5, v8

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    array-length v6, v5

    if-ne v6, v10, :cond_4

    .line 1210
    aget-object v4, v5, v9

    .line 1215
    .end local v5    # "split":[Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_2

    .line 1219
    packed-switch p1, :pswitch_data_1

    .line 1258
    :cond_2
    :goto_2
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v4}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1259
    return-void

    .line 1179
    .end local v0    # "configOverride":[Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_2
    const-string v2, "evdo"

    .line 1180
    goto :goto_0

    .line 1182
    :pswitch_3
    const-string v2, "evdo_a"

    .line 1183
    goto :goto_0

    .line 1185
    :pswitch_4
    const-string v2, "evdo_b"

    .line 1186
    goto :goto_0

    .line 1188
    :pswitch_5
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/HtcDataCustomizationManager;->KDDI_LTE_CONFIG()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1189
    const-string v6, "ril.cdma.evdo.rev"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1191
    .local v3, "rev":I
    if-ne v3, v9, :cond_3

    .line 1192
    const-string v2, "ehrpd_a"

    goto :goto_0

    .line 1193
    :cond_3
    if-ne v3, v10, :cond_0

    .line 1194
    const-string v2, "ehrpd_a"

    goto :goto_0

    .line 1207
    .end local v3    # "rev":I
    .restart local v0    # "configOverride":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v5    # "split":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1221
    .end local v5    # "split":[Ljava/lang/String;
    :pswitch_6
    const-string v4, "4092,8760,48000,4096,8760,48000"

    .line 1222
    goto :goto_2

    .line 1224
    :pswitch_7
    const-string v4, "4093,26280,70800,4096,16384,70800"

    .line 1225
    goto :goto_2

    .line 1227
    :pswitch_8
    const-string v4, "58254,349525,1048576,58254,349525,1048576"

    .line 1228
    goto :goto_2

    .line 1230
    :pswitch_9
    const-string v4, "16384,32768,131072,4096,16384,102400"

    .line 1231
    goto :goto_2

    .line 1235
    :pswitch_a
    const-string v4, "4094,87380,262144,4096,16384,262144"

    .line 1236
    goto :goto_2

    .line 1238
    :pswitch_b
    const-string v4, "131072,262144,1048576,4096,16384,524288"

    .line 1239
    goto :goto_2

    .line 1241
    :pswitch_c
    const-string v4, "61167,367002,1101005,8738,52429,262114"

    .line 1242
    goto :goto_2

    .line 1245
    :pswitch_d
    const-string v4, "40778,244668,734003,16777,100663,301990"

    .line 1246
    goto :goto_2

    .line 1248
    :pswitch_e
    const-string v4, "524288,1048576,2097152,262144,524288,1048576"

    .line 1249
    goto :goto_2

    .line 1251
    :pswitch_f
    const-string v4, "122334,734003,2202010,32040,192239,576717"

    .line 1252
    goto :goto_2

    .line 1177
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1219
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method dispose()V
    .locals 1

    .prologue
    .line 359
    const-string v0, "dispose: call quiteNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->quitNow()V

    .line 361
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2775
    const-string v0, "DataConnection "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2776
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnContexts.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRetryManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mConnectionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mConnectionParams:Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDisconnectParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDisconnectParams:Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDataRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRilRat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNetworkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mInstanceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInstanceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDcRetryAlarmController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDcRetryAlarmController:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2805
    return-void
.end method

.method fillInFixedDns(Landroid/net/LinkProperties;)V
    .locals 14
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2951
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCdmaCarrierId:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 2953
    :try_start_0
    const-string v10, "ro.ril.carrier"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCdmaCarrierId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2961
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCdmaCarrierId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2962
    .local v6, "id":I
    const/4 v2, 0x0

    .line 2964
    .local v2, "dnsList":[Ljava/lang/String;
    sparse-switch v6, :sswitch_data_0

    .line 2972
    const-string v10, "ro.ril.carrier not in ACG list"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2975
    :goto_0
    if-eqz v2, :cond_2

    .line 2976
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v9

    .line 2977
    .local v9, "oldDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2979
    .local v8, "newDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_1
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v7, :cond_4

    aget-object v0, v1, v4

    .line 2980
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2981
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-eqz v10, :cond_3

    .line 2979
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2954
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "dnsList":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "id":I
    .end local v7    # "len$":I
    .end local v8    # "newDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v9    # "oldDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :catch_0
    move-exception v3

    .line 2955
    .local v3, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillInFixedDns: exception occurs when trying to get ro.ril.carrier, e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 3005
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void

    .line 2965
    .restart local v2    # "dnsList":[Ljava/lang/String;
    .restart local v6    # "id":I
    :sswitch_0
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "66.38.0.240"

    aput-object v10, v2, v11

    const-string v10, "66.38.1.240"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2966
    :sswitch_1
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "66.175.131.21"

    aput-object v10, v2, v11

    const-string v10, "66.175.144.92"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2967
    :sswitch_2
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "209.244.0.3"

    aput-object v10, v2, v11

    const-string v10, "209.244.0.4"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2968
    :sswitch_3
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "206.40.99.2"

    aput-object v10, v2, v11

    const-string v10, "206.40.99.3"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2969
    :sswitch_4
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "209.165.131.12"

    aput-object v10, v2, v11

    const-string v10, "209.165.131.13"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2970
    :sswitch_5
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "216.129.224.1"

    aput-object v10, v2, v11

    const-string v10, "216.220.0.1"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto :goto_0

    .line 2971
    :sswitch_6
    new-array v2, v13, [Ljava/lang/String;

    .end local v2    # "dnsList":[Ljava/lang/String;
    const-string v10, "65.79.193.8"

    aput-object v10, v2, v11

    const-string v10, "65.79.197.97"

    aput-object v10, v2, v12

    .restart local v2    # "dnsList":[Ljava/lang/String;
    goto/16 :goto_0

    .line 2985
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "newDnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v9    # "oldDnses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    :cond_3
    :try_start_2
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 2989
    .local v5, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2990
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2999
    .end local v0    # "addr":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "ia":Ljava/net/InetAddress;
    .end local v7    # "len$":I
    :catch_1
    move-exception v3

    .line 3000
    .local v3, "e":Ljava/net/UnknownHostException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fillInFixedDns: UnknownHostException: e="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    .line 3001
    invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 3002
    invoke-virtual {p1, v9}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V

    goto :goto_3

    .line 2986
    .end local v3    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "addr":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    :catch_2
    move-exception v3

    .line 2987
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v10, Ljava/net/UnknownHostException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Non-numeric dns addr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2994
    .end local v0    # "addr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2995
    invoke-virtual {p1, v8}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V

    goto/16 :goto_3

    .line 2997
    :cond_5
    new-instance v10, Ljava/net/UnknownHostException;

    const-string v11, "newDnses is empty"

    invoke-direct {v10, v11}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2964
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x1a -> :sswitch_0
        0x66 -> :sswitch_3
        0x6d -> :sswitch_2
        0x70 -> :sswitch_4
        0x79 -> :sswitch_6
        0x7a -> :sswitch_5
    .end sparse-switch
.end method

.method getApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    return-object v0
.end method

.method getCid()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    return v0
.end method

.method public getConnectionTime()J
    .locals 2

    .prologue
    .line 3024
    iget-wide v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    return-wide v0
.end method

.method getCopyLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method getCopyNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    .line 963
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mId:I

    return v0
.end method

.method getIsActive()Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mActiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcActiveState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIsInactive()Z
    .locals 2

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mInactiveState:Lcom/android/internal/telephony/dataconnection/DataConnection$DcInactiveState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 2615
    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->cmdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method htcCheckSetProxy(Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;)V
    .locals 6
    .param p1, "result"    # Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    .prologue
    .line 481
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 482
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v1, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    .line 485
    .local v1, "port":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "8080"

    .line 486
    :cond_0
    new-instance v2, Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/dataconnection/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 488
    .local v2, "proxy":Landroid/net/ProxyInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcCheckSetProxy: config proxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 489
    iget-object v3, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v3, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "port":Ljava/lang/String;
    .end local v2    # "proxy":Landroid/net/ProxyInfo;
    :cond_1
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcCheckSetProxy: NumberFormatException making ProxyProperties ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "htcCheckSetProxy: proxy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isIpv4Connected()Z
    .locals 6

    .prologue
    .line 406
    const/4 v4, 0x0

    .line 407
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 409
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 410
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet4Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 411
    check-cast v3, Ljava/net/Inet4Address;

    .line 412
    .local v3, "i4addr":Ljava/net/Inet4Address;
    invoke-virtual {v3}, Ljava/net/Inet4Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 414
    const/4 v4, 0x1

    .line 419
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i4addr":Ljava/net/Inet4Address;
    :cond_1
    return v4
.end method

.method public isIpv6Connected()Z
    .locals 6

    .prologue
    .line 423
    const/4 v4, 0x0

    .line 424
    .local v4, "ret":Z
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 427
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 428
    check-cast v3, Ljava/net/Inet6Address;

    .line 429
    .local v3, "i6addr":Ljava/net/Inet6Address;
    invoke-virtual {v3}, Ljava/net/Inet6Address;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Ljava/net/Inet6Address;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    const/4 v4, 0x1

    .line 436
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v3    # "i6addr":Ljava/net/Inet6Address;
    :cond_1
    return v4
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2670
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2680
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2720
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2732
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2700
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2690
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2710
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    return-void
.end method

.method setLinkPropertiesHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 393
    return-void
.end method

.method tearDownNow()V
    .locals 1

    .prologue
    .line 2606
    const-string v0, "tearDownNow()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 2607
    const v0, 0x40008

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 2608
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;->apn:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/ApnSetting;->maskString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RefCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->toStringSimple()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnContexts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringSimple()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mApnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RefCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCreateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastastFailTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLastFailCause:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRetryManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRetryManager:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLinkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " linkCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->makeNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLinkProperty(Lcom/android/internal/telephony/dataconnection/DataCallResponse;)Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/dataconnection/DataCallResponse;

    .prologue
    .line 440
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .line 442
    .local v0, "result":Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-object v0

    .line 445
    :cond_1
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 448
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/dataconnection/DataCallResponse;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 449
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    if-eq v1, v2, :cond_2

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :cond_2
    const-string v1, "updateLinkProperty config setHttpProxy"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 456
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataConnection;->htcCheckSetProxy(Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;)V

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnSetting:Lcom/android/internal/telephony/dataconnection/ApnSetting;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->checkSetMtu(Lcom/android/internal/telephony/dataconnection/ApnSetting;Landroid/net/LinkProperties;)V

    .line 463
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 465
    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mRilRat:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->updateTcpBufferSizes(I)V

    .line 467
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty old LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLinkProperty new LP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 472
    :cond_3
    iget-object v1, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/dataconnection/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    goto/16 :goto_0
.end method
