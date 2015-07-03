.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;,
        Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
        Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;,
        Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field public static final CDMA_SMS_Dispatcher:I = 0x2

.field private static final CUST_SEND_RETRY_DELAY:[I

.field static final DBG:Z = false

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final DispatcherTypeInIntent:Ljava/lang/String; = "SmsMessageType"

.field private static final EVENT_CONFIRM_SEND_TO_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x7

.field private static final EVENT_CONFIRM_SEND_TO_PREMIUM_SHORT_CODE:I = 0x8

.field protected static final EVENT_EMERGENCY_CALL:I = 0x17

.field static final EVENT_GET_CSCB_COMPLETE:I = 0xc

.field protected static final EVENT_GET_RADIO_TECH_VERIZON:I = 0x14

.field private static final EVENT_GET_SMSC:I = 0xca

.field private static final EVENT_GET_TPMR:I = 0x10

.field protected static final EVENT_HANDLE_STATUS_REPORT:I = 0x9

.field static final EVENT_HTC_EXTENDED_OFFSET:I = 0xc8

.field protected static final EVENT_ICC_CHANGED:I = 0x16

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x12

.field protected static final EVENT_IMS_STATE_DONE:I = 0x13

.field private static final EVENT_MT_WRITE_TO_UICC:I = 0xcc

.field protected static final EVENT_NEW_ICC_SMS:I = 0x15

.field protected static final EVENT_RADIO_ON:I = 0xa

.field public static final EVENT_RTT_EVDO_ERROR_CODE_DISPATCH:I = 0xe

.field protected static final EVENT_SEND_CONFIRMED_SMS:I = 0x4

.field private static final EVENT_SEND_LIMIT_REACHED_CONFIRMATION:I = 0x3

.field private static final EVENT_SEND_RETRY:I = 0x2

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x1

.field static final EVENT_SET_CB_ENTRY:I = 0xd

.field static final EVENT_SET_CSCB_COMPLETE:I = 0xb

.field private static final EVENT_SET_SMSC:I = 0xcb

.field protected static final EVENT_SHOW_SPRINT_ROAM_DLG:I = 0x11

.field protected static final EVENT_STOP_SENDING:I = 0x6

.field public static final EVENT_WAIT_ACK_TIMEOUT:I = 0xf

.field public static final GSM_SMS_Dispatcher:I = 0x1

.field public static final IMS_SMS_Dispatcher:I = 0x3

.field static final MAIL_SEND_SMS:I = 0x1

.field private static final MAX_SEND_RETRIES:I

.field private static final MAX_SEND_RETRIES_OF_VERIZON:I = 0x2

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field private static final MSG_SPRINT_ROAMING_GUARD:I = 0x1

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field protected static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final PREMIUM_RULE_USE_BOTH:I = 0x3

.field private static final PREMIUM_RULE_USE_NETWORK:I = 0x2

.field private static final PREMIUM_RULE_USE_SIM:I = 0x1

.field public static final RADIO_TECH_3GPP:I = 0x1

.field public static final RADIO_TECH_3GPP2:I = 0x2

.field public static final RADIO_TECH_NONE:I = 0x0

.field private static final ROAM_GUARD_TAG:Ljava/lang/String; = "RoamingGuard"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

.field private static final SEND_RETRY_DELAY:I = 0x7d0

.field private static final SEND_SMS_NO_CONFIRMATION_PERMISSION:Ljava/lang/String; = "android.permission.SEND_SMS_NO_CONFIRMATION"

.field private static final SEQUENCE_COLUMN:I = 0x1

.field private static final SINGLE_PART_SMS:I = 0x1

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field public static final TELESERVICE_CHARi__DATA:B = 0x7t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_HI:B = 0x5t

.field public static final TELESERVICE_CHARi__PORT_DESTINATION_LOW:B = 0x6t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_HI:B = 0x3t

.field public static final TELESERVICE_CHARi__PORT_SOURCE_LOW:B = 0x4t

.field public static final UNKOWN_SMS_Dispatcher:I = 0x0

.field private static final VERIZON_IMS_SMS_RETRY_DELAY:I = 0x7530

.field public static final WAIT_ACK_TIME:I = 0x1770

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field public static WSD_ERROR_CODE_NO_SERVICE:I

.field private static mCheckServiceState:Z

.field protected static mImsRadioTech:I

.field protected static mNotInServiceFailTimestamp:J

.field protected static final mRawUri:Landroid/net/Uri;

.field private static mStateInServiceTimeStamp:J

.field public static final mWaitRoamDialog:Ljava/lang/Object;

.field public static final mWaitSendObj:Ljava/lang/Object;

.field private static sConcatenatedRef:I

.field protected static sIsSupportVerizonImsSms:Z


# instance fields
.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialogs:Ljava/util/ArrayList;

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

.field private final mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingTrackerCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamGuardHandler:Landroid/os/Handler;

.field private mRoamGuardThread:Landroid/os/HandlerThread;

.field private mSMSdispatcherType:I

.field private mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

.field protected mSmsCapable:Z

.field protected mSmsSendDisabled:Z

.field private mSubmitPduBase:Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mTpMrForRetry:Ljava/util/ArrayList;

.field private mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private m_bIsRegistered:Z

.field protected final sendPendingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 265
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportHtcSmsRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sput v5, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    .line 277
    :goto_0
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->CUST_SEND_RETRY_DELAY:[I

    .line 306
    const/16 v0, 0x14b

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    .line 313
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 328
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    .line 351
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    .line 371
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mImsRadioTech:I

    .line 373
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->sIsSupportVerizonImsSms:Z

    .line 376
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z

    .line 377
    sput-wide v6, Lcom/android/internal/telephony/SMSDispatcher;->mNotInServiceFailTimestamp:J

    .line 378
    sput-wide v6, Lcom/android/internal/telephony/SMSDispatcher;->mStateInServiceTimeStamp:J

    return-void

    .line 273
    :cond_0
    sput v4, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    goto :goto_0

    .line 277
    :array_0
    .array-data 4
        0x7d0
        0xfa0
        0xfa0
        0xfa0
        0x1f40
        0x1f40
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 352
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    .line 353
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    .line 364
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->sendPendingList:Ljava/util/List;

    .line 1962
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2571
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 2573
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2661
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$8;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 400
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;I)V

    .line 401
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;I)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;
    .param p4, "type"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 404
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 344
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 352
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    .line 353
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    .line 364
    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->sendPendingList:Ljava/util/List;

    .line 1962
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$6;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$6;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2571
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 2573
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$7;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$7;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 2661
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$8;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/SMSDispatcher;->init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;I)V

    .line 406
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 142
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SMSDispatcher;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/SMSDispatcher;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->updateCallState(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, Lcom/android/internal/telephony/SMSDispatcher;->mCheckServiceState:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/SMSDispatcher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .prologue
    .line 142
    sget-wide v0, Lcom/android/internal/telephony/SMSDispatcher;->mStateInServiceTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 142
    sput-wide p0, Lcom/android/internal/telephony/SMSDispatcher;->mStateInServiceTimeStamp:J

    return-wide p0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SMSDispatcher;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mMobileNetworkReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/Object;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SMSDispatcher;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->showRoamingGuardDialogAndWait(Ljava/lang/Object;II)V

    return-void
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3089
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3090
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3091
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3092
    return-void
.end method

.method private denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 4
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 1712
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    if-lt v1, v3, :cond_0

    .line 1714
    const-string v1, "SMSDispatcher"

    const-string v2, "Denied because queue limit reached"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v3, v0}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1716
    const/4 v0, 0x1

    .line 1719
    :goto_0
    return v0

    .line 1718
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 1728
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1730
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1731
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1734
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local p1    # "appPackage":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1732
    .restart local p1    # "appPackage":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1733
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageManager Name Not Found for package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getEasAllowSms()Z
    .locals 1

    .prologue
    .line 2876
    invoke-static {}, Lcom/android/internal/telephony/SmsStorageMonitor;->getEasAllowSms()Z

    move-result v0

    return v0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 382
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 383
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method protected static getNotInServiceError(I)I
    .locals 1
    .param p0, "ss"    # I

    .prologue
    .line 1280
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1281
    const/4 v0, 0x2

    .line 1283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private handleGetCSCBComplete(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 2747
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 2749
    const-string v4, "SMSDispatcher"

    const-string v5, "Get CSCB info complete."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 2752
    .local v0, "Result":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 2753
    .local v3, "mode":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v2, v0, v4

    .line 2754
    .local v2, "mMsgId":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v1, v0, v4

    .line 2756
    .local v1, "mDcs":Ljava/lang/String;
    const-string v4, "SMSDispatcher"

    const-string v5, "Get CSCB info complete"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-mode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-Msgid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get CSCB info complete-DCS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    .end local v0    # "Result":[Ljava/lang/String;
    .end local v1    # "mDcs":Ljava/lang/String;
    .end local v2    # "mMsgId":Ljava/lang/String;
    .end local v3    # "mode":Ljava/lang/String;
    :goto_0
    return-void

    .line 2765
    :cond_0
    const-string v4, "SMSDispatcher"

    const-string v5, "Get CSCB info failed"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static handleNotInService(ILandroid/app/PendingIntent;)V
    .locals 3
    .param p0, "ss"    # I
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1262
    if-eqz p1, :cond_0

    .line 1264
    :try_start_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNotInService, message send fail ss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SMSDispatcher;->mNotInServiceFailTimestamp:J

    .line 1266
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 1267
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1269
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private init_SMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;I)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;
    .param p4, "dispatcherType"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 410
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 411
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    .line 412
    iput p4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    .line 413
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 415
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 416
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 417
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 418
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;-><init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    .line 419
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sms_short_code_rule"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v2, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 422
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120044

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 424
    const-string v2, "telephony.sms.send"

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 426
    const-string v2, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSDispatcher: ctor mSmsCapable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSmsSendDisabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v2, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForTPMR(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 445
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 452
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 454
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.action.ACTION_UPDATE_RADIO_TECH_VERIZON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v2, "com.htc.intent.action.MARK_TO_SEND_QUEUED_SMS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    const-string v2, "com.htc.intent.action.MARK_TO_CHECK_SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v2, "com.htc.intent.action.MONITOR_MOBILE_NETWORK_FOR_CB_IMMUTABLE_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportAttCmasMechanism()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    iput-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 482
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 486
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintRoamingGuard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    if-nez v2, :cond_3

    .line 490
    const-string v2, "SMSDispatcher"

    const-string v3, "SMSDispatcher create -- mRoamGuardThread new"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "RoamGuardThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    .line 492
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 493
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SMSDispatcher$RoamGuardHandler;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    .line 502
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiDetectDataActivityCallstateForMoSms()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 503
    invoke-static {}, Lcom/android/internal/telephony/PhoneStateUtil;->getDefault()Lcom/android/internal/telephony/PhoneStateUtil;

    move-result-object v1

    .line 504
    .local v1, "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneStateUtil;->hasRegistered()Z

    move-result v2

    if-nez v2, :cond_4

    .line 505
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateUtil;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 510
    .end local v1    # "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 511
    return-void

    :cond_5
    move v2, v4

    .line 424
    goto/16 :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2896
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2897
    .local v1, "mode":I
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2898
    .local v0, "isAirplaneModeOn":Z
    :cond_0
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAirplaneModeOn? ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    return v0
.end method

.method private isNeedShowRoamingGuard()Z
    .locals 7

    .prologue
    .line 2846
    const/4 v0, 0x0

    .line 2848
    .local v0, "bNeedShow":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    move v1, v0

    .line 2868
    .end local v0    # "bNeedShow":Z
    .local v1, "bNeedShow":I
    :goto_0
    return v1

    .line 2851
    .end local v1    # "bNeedShow":I
    .restart local v0    # "bNeedShow":Z
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    move v1, v0

    .line 2852
    .restart local v1    # "bNeedShow":I
    goto :goto_0

    .line 2854
    .end local v1    # "bNeedShow":I
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2856
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2858
    .local v2, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2859
    const-string v4, "international"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 2860
    const-string v4, "RoamingGuard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, v0

    .line 2868
    .restart local v1    # "bNeedShow":I
    goto :goto_0

    .line 2863
    .end local v1    # "bNeedShow":I
    :cond_2
    const-string v4, "gsm"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 2864
    const-string v4, "RoamingGuard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GSM sms guard >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isOutOfService(II)Z
    .locals 1
    .param p1, "ss"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->WSD_ERROR_CODE_NO_SERVICE:I

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 5
    .param p1, "ce"    # Lcom/android/internal/telephony/CommandException;
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2904
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    .line 2906
    .local v0, "maxRetryCount":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwLteRetryMechanism()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2907
    const/4 v0, 0x2

    .line 2910
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportRetryForImsSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2911
    iget-boolean v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDontRetry:Z

    if-ne v3, v1, :cond_1

    .line 2916
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_2

    iget v3, p2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ge v3, v0, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private sendDatamanageIntent(Ljava/lang/String;JJ)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "size"    # J

    .prologue
    .line 936
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 953
    :goto_0
    return-void

    .line 938
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.datamanager.ADD_MESSAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "SMS_MO"

    .line 940
    .local v1, "type":Ljava/lang/String;
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework sent intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/number/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v2, "remote_number"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v2, "timestamp"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 945
    const-string v2, "size"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 952
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.permission.APP_DEFAULT"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v6, 0x0

    .line 2023
    iget-object v10, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2025
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2026
    .local v1, "destinationAddress":Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2028
    .local v2, "scAddress":Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2029
    .local v3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2030
    .local v4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2033
    .local v5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 2035
    .local v12, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v12, :cond_1

    .line 2036
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .local v8, "count":I
    :goto_0
    if-ge v9, v8, :cond_2

    .line 2037
    const/4 v11, 0x0

    .line 2038
    .local v11, "sentIntent":Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v9, :cond_0

    .line 2039
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v11, Landroid/app/PendingIntent;

    .line 2041
    .restart local v11    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    invoke-static {v12, v11}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILandroid/app/PendingIntent;)V

    .line 2036
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v8    # "count":I
    .end local v9    # "i":I
    .end local v11    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    move-object v7, v6

    .line 2046
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2048
    :cond_2
    return-void
.end method

.method private showRoamingGuardDialogAndWait(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "tracker"    # Ljava/lang/Object;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 2821
    const-string v2, "RoamingGuard"

    const-string v3, "show dialog"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2825
    .local v1, "msg":Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 2826
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 2827
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2829
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 2833
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2834
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2835
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2842
    :goto_0
    const-string v2, "RoamingGuard"

    const-string v3, "leave wait"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    return-void

    .line 2835
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2837
    :catch_0
    move-exception v0

    .line 2838
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RoamingGuard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait dialog exception >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 3162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3170
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 3164
    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/utils/HtcResUtil;->isInAllCapsLocale(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3165
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toUpperCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3169
    :cond_1
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not toUpperCase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final updateCallState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1971
    if-nez p1, :cond_1

    .line 1982
    :cond_0
    return-void

    .line 1973
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1974
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 1975
    .local v0, "d":Landroid/app/AlertDialog;
    if-eqz v0, :cond_1

    .line 1976
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1977
    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method MsgIdCbsFilter(II)Z
    .locals 1
    .param p1, "msgID"    # I
    .param p2, "msgDcs"    # I

    .prologue
    .line 2707
    const/4 v0, 0x0

    return v0
.end method

.method public abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    .line 1641
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.SEND_SMS_NO_CONFIRMATION"

    invoke-virtual {v8, v9}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return v6

    .line 1645
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 1646
    .local v3, "rule":I
    const/4 v5, 0x0

    .line 1647
    .local v5, "smsCategory":I
    if-eq v3, v6, :cond_2

    if-ne v3, v13, :cond_5

    .line 1648
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v4

    .line 1649
    .local v4, "simCountryIso":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v12, :cond_4

    .line 1650
    :cond_3
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get SIM country Iso: trying network country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;

    move-result-object v4

    .line 1654
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1656
    .end local v4    # "simCountryIso":Ljava/lang/String;
    :cond_5
    if-eq v3, v12, :cond_6

    if-ne v3, v13, :cond_9

    .line 1657
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(J)Ljava/lang/String;

    move-result-object v1

    .line 1658
    .local v1, "networkCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v8, v12, :cond_8

    .line 1659
    :cond_7
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get Network country Iso: trying SIM country Iso"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/telephony/TelephonyManager;->getSimCountryIso(J)Ljava/lang/String;

    move-result-object v1

    .line 1663
    :cond_8
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkDestination(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v8}, Lcom/android/internal/telephony/SmsUsageMonitor;->mergeShortCodeCategories(II)I

    move-result v5

    .line 1667
    .end local v1    # "networkCountryIso":Ljava/lang/String;
    :cond_9
    if-eqz v5, :cond_0

    if-eq v5, v6, :cond_0

    if-eq v5, v12, :cond_0

    .line 1674
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2

    .line 1676
    .local v2, "premiumSmsPermission":I
    if-nez v2, :cond_a

    .line 1678
    const/4 v2, 0x1

    .line 1681
    :cond_a
    packed-switch v2, :pswitch_data_0

    .line 1694
    if-ne v5, v13, :cond_b

    .line 1695
    const/4 v0, 0x7

    .line 1699
    .local v0, "event":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1700
    goto/16 :goto_0

    .line 1683
    .end local v0    # "event":I
    :pswitch_0
    const-string v7, "SMSDispatcher"

    const-string v8, "User approved this app to send to premium SMS"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1687
    :pswitch_1
    const-string v6, "SMSDispatcher"

    const-string v8, "User denied this app from sending to premium SMS"

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    const/4 v6, 0x6

    invoke-virtual {p0, v6, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    move v6, v7

    .line 1689
    goto/16 :goto_0

    .line 1697
    :cond_b
    const/16 v0, 0x8

    .restart local v0    # "event":I
    goto :goto_1

    .line 1681
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I

    .prologue
    const/4 v7, 0x0

    .line 2941
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2942
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p0

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2944
    return-void
.end method

.method public dispose()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 543
    const-string v1, "SMSDispatcher"

    const-string v2, "SMSDispatcher dispose >>>"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTPMR(Landroid/os/Handler;)V

    .line 558
    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSMSdispatcherType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 561
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    if-eqz v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    iput-boolean v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->m_bIsRegistered:Z

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 573
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 574
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 577
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    .line 580
    const-string v1, "SMSDispatcher"

    const-string v2, "SMSDispatcher dispose -- call mRoamGuardThread quit"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 582
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardThread:Landroid/os/HandlerThread;

    .line 588
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiDetectDataActivityCallstateForMoSms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 589
    invoke-static {}, Lcom/android/internal/telephony/PhoneStateUtil;->getDefault()Lcom/android/internal/telephony/PhoneStateUtil;

    move-result-object v0

    .line 590
    .local v0, "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateUtil;->hasRegistered()Z

    move-result v1

    if-ne v1, v5, :cond_3

    .line 591
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateUtil;->unRegisterPhoneStateListener(Landroid/content/Context;)V

    .line 596
    .end local v0    # "psu":Lcom/android/internal/telephony/PhoneStateUtil;
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSettingsObserver:Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 598
    const-string v1, "SMSDispatcher"

    const-string v2, "SMSDispatcher dispose <<<"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return-void
.end method

.method protected getAppPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1541
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1547
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1553
    :goto_0
    return-object v0

    .line 1548
    :catch_0
    move-exception v1

    .line 1549
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMSDispatcher"

    const-string v4, "Can\'t get calling app package info: refusing to send SMS"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 11
    .param p1, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1507
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1508
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 1510
    .local v5, "packageNames":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v8, v5

    if-nez v8, :cond_1

    .line 1512
    :cond_0
    const-string v8, "SMSDispatcher"

    const-string v9, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const/4 v4, 0x0

    .line 1535
    :goto_0
    return-object v4

    .line 1518
    :cond_1
    if-eqz p1, :cond_4

    .line 1519
    const/4 v4, 0x0

    .line 1520
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1521
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    const-string v8, "packageName"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1523
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1525
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v7, v0, v1

    .line 1526
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1527
    const-string v8, "SMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Use AP passed packageName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1525
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1535
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "len$":I
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v7    # "s":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    aget-object v4, v5, v8

    goto :goto_0
.end method

.method getCSCB()V
    .locals 2

    .prologue
    .line 2735
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2736
    .local v0, "reply":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getATCSCB(Landroid/os/Message;)V

    .line 2737
    return-void
.end method

.method protected getCarrierAppPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 3072
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3073
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 3079
    :cond_0
    :goto_0
    return-object v2

    .line 3077
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 3079
    .local v1, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->getImsSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2994
    :goto_0
    return-object v0

    .line 2993
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3062
    .local p1, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3063
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3064
    .local v1, "part":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3065
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3068
    .end local v1    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public declared-synchronized getNextMessageIdInPreference()I
    .locals 6

    .prologue
    .line 2952
    monitor-enter p0

    const/4 v1, 0x1

    .line 2954
    .local v1, "msgId":I
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 2955
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "cdma_msg_id"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2957
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2959
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "msg_id"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2960
    const-string v3, "msg_id"

    const v4, 0xffff

    rem-int v4, v1, v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2962
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2963
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSharedPreference msgId >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2967
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    monitor-exit p0

    return v1

    .line 2965
    :cond_0
    :try_start_1
    const-string v3, "SMSDispatcher"

    const-string v4, "Context is null when getNextMessageIdInPreference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2952
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSMSCenter(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1876
    const/16 v1, 0xca

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1877
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSmscAddress(Landroid/os/Message;)V

    .line 1878
    return-void
.end method

.method protected getServiceState()I
    .locals 4

    .prologue
    .line 1860
    const/4 v0, 0x1

    .line 1861
    .local v0, "ss":I
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1867
    :goto_0
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return v0

    .line 1865
    :cond_0
    const-string v1, "SMSDispatcher"

    const-string v2, "mPhone or gerServiceState is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 10
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "messageUri"    # Landroid/net/Uri;
    .param p6, "isExpectMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Z)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 2430
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v0

    return-object v0
.end method

.method protected getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 20
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p6, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p7, "messageUri"    # Landroid/net/Uri;
    .param p8, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p9, "isExpectMore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z)",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;"
        }
    .end annotation

    .prologue
    .line 2412
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v19

    .line 2416
    .local v19, "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2417
    .local v8, "appInfo":Landroid/content/pm/PackageInfo;
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2418
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->getAppPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 2422
    :cond_0
    const-string v4, "destAddr"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2424
    .local v9, "destAddr":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move/from16 v15, p9

    invoke-direct/range {v4 .. v18}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZJLcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v4
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[B",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2447
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2448
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2449
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2451
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    const-string v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    const-string v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2454
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2436
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2437
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2438
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2440
    const-string v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    const-string v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2442
    return-object v0
.end method

.method protected getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/util/HashMap;
    .locals 2
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2461
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    const-string v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2463
    const-string v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    const-string v1, "smsc"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    const-string v1, "pdu"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2466
    return-object v0
.end method

.method protected getSubId()J
    .locals 2

    .prologue
    .line 3085
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget v1, v1, Lcom/android/internal/telephony/PhoneBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 18
    .param p1, "isPremium"    # Z
    .param p2, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1773
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1778
    :cond_0
    if-eqz p1, :cond_1

    .line 1779
    const v4, 0x10404c0

    .line 1784
    .local v4, "detailsId":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1785
    .local v2, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1787
    .local v11, "r":Landroid/content/res/Resources;
    const v14, 0x10404be

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1788
    .local v10, "messageText":Ljava/lang/String;
    const-string v14, "<b>"

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1789
    const-string v14, "</b>"

    const-string v15, ""

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 1795
    new-instance v13, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v15, 0x1030237

    invoke-direct {v13, v14, v15}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1796
    .local v13, "themeContext":Landroid/view/ContextThemeWrapper;
    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 1798
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x303000b

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1800
    .local v8, "layout":Landroid/view/View;
    new-instance v9, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const v14, 0x3110015

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1807
    .local v9, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    const v14, 0x3110011

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1809
    .local v5, "detailsLayout":Landroid/view/ViewGroup;
    const v14, 0x3110012

    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1811
    .local v6, "detailsView":Landroid/widget/TextView;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1813
    const v14, 0x3110013

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    .line 1815
    .local v12, "rememberChoice":Landroid/widget/CheckBox;
    invoke-virtual {v12, v9}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1817
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v16, 0x30b0001

    invoke-direct/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v14, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x10404c1

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const v15, 0x10404c2

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1825
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    const/16 v15, 0x7d3

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 1826
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1828
    const/4 v14, -0x1

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setPositiveButton(Landroid/widget/Button;)V

    .line 1829
    const/4 v14, -0x2

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->setNegativeButton(Landroid/widget/Button;)V

    goto/16 :goto_0

    .line 1781
    .end local v2    # "appLabel":Ljava/lang/CharSequence;
    .end local v3    # "d":Landroid/app/AlertDialog;
    .end local v4    # "detailsId":I
    .end local v5    # "detailsLayout":Landroid/view/ViewGroup;
    .end local v6    # "detailsView":Landroid/widget/TextView;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "layout":Landroid/view/View;
    .end local v9    # "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    .end local v10    # "messageText":Ljava/lang/String;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "rememberChoice":Landroid/widget/CheckBox;
    .end local v13    # "themeContext":Landroid/view/ContextThemeWrapper;
    :cond_1
    const v4, 0x10404bf

    .restart local v4    # "detailsId":I
    goto/16 :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 645
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "handleMessage > "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 926
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "handleMessage() ignoring message of unexpected type "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 651
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 655
    :sswitch_1
    const-string v2, "SMSDispatcher"

    const-string v3, "SMS retry.."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 660
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 664
    :sswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 668
    :sswitch_4
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleConfirmShortCode(ZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 673
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 674
    .local v25, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 684
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto :goto_0

    .line 677
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 678
    const/4 v2, 0x1

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 682
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 680
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v25

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    goto :goto_2

    .line 690
    .end local v25    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 691
    .restart local v25    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingTrackerCount:I

    goto/16 :goto_0

    .line 698
    .end local v25    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :sswitch_7
    const-string v2, "SMSDispatcher"

    const-string v3, "Set Cell broadcast channels complete"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 704
    :sswitch_8
    const-string v2, "SMSDispatcher"

    const-string v3, "Get Cell broadcast channels complete"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetCSCBComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 713
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 715
    .local v10, "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 716
    const-string v2, "SMSDispatcher"

    const-string v3, "Callback with GET SMSC successful."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 719
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 720
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 723
    :cond_3
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 729
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 731
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 732
    const-string v2, "SMSDispatcher"

    const-string v3, "Callback with GET SUBSIDY LOCK successful."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-static {v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iget-object v3, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 735
    iget-object v2, v10, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 740
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 741
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v8, v2

    check-cast v8, [I

    .line 742
    .local v8, "MIPData":[I
    if-nez v8, :cond_4

    .line 743
    const-string v2, "SMSDispatcher"

    const-string v3, "MIP without parameter"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 747
    :cond_4
    const/4 v2, 0x0

    aget v20, v8, v2

    .line 748
    .local v20, "msg_id":I
    const/4 v2, 0x1

    aget v14, v8, v2

    .line 751
    .local v14, "errorCode":I
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.htc.provider.Telephony.RTT_EVDO_ERROR"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v16, "intent":Landroid/content/Intent;
    const-string v2, "msg_id"

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    const-string v2, "errorCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 762
    .end local v8    # "MIPData":[I
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v14    # "errorCode":I
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v20    # "msg_id":I
    :sswitch_c
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwRetryDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 766
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 768
    :catch_0
    move-exception v13

    .line 769
    .local v13, "e":Ljava/lang/Exception;
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "wait sent exception >"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 779
    .end local v13    # "e":Ljava/lang/Exception;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 780
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 781
    iget-object v2, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v22, v2

    check-cast v22, [I

    .line 782
    .local v22, "results":[I
    move-object/from16 v11, v22

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget v24, v11, v15

    .line 783
    .local v24, "tpmr":I
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TP MR >"

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    move/from16 v0, v24

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 790
    .end local v10    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "arr$":[I
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .end local v22    # "results":[I
    .end local v24    # "tpmr":I
    :sswitch_e
    new-instance v23, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v3, 0x1030237

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 791
    .local v23, "themeContext":Landroid/view/ContextThemeWrapper;
    new-instance v19, Lcom/android/internal/telephony/HtcRoamingGuardDialog;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcRoamingGuardDialog;-><init>(Landroid/content/Context;)V

    .line 793
    .local v19, "mShowRoamGuardDialogView":Lcom/android/internal/telephony/HtcRoamingGuardDialog;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 794
    .local v5, "mRoamingTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_5

    const/4 v6, 0x1

    .line 795
    .local v6, "bFirstofAll":Z
    :goto_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-lez v2, :cond_6

    const/4 v7, 0x1

    .line 797
    .local v7, "bLastofAll":Z
    :goto_5
    if-eqz v19, :cond_8

    .line 798
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    .line 799
    .local v21, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->getListView()Landroid/widget/ListView;

    move-result-object v18

    .line 800
    .local v18, "list":Landroid/widget/ListView;
    const v2, 0x3070149

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->setMsgText(Ljava/lang/String;)V

    .line 802
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v26, 0x30b0001

    move/from16 v0, v26

    invoke-direct {v2, v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x307014a

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v26, Lcom/android/internal/telephony/SMSDispatcher$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/HtcRoamingGuardDialog;->getLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 834
    .local v4, "mRoamGuardDlg":Landroid/app/AlertDialog;
    if-eqz v18, :cond_7

    .line 835
    new-instance v9, Lcom/android/internal/telephony/RoamingGuardListAdapter;

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Lcom/android/internal/telephony/RoamingGuardListAdapter;-><init>(Landroid/content/Context;)V

    .line 836
    .local v9, "adapter":Lcom/android/internal/telephony/RoamingGuardListAdapter;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 838
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 839
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/app/AlertDialog;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 883
    .end local v9    # "adapter":Lcom/android/internal/telephony/RoamingGuardListAdapter;
    :goto_6
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 884
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 794
    .end local v4    # "mRoamGuardDlg":Landroid/app/AlertDialog;
    .end local v6    # "bFirstofAll":Z
    .end local v7    # "bLastofAll":Z
    .end local v18    # "list":Landroid/widget/ListView;
    .end local v21    # "r":Landroid/content/res/Resources;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 795
    .restart local v6    # "bFirstofAll":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 875
    .restart local v4    # "mRoamGuardDlg":Landroid/app/AlertDialog;
    .restart local v7    # "bLastofAll":Z
    .restart local v18    # "list":Landroid/widget/ListView;
    .restart local v21    # "r":Landroid/content/res/Resources;
    :cond_7
    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 876
    :try_start_4
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 877
    monitor-exit v3

    goto :goto_6

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 878
    :catch_1
    move-exception v2

    goto :goto_6

    .line 888
    .end local v4    # "mRoamGuardDlg":Landroid/app/AlertDialog;
    .end local v18    # "list":Landroid/widget/ListView;
    .end local v21    # "r":Landroid/content/res/Resources;
    :cond_8
    :try_start_6
    sget-object v3, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 889
    :try_start_7
    sget-object v2, Lcom/android/internal/telephony/SMSDispatcher;->mWaitRoamDialog:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 890
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 891
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 899
    .end local v5    # "mRoamingTracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v6    # "bFirstofAll":Z
    .end local v7    # "bLastofAll":Z
    .end local v19    # "mShowRoamGuardDialogView":Lcom/android/internal/telephony/HtcRoamingGuardDialog;
    .end local v23    # "themeContext":Landroid/view/ContextThemeWrapper;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    .line 900
    .restart local v10    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b

    .line 901
    iget-object v12, v10, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 905
    .local v12, "code":Ljava/lang/String;
    const-string v2, "SMSDispatcher"

    const-string v3, "EVENT_GET_RADIO_TECH_VERIZON no security debug flag"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_9

    .line 909
    const-string v2, "01"

    const/16 v3, 0x8

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-virtual {v12, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 910
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcher;->sIsSupportVerizonImsSms:Z

    .line 915
    :cond_9
    :goto_7
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sIsSupportVerizonImsSms change to : "

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v26, Lcom/android/internal/telephony/SMSDispatcher;->sIsSupportVerizonImsSms:Z

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    :cond_a
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/SMSDispatcher;->sIsSupportVerizonImsSms:Z

    goto :goto_7

    .line 917
    .end local v12    # "code":Ljava/lang/String;
    :cond_b
    const-string v2, "SMSDispatcher"

    const-string v3, "Cannot get radio tech for Verizon"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 922
    .end local v10    # "ar":Landroid/os/AsyncResult;
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->handleStatusReport(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 648
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_10
        0xb -> :sswitch_7
        0xc -> :sswitch_8
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_e
        0x14 -> :sswitch_f
        0xca -> :sswitch_9
        0xcb -> :sswitch_a
    .end sparse-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->denyIfQueueLimitReached(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1765
    :goto_0
    return-void

    .line 1748
    :cond_0
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1749
    .local v0, "appLabel":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 1750
    .local v4, "r":Landroid/content/res/Resources;
    const v5, 0x10404bb

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 1752
    .local v3, "messageText":Landroid/text/Spanned;
    new-instance v2, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;

    const/4 v5, 0x0

    invoke-direct {v2, p0, p1, v5}, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V

    .line 1754
    .local v2, "listener":Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x10404ba

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x10404bc

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x10404bd

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1763
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d3

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1764
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 28
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 966
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 970
    .local v26, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v18, v0

    .line 971
    .local v18, "map":Ljava/util/HashMap;
    const-string v4, "pdu"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object/from16 v19, v4

    check-cast v19, [B

    .line 975
    .local v19, "pdu":[B
    const/4 v10, 0x1

    .line 980
    .local v10, "bRemoveWait":Z
    const/16 v20, 0x0

    .line 981
    .local v20, "pregeterrorCode":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 983
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 985
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/SmsResponse;

    .line 986
    .local v23, "sr":Lcom/android/internal/telephony/SmsResponse;
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    move/from16 v20, v0

    .line 987
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril/modem returned error code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgRef> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    iget v9, v0, Lcom/android/internal/telephony/SmsResponse;->mMessageRef:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", trytpmr> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    .end local v23    # "sr":Lcom/android/internal/telephony/SmsResponse;
    :goto_0
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send complete: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_4

    .line 998
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1001
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isPendingMsgRepoEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;

    move-result-object v21

    .line 1003
    .local v21, "retUri":Landroid/net/Uri;
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "add msg ref to pending list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    .end local v21    # "retUri":Landroid/net/Uri;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onSent(Landroid/content/Context;)V

    .line 1010
    const-string v4, "destaddr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1011
    .local v5, "str":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1012
    .local v6, "time":J
    const-wide/16 v8, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V

    .line 1245
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "time":J
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwRetryDialog()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v10, :cond_2

    .line 1246
    const/16 v4, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1250
    :cond_2
    return-void

    .line 990
    :cond_3
    const-string v4, "SMSDispatcher"

    const-string v8, "SmsResponse was null"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1018
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1019
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mTpMrForRetry:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1020
    .local v25, "tpmr":Ljava/lang/Integer;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    .line 1021
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assign trytpmr> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    .end local v25    # "tpmr":Ljava/lang/Integer;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getServiceState()I

    move-result v24

    .line 1026
    .local v24, "ss":I
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retry count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ss: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v15, 0x0

    .line 1031
    .local v15, "extraError":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_7

    .line 1032
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v12

    .line 1033
    .local v12, "err":Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v12, v4, :cond_6

    .line 1034
    const/16 v15, 0x100

    .line 1035
    const-string v4, "SMSDispatcher"

    const-string v8, "Command Error FDN"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_6
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .end local v12    # "err":Lcom/android/internal/telephony/CommandException$Error;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->isOutOfService(II)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1047
    :cond_8
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleNotInService, message send fail ss : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/android/internal/telephony/SMSDispatcher;->mNotInServiceFailTimestamp:J

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/SMSDispatcher;->getNotInServiceError(I)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto/16 :goto_1

    .line 1051
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->isUnderSendRetry(Lcom/android/internal/telephony/CommandException;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1061
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1062
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwRetryDialog()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1063
    const/16 v4, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(I)V

    .line 1064
    const/4 v10, 0x0

    .line 1068
    const/high16 v14, 0x20000

    .line 1069
    .local v14, "errorCode":I
    if-eqz v15, :cond_b

    .line 1070
    add-int/lit16 v4, v15, 0x7d0

    or-int/2addr v14, v4

    .line 1083
    :goto_2
    const-string v4, "destaddr"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1086
    .local v11, "dststr":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1087
    .local v17, "isImsSmsRetry":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwLteRetryMechanism()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1094
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-lez v4, :cond_a

    .line 1095
    const/16 v17, 0x1

    .line 1099
    :cond_a
    if-eqz v17, :cond_e

    .line 1101
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_d

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x7918

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1104
    const-string v4, "SMSDispatcher"

    const-string v8, "send retry, acquire wake lock 31000 secs"

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 1108
    .local v22, "retryMsg":Landroid/os/Message;
    const-wide/16 v8, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1074
    .end local v11    # "dststr":Ljava/lang/String;
    .end local v17    # "isImsSmsRetry":Z
    .end local v22    # "retryMsg":Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_c

    .line 1075
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    add-int/lit16 v4, v4, 0x7d0

    or-int/2addr v14, v4

    goto :goto_2

    .line 1078
    :cond_c
    const/4 v14, 0x1

    goto :goto_2

    .line 1109
    .restart local v11    # "dststr":Ljava/lang/String;
    .restart local v17    # "isImsSmsRetry":Z
    :cond_d
    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_1

    .line 1110
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1113
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14, v11}, Lcom/android/internal/telephony/SMSDispatcher;->showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1116
    .end local v11    # "dststr":Ljava/lang/String;
    .end local v14    # "errorCode":I
    .end local v17    # "isImsSmsRetry":Z
    :cond_f
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    .line 1117
    .restart local v22    # "retryMsg":Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportHtcSmsRetry()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1122
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v8, Lcom/android/internal/telephony/SMSDispatcher;->CUST_SEND_RETRY_DELAY:[I

    move-object/from16 v0, v26

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    add-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1123
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send retry, acquire wake lock "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/SMSDispatcher;->CUST_SEND_RETRY_DELAY:[I

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    aget v9, v9, v27

    add-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " secs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->CUST_SEND_RETRY_DELAY:[I

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v8, v8, -0x1

    aget v4, v4, v8

    int-to-long v8, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1127
    :cond_10
    const-wide/16 v8, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1197
    .end local v22    # "retryMsg":Landroid/os/Message;
    :cond_11
    const/4 v14, 0x0

    .line 1198
    .restart local v14    # "errorCode":I
    if-eqz v15, :cond_15

    .line 1199
    add-int/lit16 v14, v15, 0x7d0

    .line 1215
    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v8, :cond_12

    .line 1216
    const/high16 v4, 0x20000

    or-int/2addr v14, v4

    .line 1220
    :cond_12
    const-string v4, "SMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 1224
    .local v16, "fillIn":Landroid/content/Intent;
    const-string v4, "under_retry"

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1225
    const-string v4, "retry_count"

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v13

    .line 1230
    .local v13, "error":Lcom/android/internal/telephony/CommandException$Error;
    if-eqz v13, :cond_13

    const-string v4, "command_error"

    invoke-virtual {v13}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSmsWriteUiccForMo3gppSms()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1236
    const-string v4, "pdu"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1240
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v14, v8, v1}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;IILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1205
    .end local v13    # "error":Lcom/android/internal/telephony/CommandException$Error;
    .end local v16    # "fillIn":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_16

    .line 1206
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    iget v4, v4, Lcom/android/internal/telephony/SmsResponse;->mErrorCode:I

    add-int/lit16 v14, v4, 0x7d0

    goto/16 :goto_3

    .line 1209
    :cond_16
    const/4 v14, 0x1

    goto/16 :goto_3
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 623
    const-string v0, "SMSDispatcher"

    const-string v1, "handleStatusReport() called with no subclass."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method

.method protected abstract injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
.end method

.method public isCdmaMo()Z
    .locals 3

    .prologue
    .line 3096
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v1, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isCdmaMo()Z

    move-result v1

    .line 3102
    :goto_0
    return v1

    .line 3100
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3102
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIms()Z
    .locals 3

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ImsSMSDispatcher;->isIms()Z

    move-result v0

    .line 2985
    :goto_0
    return v0

    .line 2984
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "subId"    # J
    .param p3, "messageUri"    # Landroid/net/Uri;
    .param p4, "creator"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    .line 3036
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 3037
    .local v1, "values":Landroid/content/ContentValues;
    const-string v4, "sub_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3038
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3040
    const-string v4, "creator"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3043
    :cond_0
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3044
    const-string v4, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3047
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, p3, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 3049
    const-string v4, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToOutbox: failed to update message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3054
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3056
    :goto_0
    return-void

    .line 3051
    :catch_0
    move-exception v0

    .line 3052
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SMSDispatcher"

    const-string v5, "moveToOutbox: Failed to update message"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3054
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "DmString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 2882
    return-void
.end method

.method public abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3114
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v15, v1, 0xff

    .line 3115
    .local v15, "refNumber":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3118
    .local v14, "msgCount":I
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3119
    .local v10, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 3121
    .local v11, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_3

    .line 3122
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 3123
    .local v12, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v15, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 3124
    add-int/lit8 v1, v13, 0x1

    iput v1, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 3125
    iput v14, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 3132
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 3133
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 3134
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v12, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 3136
    const/4 v7, 0x0

    .line 3137
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_0

    .line 3138
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 3141
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    :cond_0
    const/4 v8, 0x0

    .line 3142
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_1

    .line 3143
    move-object/from16 v0, p6

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 3146
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_2

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPduForDataSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 3121
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3146
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 3150
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v12    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_3
    return-void
.end method

.method public abstract sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
.end method

.method protected abstract sendNewSubmitPduForDataSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1580
    const-string v5, "SMSDispatcher"

    const-string v8, "sendRawPdu"

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1583
    .local v0, "map":Ljava/util/HashMap;
    const-string v5, "pdu"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v4, v5

    check-cast v4, [B

    .line 1585
    .local v4, "pdu":[B
    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v5, :cond_1

    .line 1586
    const-string v5, "SMSDispatcher"

    const-string v6, "Device does not support sending sms."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 1631
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    if-nez v4, :cond_2

    .line 1592
    const-string v5, "SMSDispatcher"

    const-string v6, "Empty PDU"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, v9, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1597
    :cond_2
    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 1599
    :cond_3
    const-string v5, "SMSDispatcher"

    const-string v8, "mAppInfo or mAppInfo.packageName is null!"

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v5, "SMSDispatcher"

    const-string v8, "Can\'t get calling app package name: refusing to send SMS"

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    goto :goto_0

    .line 1609
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->checkDestination(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1611
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1612
    invoke-virtual {p0, v9, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1620
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->isNeedShowRoamingGuard()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1621
    iget-boolean v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    if-eqz v5, :cond_6

    move v2, v6

    .line 1622
    .local v2, "org1":I
    :goto_1
    iget-boolean v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    if-eqz v5, :cond_7

    move v3, v6

    .line 1623
    .local v3, "org2":I
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1625
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRoamGuardHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "org1":I
    .end local v3    # "org2":I
    :cond_6
    move v2, v7

    .line 1621
    goto :goto_1

    .restart local v2    # "org1":I
    :cond_7
    move v3, v7

    .line 1622
    goto :goto_2

    .line 1629
    .end local v2    # "org1":I
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method public sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    if-eqz v0, :cond_0

    .line 2007
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ImsSMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2011
    :goto_0
    return-void

    .line 2009
    :cond_0
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSMSDispatcher:Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null. Retry failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method setCBEntry(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 2711
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2713
    .local v0, "reply":Landroid/os/Message;
    return-void
.end method

.method setCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/Boolean;
    .param p2, "mMsgId"    # Ljava/lang/String;
    .param p3, "mDsc"    # Ljava/lang/String;

    .prologue
    .line 2722
    const-string v1, "SMSDispatcher"

    const-string v2, "setCSCB()"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiIgnoreCbConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2726
    const-string v1, "SMSDispatcher"

    const-string v2, "ignore setCSCB!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :goto_0
    return-void

    .line 2730
    :cond_0
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2731
    .local v0, "reply":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, p2, p3, v0}, Lcom/android/internal/telephony/CommandsInterface;->setATCSCB(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1856
    return-void
.end method

.method public setSMSCenter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "smscAddress"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1884
    const/16 v1, 0xcb

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1885
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1887
    return-void
.end method

.method protected showRetryMessageDialog(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;ILjava/lang/String;)V
    .locals 6
    .param p1, "smstracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .param p2, "error"    # I
    .param p3, "dstaddr"    # Ljava/lang/String;

    .prologue
    .line 1898
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.htc.sense.mms.hfm.speakSentFail"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1899
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v3, "address"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1900
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1902
    const-string v3, "SMSDispatcher"

    const-string v4, "showout VZW retry dialog"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1905
    .local v2, "r":Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const v5, 0x30b0001

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v4, 0x10404ba

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x307014d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10404bc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$5;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$5;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10404bd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->toUpperCaseIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/SMSDispatcher$4;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$4;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;I)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1952
    .local v1, "d":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1953
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1955
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mAlertDialogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1960
    return-void
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 535
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 536
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active phone changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method public updateRadiotechForVerizon()V
    .locals 2

    .prologue
    .line 2924
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2925
    .local v0, "response":Landroid/os/Message;
    const-string v1, "C8EC000D"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->requestHtcDmCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 2926
    return-void
.end method

.method protected abstract updateSmsSendStatus(IZ)V
.end method

.method protected writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p1, "subId"    # J
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "requireDeliveryReport"    # Z
    .param p6, "creator"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 3005
    new-instance v4, Landroid/content/ContentValues;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 3006
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "sub_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3007
    const-string v5, "address"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3008
    const-string v5, "body"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3009
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3010
    const-string v5, "seen"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3011
    const-string v5, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3012
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3013
    const-string v5, "creator"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    :cond_0
    if-eqz p5, :cond_1

    .line 3016
    const-string v5, "status"

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3018
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3020
    .local v2, "identity":J
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 3023
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportAcms()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3024
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v5, v1, v4}, Lcom/htc/internal/telephony/HtcSmsUtils;->syncMo2AcmsDb(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 3027
    :catch_0
    move-exception v0

    .line 3028
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SMSDispatcher"

    const-string v6, "writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3029
    const/4 v1, 0x0

    .line 3031
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method
