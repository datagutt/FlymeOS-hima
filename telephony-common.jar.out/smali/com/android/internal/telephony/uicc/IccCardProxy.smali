.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardProxy$1;,
        Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;
    }
.end annotation


# static fields
.field private static final AID_ENTRY_INDEX_CSIM:I = 0x0

.field private static final AID_ENTRY_INDEX_USIM:I = 0x1

.field private static final CHECK_AID_NUM:I = 0x2

.field private static final DBG:Z = true

.field public static final ENABLED:Z

.field private static final EVENT_ALL_NAA_RECORDS_LOADED:I = 0x66

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_AUTO_SELECT_NETWORK_DONE:I = 0x70

.field private static final EVENT_CARRIER_PRIVILIGES_LOADED:I = 0x1f7

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x6d

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x6b

.field private static final EVENT_GET_ICC_TYPE_DONE:I = 0x68

.field private static final EVENT_GET_OTA_MSG_PROVISION_STATUS:I = 0x6a

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_FAIL:I = 0x64

.field private static final EVENT_ICC_HOT_SWAP_STATUS:I = 0x69

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_IMEI_LOCKED:I = 0x65

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_MANUAL_SELECT_NETWORK_DONE:I = 0x6f

.field private static final EVENT_NETWORK_LOCKED:I = 0x9

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x6c

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED:I = 0x72

.field private static final EVENT_SET_SUBSIDY_LOCK_TYPE_DONE:I = 0x71

.field private static final EVENT_SIM_IO_DONE:I = 0x6e

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static OTARequested:Z = false

.field static final OTA_REQ:Ljava/lang/String; = "ota_required"

.field private static SELECT_NETWORK_DONE_STATE:I = 0x0

.field static final SIM_STATE_NOTIFICATION:I = 0x30701ba

.field private static final SPRINT_NETWORKLIST:Ljava/util/ArrayList;

.field private static mIsimChecked:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardIndex:Ljava/lang/Integer;

.field private mCdmaIMSI:Ljava/lang/String;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field private mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

.field private mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mGsmIMSI:Ljava/lang/String;

.field private mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIccFailRegistrants:Landroid/os/RegistrantList;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImeiLockedRegistrants:Landroid/os/RegistrantList;

.field private mInitialized:Z

.field private final mLock:Ljava/lang/Object;

.field private mNetworkLockedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mQuietMode:Z

.field private mRadioOn:Z

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

.field mSimNotifyState:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

.field private mSubscriptionData:Lcom/android/internal/telephony/Subscription;

.field private mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private recordsUpdatedRegistrants:Landroid/os/RegistrantList;

.field private supportAID:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    sput-boolean v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->OTARequested:Z

    .line 159
    sput-boolean v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsimChecked:Z

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "310120"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "316010"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->SPRINT_NETWORKLIST:Ljava/util/ArrayList;

    .line 244
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    .line 1826
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 250
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 124
    const-string v0, "IccCardProxy"

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 144
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 188
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 189
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccFailRegistrants:Landroid/os/RegistrantList;

    .line 197
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 200
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    .line 201
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 203
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 204
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 205
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 206
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 207
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 208
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 209
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 212
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 213
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 224
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    .line 225
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 233
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimNotifyState:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    .line 235
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2045
    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    .line 252
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 256
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 259
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/PhoneBase;->notifyIccCardProxyReady()V

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RIL_IccCardProxy-("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    .line 266
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 268
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 270
    invoke-interface {p2, p0, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    invoke-interface {p2, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 279
    :cond_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    const-string v1, "IccCardProxy Construct"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "cardIndex"    # I

    .prologue
    .line 290
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V

    .line 292
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 298
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 303
    :cond_0
    return-void
.end method

.method private HandleDetectedState()V
    .locals 0

    .prologue
    .line 981
    return-void
.end method

.method private getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1337
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1350
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 1338
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 1339
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1340
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1341
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1342
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 1343
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 1344
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 1345
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 1347
    :pswitch_8
    const-string v0, "ICC_FAIL"

    goto :goto_0

    .line 1348
    :pswitch_9
    const-string v0, "IMEI_LOCK"

    goto :goto_0

    .line 1337
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method private getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1359
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1365
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1360
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 1361
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 1362
    :pswitch_3
    const-string v0, "NETWORK"

    goto :goto_0

    .line 1363
    :pswitch_4
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 1364
    :pswitch_5
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 1359
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 2723
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v0

    .line 2724
    .local v0, "subId":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p1, v2, v3, p3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final isCdmaNvLTEOnSim()Z
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 1851
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "build_account_main_flag"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    .line 1852
    .local v0, "account_main_flag":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "radio_type"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1855
    :cond_1
    const/4 v1, 0x1

    .line 1857
    :cond_2
    return v1
.end method

.method private static final isCdmaSIMLockedMechanism()Z
    .locals 3

    .prologue
    .line 1873
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "is_cdma_sim_locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isGetMccMncFromUsimBeforeRuim()Z
    .locals 2

    .prologue
    .line 1877
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIsimAvailable()V
    .locals 4

    .prologue
    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TMO check ISIM ...checked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsimChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 986
    sget-boolean v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsimChecked:Z

    if-nez v2, :cond_1

    .line 987
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_0

    .line 988
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    .line 989
    .local v1, "mIsIsim":Z
    invoke-static {v1}, Lcom/android/internal/telephony/HtcIsimData;->SetHasISIM(Z)V

    .line 990
    if-nez v1, :cond_2

    .line 992
    const-string v2, "ISIM not avaliable"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 993
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.movial.gba_initialized"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 994
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1000
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mIsIsim":Z
    :cond_0
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsimChecked:Z

    .line 1002
    :cond_1
    return-void

    .line 997
    .restart local v1    # "mIsIsim":Z
    :cond_2
    const-string v2, "ISIM avaliable"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final isSprintUiccCustomization()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1861
    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v2, 0x62

    if-ne v1, v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1866
    :cond_1
    const/4 v0, 0x1

    .line 1868
    :cond_2
    return v0
.end method

.method public static final isforceUSIM()Z
    .locals 1

    .prologue
    .line 2745
    const/4 v0, 0x0

    return v0
.end method

.method public static final keepOperatorAlphaIsoWhenRadioOff()Z
    .locals 2

    .prologue
    .line 1888
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    return-void
.end method

.method private notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V
    .locals 11
    .param p1, "newstate"    # Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    .prologue
    .line 2346
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2348
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimNotifyState:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    if-eq v8, p1, :cond_0

    .line 2349
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2350
    .local v1, "context":Landroid/content/Context;
    const-string v8, "notification"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 2352
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    if-ne p1, v8, :cond_1

    .line 2354
    const v8, 0x30701ba

    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2392
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimNotifyState:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    .line 2398
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_1
    return-void

    .line 2356
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 2357
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 2358
    .local v7, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2359
    .local v0, "body":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2361
    .local v3, "iconId":I
    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardProxy$SIMStateNotification:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 2381
    :goto_2
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v8, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v4

    .line 2390
    .local v4, "notification":Landroid/app/Notification;
    const v8, 0x30701ba

    invoke-virtual {v5, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2394
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "iconId":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2395
    .local v2, "ex":Ljava/lang/RuntimeException;
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    const-string v9, "notifySIMState failed!!"

    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2363
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "body":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "iconId":I
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "res":Landroid/content/res/Resources;
    .restart local v7    # "title":Ljava/lang/String;
    :pswitch_0
    const v8, 0x30701bc

    :try_start_1
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2364
    const v8, 0x30701bd

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2365
    const v3, 0x30200b6

    .line 2366
    goto :goto_2

    .line 2368
    :pswitch_1
    const v8, 0x30701ba

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2369
    const v8, 0x30701bb

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2370
    const v3, 0x30200b8

    .line 2371
    goto :goto_2

    .line 2374
    :pswitch_2
    const v8, 0x30701be

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2375
    const v8, 0x30701bf

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2376
    const v3, 0x30200b6

    goto :goto_2

    .line 2361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onRecordsLoaded()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 874
    const-string v0, "LOADED"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 0

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 859
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 860
    return-void
.end method

.method private onSubscriptionDeactivated()V
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetProperties()V

    .line 864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/Subscription;

    .line 865
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    .line 866
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateStateProperty()V

    .line 867
    return-void
.end method

.method private processCDMASIMLock(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v3, 0x1

    .line 2481
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaSIMLockedMechanism()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPCS SIM newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SELECT_NETWORK_DONE_STATE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2483
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_1

    .line 2484
    sget v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    if-eq v1, v3, :cond_0

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPCS SIM setNetworkSelectionModeAutomatic (SELECT_NETWORK_DONE_STATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2486
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2488
    sput v3, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    .line 2500
    :cond_0
    :goto_0
    return-void

    .line 2491
    :cond_1
    sget v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    if-eqz v1, :cond_0

    .line 2493
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2494
    .local v0, "operatorNumeric":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPCS SIM  setNetworkSelectionModeManual (SELECT_NETWORK_DONE_STATE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2495
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6f

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 2496
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    goto :goto_0
.end method

.method private processCdmaNvLTEOnSim(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 14
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2403
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_7

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_7

    move v8, v10

    .line 2405
    .local v8, "transitionedIntoReady":Z
    :goto_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_0

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v12, :cond_1

    :cond_0
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_8

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_8

    :cond_1
    move v7, v10

    .line 2408
    .local v7, "transitionedIntoPinLocked":Z
    :goto_1
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_9

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_9

    move v4, v10

    .line 2410
    .local v4, "transitionedIntoNetworkLocked":Z
    :goto_2
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_a

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_a

    move v3, v10

    .line 2412
    .local v3, "transitionedIntoImeiLocked":Z
    :goto_3
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_b

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_b

    move v2, v10

    .line 2414
    .local v2, "transitionedIntoIccFail":Z
    :goto_4
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_c

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_c

    move v6, v10

    .line 2416
    .local v6, "transitionedIntoPermBlocked":Z
    :goto_5
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_d

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_d

    move v1, v10

    .line 2418
    .local v1, "transitionedIntoAbsent":Z
    :goto_6
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_e

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_e

    move v5, v10

    .line 2420
    .local v5, "transitionedIntoNotReady":Z
    :goto_7
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v13, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v12, v13, :cond_f

    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_f

    move v9, v10

    .line 2423
    .local v9, "transitionedIntoUnknown":Z
    :goto_8
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2425
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v12

    if-ne v12, v10, :cond_3

    .line 2427
    if-nez v8, :cond_2

    if-nez v7, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-nez v6, :cond_2

    if-nez v5, :cond_2

    if-eqz v9, :cond_10

    .line 2429
    :cond_2
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    .line 2455
    :cond_3
    :goto_9
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    if-eqz v9, :cond_6

    .line 2458
    :cond_4
    iget-boolean v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v12, v10, :cond_5

    .line 2459
    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 2464
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2465
    const/4 v10, 0x0

    invoke-virtual {p0, v11, v10}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetSIMPropertyToDefault(ZLjava/lang/String;)V

    .line 2471
    :cond_6
    return-object p1

    .end local v1    # "transitionedIntoAbsent":Z
    .end local v2    # "transitionedIntoIccFail":Z
    .end local v3    # "transitionedIntoImeiLocked":Z
    .end local v4    # "transitionedIntoNetworkLocked":Z
    .end local v5    # "transitionedIntoNotReady":Z
    .end local v6    # "transitionedIntoPermBlocked":Z
    .end local v7    # "transitionedIntoPinLocked":Z
    .end local v8    # "transitionedIntoReady":Z
    .end local v9    # "transitionedIntoUnknown":Z
    :cond_7
    move v8, v11

    .line 2403
    goto/16 :goto_0

    .restart local v8    # "transitionedIntoReady":Z
    :cond_8
    move v7, v11

    .line 2405
    goto/16 :goto_1

    .restart local v7    # "transitionedIntoPinLocked":Z
    :cond_9
    move v4, v11

    .line 2408
    goto/16 :goto_2

    .restart local v4    # "transitionedIntoNetworkLocked":Z
    :cond_a
    move v3, v11

    .line 2410
    goto/16 :goto_3

    .restart local v3    # "transitionedIntoImeiLocked":Z
    :cond_b
    move v2, v11

    .line 2412
    goto :goto_4

    .restart local v2    # "transitionedIntoIccFail":Z
    :cond_c
    move v6, v11

    .line 2414
    goto :goto_5

    .restart local v6    # "transitionedIntoPermBlocked":Z
    :cond_d
    move v1, v11

    .line 2416
    goto :goto_6

    .restart local v1    # "transitionedIntoAbsent":Z
    :cond_e
    move v5, v11

    .line 2418
    goto :goto_7

    .restart local v5    # "transitionedIntoNotReady":Z
    :cond_f
    move v9, v11

    .line 2420
    goto :goto_8

    .line 2431
    .restart local v9    # "transitionedIntoUnknown":Z
    :cond_10
    if-eqz v2, :cond_12

    .line 2432
    iget-boolean v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v12, v10, :cond_11

    .line 2433
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_ERROR_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    goto :goto_9

    .line 2435
    :cond_11
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    goto :goto_9

    .line 2438
    :cond_12
    sget-object v12, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v12, :cond_3

    .line 2439
    const-string v12, "ril.simlock"

    invoke-static {v12, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2440
    .local v0, "simlock":Z
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleIccCardStatus() simlock:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2441
    if-eqz v0, :cond_13

    .line 2442
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_LOCKED_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    goto :goto_9

    .line 2444
    :cond_13
    iget-boolean v12, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v12, v10, :cond_14

    .line 2445
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_ABSENT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    goto :goto_9

    .line 2447
    :cond_14
    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    goto/16 :goto_9
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 1282
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1283
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_0

    .line 1285
    monitor-exit v3

    .line 1310
    :goto_0
    return-void

    .line 1287
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 1288
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 1289
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1290
    monitor-exit v3

    goto :goto_0

    .line 1309
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1293
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 1294
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 1309
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 1296
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1297
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 1300
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processNAARecrodsLoaded()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 1900
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1902
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->useUiccIcon()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1903
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setUICCStatus()V

    .line 1909
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v7, :cond_2

    .line 1910
    const-string v3, ""

    .line 1911
    .local v3, "operatorNumeric":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1912
    .local v4, "operatorSpn":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1913
    .local v6, "slotId":I
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v7, v9, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1990
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Icc Operator:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", spn:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    .end local v3    # "operatorNumeric":Ljava/lang/String;
    .end local v4    # "operatorSpn":Ljava/lang/String;
    .end local v6    # "slotId":I
    :cond_2
    monitor-exit v8

    .line 1993
    return-void

    .line 1922
    .restart local v3    # "operatorNumeric":Ljava/lang/String;
    .restart local v4    # "operatorSpn":Ljava/lang/String;
    .restart local v6    # "slotId":I
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1924
    .local v5, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPhoneType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1940
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->searchIccOperatorNumeric([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v3

    .line 1941
    if-nez v3, :cond_4

    .line 1942
    const-string v3, ""

    .line 1945
    :cond_4
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->searchIccServiceProviderName([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v4

    .line 1946
    if-nez v4, :cond_5

    .line 1947
    const-string v4, ""

    .line 1951
    :cond_5
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1952
    .local v2, "needToUpdate":Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1953
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardProxy;->SPRINT_NETWORKLIST:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1954
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1958
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1959
    const-string v7, "gsm.sim.operator.numeric"

    invoke-direct {p0, v7, v6, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1960
    const-string v1, ""

    .line 1961
    .local v1, "iso":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v10, :cond_7

    .line 1963
    invoke-direct {p0, v6, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateMccMncConfigurationForDefaultSubid(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1967
    const/4 v7, 0x0

    const/4 v9, 0x3

    :try_start_1
    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1976
    :cond_7
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->keepOperatorAlphaIsoWhenRadioOff()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1977
    const-string v7, "gsm.sim.operator.iso-country"

    invoke-direct {p0, v7, v6, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1978
    if-eqz v4, :cond_1

    .line 1979
    const-string v7, "gsm.sim.operator.alpha"

    invoke-direct {p0, v7, v6, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1992
    .end local v1    # "iso":Ljava/lang/String;
    .end local v2    # "needToUpdate":Ljava/lang/Boolean;
    .end local v3    # "operatorNumeric":Ljava/lang/String;
    .end local v4    # "operatorSpn":Ljava/lang/String;
    .end local v5    # "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v6    # "slotId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1926
    .restart local v3    # "operatorNumeric":Ljava/lang/String;
    .restart local v4    # "operatorSpn":Ljava/lang/String;
    .restart local v5    # "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .restart local v6    # "slotId":I
    :pswitch_0
    :try_start_3
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 1927
    goto :goto_1

    .line 1931
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isGetMccMncFromUsimBeforeRuim()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1932
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_1

    .line 1934
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_1

    .line 1968
    .restart local v1    # "iso":Ljava/lang/String;
    .restart local v2    # "needToUpdate":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 1969
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1970
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1971
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "countryCodeForMcc error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1984
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v1    # "iso":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1985
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->resetSIMPropertyToDefault(ZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1924
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final queryOTAProvisionStatus()Z
    .locals 3

    .prologue
    .line 1893
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "query_ota_provision_status_after_sim_ready"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1078
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCardFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/16 v1, 0x69

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForSIMHotSwapStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/16 v1, 0x66

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForNAARedordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 1087
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1088
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1089
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1091
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x65

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2

    .line 1096
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1098
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1106
    :cond_2
    return-void
.end method

.method private static final retrySimTypeIfIccFail()Z
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method private searchIccIMSI([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 5
    .param p1, "searchTypes"    # [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 2652
    const/4 v2, 0x0

    .line 2653
    .local v2, "imsi":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    if-nez v2, :cond_4

    .line 2654
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardProxy;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2655
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 2656
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_2

    .line 2657
    aget-object v3, p1, v0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    .line 2658
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 2653
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2661
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCdmaIMSI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2664
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_0

    .line 2665
    aget-object v3, p1, v0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_3

    .line 2666
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2669
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGsmIMSI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2675
    :cond_4
    return-object v2
.end method

.method private searchIccServiceProviderName([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 4
    .param p1, "searchTypes"    # [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 2030
    const/4 v2, 0x0

    .line 2031
    .local v2, "operatorSpn":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    if-nez v2, :cond_1

    .line 2032
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2033
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 2034
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    .line 2031
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2037
    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    return-object v2
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 1314
    return-void
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1243
    const-string v0, "setExternalState: Card Index is not set; Return!!"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1244
    monitor-exit v1

    .line 1279
    :goto_0
    return-void

    .line 1252
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1254
    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v0, :cond_2

    .line 1255
    monitor-exit v1

    goto :goto_0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1257
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processCdmaNvLTEOnSim(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object p1

    .line 1268
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processCDMASIMLock(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 1270
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1271
    const-string v0, "gsm.sim.state"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_4

    .line 1276
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1278
    :cond_4
    monitor-exit v1

    goto :goto_0

    .line 1260
    :cond_5
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_3

    .line 1261
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1658
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v0

    .line 1659
    .local v0, "subId":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {p1, v2, v3, p3}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(Ljava/lang/String;JLjava/lang/String;)V

    .line 1660
    return-void
.end method

.method private setUICCStatus()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 2049
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    array-length v10, v10

    if-ge v4, v10, :cond_0

    .line 2050
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aput-boolean v13, v10, v4

    .line 2049
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2053
    :cond_0
    const/4 v1, 0x0

    .line 2054
    .local v1, "e_utran":Z
    const/4 v7, 0x0

    .line 2059
    .local v7, "provision":Z
    const/4 v2, 0x0

    .line 2060
    .local v2, "epsmmi":Z
    const/4 v3, 0x0

    .line 2063
    .local v3, "excpetion":Z
    const/4 v6, 0x0

    .line 2065
    .local v6, "operator":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v10, :cond_5

    .line 2066
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v10, v12}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v9

    .line 2067
    .local v9, "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v9, :cond_1

    .line 2068
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2069
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Support AID_USIM"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aput-boolean v12, v10, v12

    .line 2071
    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 2072
    .local v5, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_1

    instance-of v10, v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v10, :cond_1

    .line 2073
    iget-boolean v1, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mEUTRAN:Z

    .line 2075
    iget-boolean v2, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mEPSMMI:Z

    .line 2076
    iget-boolean v3, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mEUTRAN_excpetion:Z

    .line 2078
    check-cast v5, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v5    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2083
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2084
    .local v0, "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_2

    .line 2085
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 2086
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Support AID_CSIM"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aput-boolean v12, v10, v13

    .line 2088
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v5

    .line 2089
    .restart local v5    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v5, :cond_2

    .line 2090
    instance-of v10, v5, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v10, :cond_2

    .line 2091
    iget-boolean v7, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mIMSI_M_Programmed:Z

    .line 2092
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2093
    check-cast v5, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v5    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2100
    :cond_2
    const/4 v8, 0x0

    .line 2101
    .local v8, "uicc_type":I
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aget-boolean v10, v10, v12

    if-ne v10, v12, :cond_6

    if-ne v1, v12, :cond_6

    .line 2102
    const/4 v8, 0x2

    .line 2115
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uicc_type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2118
    const-string v6, ""

    .line 2122
    :cond_4
    invoke-virtual {p0, v7, v8, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V

    .line 2127
    .end local v0    # "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v8    # "uicc_type":I
    .end local v9    # "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_5
    return-void

    .line 2103
    .restart local v0    # "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v8    # "uicc_type":I
    .restart local v9    # "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aget-boolean v10, v10, v13

    if-eq v10, v12, :cond_7

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->supportAID:[Z

    aget-boolean v10, v10, v12

    if-ne v10, v12, :cond_3

    .line 2107
    :cond_7
    if-nez v1, :cond_8

    if-ne v3, v12, :cond_8

    if-ne v2, v12, :cond_8

    .line 2108
    const/4 v8, 0x2

    goto :goto_1

    .line 2110
    :cond_8
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCardFailed(Landroid/os/Handler;)V

    .line 1112
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForSIMHotSwapStatus(Landroid/os/Handler;)V

    .line 1114
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForNAARedordsLoaded(Landroid/os/Handler;)V

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 1119
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 1120
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForNetworkLocked(Landroid/os/Handler;)V

    .line 1122
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForImeiLocked(Landroid/os/Handler;)V

    .line 1123
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1124
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 1125
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1133
    :cond_9
    return-void
.end method

.method private updateExternalState()V
    .locals 2

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v0, :cond_1

    .line 1071
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1013
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_3

    .line 1020
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    if-eqz v0, :cond_2

    .line 1021
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1023
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_4

    .line 1031
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1035
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_5

    .line 1036
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1040
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1042
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1045
    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    goto :goto_0

    .line 1068
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateIccAvailability()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    .line 878
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 879
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 880
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 881
    .local v7, "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    const/4 v1, 0x0

    .line 882
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v4, 0x0

    .line 883
    .local v4, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 884
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v7

    .line 885
    iget v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 886
    if-eqz v1, :cond_a

    .line 887
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 900
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v10, v4, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v10, v1, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v10, v2, :cond_4

    .line 901
    :cond_1
    const-string v10, "Icc changed. Reregestering."

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    .line 904
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v10, :cond_2

    .line 905
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 908
    :cond_2
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 909
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 910
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 911
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    .line 913
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v10, :cond_3

    .line 914
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v10, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 918
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 919
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isIsimAvailable()V

    .line 925
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 926
    const/4 v6, 0x0

    .line 927
    .local v6, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-boolean v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-nez v10, :cond_5

    .line 928
    iget v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v10, v8, :cond_c

    .line 929
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 938
    :cond_5
    :goto_1
    const/4 v3, 0x0

    .line 939
    .local v3, "newImsiRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v6, :cond_6

    .line 940
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v8, v6

    if-ge v0, v8, :cond_6

    .line 941
    aget-object v8, v6, v0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 942
    if-eqz v3, :cond_e

    .line 946
    .end local v0    # "i":I
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eq v8, v3, :cond_8

    .line 947
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v8, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 949
    :cond_7
    if-eqz v3, :cond_8

    .line 950
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 951
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v8, p0, v10, v11}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 958
    .end local v3    # "newImsiRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V

    .line 961
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 962
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    new-instance v10, Landroid/os/AsyncResult;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v10}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 966
    :cond_9
    monitor-exit v9

    .line 967
    return-void

    .line 890
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->useAlternateRecordsIfneeded()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 891
    iget v10, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v10, v8, :cond_b

    const/4 v5, 0x2

    .line 892
    .local v5, "searchAppType":I
    :goto_3
    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 893
    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    goto/16 :goto_0

    .end local v5    # "searchAppType":I
    :cond_b
    move v5, v8

    .line 891
    goto :goto_3

    .line 931
    .restart local v6    # "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isGetMccMncFromUsimBeforeRuim()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 932
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_1

    .line 934
    :cond_d
    sget-object v6, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_1

    .line 940
    .restart local v0    # "i":I
    .restart local v3    # "newImsiRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 966
    .end local v0    # "i":I
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newImsiRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v4    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    .end local v6    # "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .end local v7    # "state":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method private updateMccMncConfigurationForDefaultSubid(ILjava/lang/String;)V
    .locals 7
    .param p1, "soltId"    # I
    .param p2, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2728
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v0

    .line 2730
    .local v0, "subId":[J
    aget-wide v2, v0, v6

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update mccmnc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " config for default subscription."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2732
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v6}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 2734
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    aget-wide v2, v0, v6

    invoke-virtual {v1, p2, v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;J)I

    .line 2735
    return-void
.end method

.method private updateQuietMode()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 359
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 360
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 362
    .local v3, "oldQuietMode":Z
    const/4 v0, -0x1

    .line 363
    .local v0, "cdmaSource":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 368
    .local v1, "isLteOnCdmaMode":Z
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v7

    if-ne v7, v5, :cond_2

    .line 370
    const/4 v2, 0x0

    .line 371
    .local v2, "newQuietMode":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 395
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-nez v7, :cond_9

    if-ne v2, v5, :cond_9

    .line 398
    const-string v5, "Switching to QuietMode."

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 400
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 405
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 406
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 407
    .local v4, "tempState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 408
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 433
    .end local v4    # "tempState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_0
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuietMode: QuietMode is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " (app_type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isLteOnCdmaMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " cdmaSource="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 437
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 438
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 439
    monitor-exit v6

    .line 440
    return-void

    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    :cond_1
    move v1, v2

    .line 363
    goto/16 :goto_0

    .line 373
    .restart local v1    # "isLteOnCdmaMode":Z
    :cond_2
    if-eqz v1, :cond_3

    .line 377
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isforceUSIM()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 378
    const-string v7, "updateQuietMode: is cdma/lte device, force IccCardProxy into 3gpp mode"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 379
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 383
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 389
    :goto_3
    if-ne v0, v5, :cond_4

    iget v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-ne v0, v5, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    move v2, v5

    .restart local v2    # "newQuietMode":Z
    :cond_6
    goto/16 :goto_1

    .line 383
    .end local v2    # "newQuietMode":Z
    :cond_7
    const/4 v0, -0x1

    goto :goto_3

    .line 410
    .restart local v2    # "newQuietMode":Z
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_2

    .line 439
    .end local v0    # "cdmaSource":I
    .end local v1    # "isLteOnCdmaMode":Z
    .end local v2    # "newQuietMode":Z
    .end local v3    # "oldQuietMode":Z
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 414
    .restart local v0    # "cdmaSource":I
    .restart local v1    # "isLteOnCdmaMode":Z
    .restart local v2    # "newQuietMode":Z
    .restart local v3    # "oldQuietMode":Z
    :cond_9
    :try_start_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v7, v5, :cond_0

    if-nez v2, :cond_0

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 419
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 423
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 424
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 425
    .restart local v4    # "tempState":Lcom/android/internal/telephony/IccCardConstants$State;
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 426
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_2

    .line 428
    .end local v4    # "tempState":Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 1137
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 1138
    return-void
.end method

.method private useAlternateRecordsIfneeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2741
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWorldPhoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final useUiccIcon()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1834
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "uicc_icon"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public broadcastExtraIccStateChangedIntent(ZILjava/lang/String;)V
    .locals 3
    .param p1, "provisioned"    # Z
    .param p2, "uicc_type"    # I
    .param p3, "operator"    # Ljava/lang/String;

    .prologue
    .line 2132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EXTRA_SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2133
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2134
    const-string v1, "POVISIONED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2135
    const-string v1, "ICC_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2137
    const-string v1, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_EXTRA_SIM_STATE_CHANGED provisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uicc_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2142
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2144
    return-void
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1144
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1145
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 1146
    const-string v2, "broadcastIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 1147
    monitor-exit v3

    .line 1238
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "READY"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1174
    monitor-exit v3

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1178
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1179
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mModemResetPeriod:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "NOT_READY"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UNKNOWN"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1182
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "silent reset mode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1184
    monitor-exit v3

    goto/16 :goto_0

    .line 1190
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportRemoteSIMunlock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1191
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 1201
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_5

    .line 1203
    const-string v2, "phoneName"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1208
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v4, :cond_6

    .line 1209
    const-string v2, "realIccState"

    const-string v4, "PERM_DISABLED"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1217
    :cond_5
    :goto_1
    const-string v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1218
    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1220
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1224
    const-string v2, "IccStatusInfo"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getDetailIccStatus()[I

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1228
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "operator":Ljava/lang/String;
    :goto_2
    const-string v2, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1231
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " reason "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for mCardIndex : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1234
    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v4, -0x1

    invoke-static {v0, v2, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1237
    monitor-exit v3

    goto/16 :goto_0

    .line 1211
    .end local v1    # "operator":Ljava/lang/String;
    :cond_6
    const-string v2, "realIccState"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRealExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1228
    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1613
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1614
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1615
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1622
    :cond_0
    monitor-exit v2

    .line 1623
    :goto_0
    return-void

    .line 1616
    :cond_1
    if-eqz p3, :cond_0

    .line 1617
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1619
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1620
    monitor-exit v2

    goto :goto_0

    .line 1622
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1599
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1600
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1601
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1608
    :cond_0
    monitor-exit v2

    .line 1609
    :goto_0
    return-void

    .line 1602
    :cond_1
    if-eqz p3, :cond_0

    .line 1603
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1604
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1605
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1606
    monitor-exit v2

    goto :goto_0

    .line 1608
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "passwd"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2220
    return-void
.end method

.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6d

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccCloseChannel(ILandroid/os/Message;)V

    .line 2186
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 310
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    const-string v0, "Disposing"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 319
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    .line 328
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIMSIIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 332
    :cond_1
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAbsentRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAbsentRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1679
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1680
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1684
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mNetworkLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNetworkLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1685
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1689
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSSM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRadioOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mQuietMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1701
    return-void
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 10
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2175
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x6b

    move-object/from16 v0, p8

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccExchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 2177
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 11
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2189
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v2, 0x6e

    move-object/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    move v2, p2

    move v3, p1

    move-object/from16 v4, p6

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2191
    return-void
.end method

.method public getCdmaIMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2700
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2701
    .local v1, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_1

    .line 2702
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2703
    .local v0, "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    .line 2704
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_2

    .line 2705
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2710
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->searchIccIMSI([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaIMSI:Ljava/lang/String;

    .line 2711
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaIMSI:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2712
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaIMSI:Ljava/lang/String;

    .line 2714
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaIMSI mCdmaIMSI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2717
    .end local v0    # "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaIMSI:Ljava/lang/String;

    return-object v2

    .line 2708
    .restart local v0    # "csimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getDetailIccStatus()[I
    .locals 2

    .prologue
    .line 2251
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2252
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getDetailIccStatus()[I

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    goto :goto_0

    .line 2253
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGsmIMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2679
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2680
    .local v0, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_1

    .line 2681
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 2682
    .local v1, "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v1, :cond_1

    .line 2683
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v2, v3, :cond_2

    .line 2684
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2689
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->searchIccIMSI([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mGsmIMSI:Ljava/lang/String;

    .line 2690
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mGsmIMSI:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2691
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mGsmIMSI:Ljava/lang/String;

    .line 2693
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmIMSI mGsmIMSI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mGsmIMSI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2696
    .end local v1    # "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mGsmIMSI:Ljava/lang/String;

    return-object v2

    .line 2687
    .restart local v1    # "usimapp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 1554
    .local v0, "retValue":Z
    :goto_0
    return v0

    .line 1553
    .end local v0    # "retValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1546
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1548
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1546
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1549
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1387
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 1390
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2
    .param p1, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1806
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1807
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 1808
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 1810
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1812
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 1535
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1537
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1539
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1537
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1540
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccOperatorNumeric(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 3
    .param p1, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1997
    const/4 v1, 0x0

    .line 1999
    .local v1, "operatorNumeric":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 2000
    .local v0, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 2001
    instance-of v2, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v2, :cond_1

    .line 2002
    check-cast v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v0    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 2007
    :cond_0
    :goto_0
    return-object v1

    .line 2003
    .restart local v0    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    instance-of v2, v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v2, :cond_0

    .line 2004
    check-cast v0, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v0    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 2

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2150
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 2151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccPhoneType()I
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 1

    .prologue
    .line 2206
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 1559
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1560
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1559
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 1

    .prologue
    .line 2213
    const/4 v0, 0x0

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 1565
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1566
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 1565
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1380
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 1381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2
    .param p1, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1816
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1817
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    monitor-exit v1

    .line 1820
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecords([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 4
    .param p1, "searchTypes"    # [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 2599
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2600
    const/4 v1, 0x0

    .line 2601
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 2602
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2603
    if-eqz v1, :cond_1

    .line 2607
    :cond_0
    monitor-exit v3

    return-object v1

    .line 2601
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2608
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1322
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getNAARecordsLoaded()Z

    move-result v0

    monitor-exit v1

    .line 1332
    :goto_0
    return v0

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1333
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1332
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPreferredSearchtype()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2576
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2577
    .local v0, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2578
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2579
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2594
    :cond_0
    :goto_0
    return-object v0

    .line 2580
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2581
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0

    .line 2584
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2585
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0

    .line 2586
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2587
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isGetMccMncFromUsimBeforeRuim()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2588
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0

    .line 2590
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0
.end method

.method public getRecordsLoaded()Z
    .locals 1

    .prologue
    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1627
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 1631
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1373
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v1

    return-object v0

    .line 1374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getSubsidyLock()I
    .locals 2

    .prologue
    .line 1708
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1709
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSubsidyLock()I

    move-result v0

    monitor-exit v1

    .line 1712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 2
    .param p1, "querySetting"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1718
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1719
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getSubsidyLock(ILandroid/os/Message;)V

    .line 1725
    :goto_0
    monitor-exit v1

    .line 1726
    return-void

    .line 1723
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->getSubsidyLock(ILandroid/os/Message;)V

    goto :goto_0

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 450
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    sparse-switch v19, :sswitch_data_0

    .line 850
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unhandled message with number: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 453
    :sswitch_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v19

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/HtcBuildUtils;->isNFCEnabled(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 460
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v19

    if-nez v19, :cond_1

    .line 461
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 464
    :cond_1
    sget-object v19, Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;->CARD_INIT_NOTIFICATION:Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->notifySIMState(Lcom/android/internal/telephony/uicc/IccCardProxy$SIMStateNotification;)V

    .line 476
    :cond_2
    const/16 v19, -0x1

    sput v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->SELECT_NETWORK_DONE_STATE:I

    goto :goto_0

    .line 502
    :sswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 522
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 527
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 532
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 533
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 535
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->OTARequested:Z

    .line 539
    sget-boolean v19, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    if-eqz v19, :cond_3

    .line 540
    const-string v19, "ril.simlock"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 541
    .local v13, "simlock":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_ICC_ABSENT simlock:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 543
    if-eqz v13, :cond_3

    .line 544
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->showNonCustomer4GSIMDialog()V

    .line 548
    .end local v13    # "simlock":Z
    :cond_3
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    .line 550
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setNoSIMProperities()V

    goto/16 :goto_0

    .line 556
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    goto/16 :goto_0

    .line 560
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 561
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->dropSimPbkEntries()V

    .line 565
    :cond_4
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    sget-boolean v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->OTARequested:Z

    if-nez v19, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->queryOTAProvisionStatus()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 568
    const-string v19, "ota_status:requestOTAProvisionStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x6a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->requestOTAProvisionStatus(Landroid/os/Message;)V

    .line 575
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCdmaNvLTEOnSim()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 576
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 582
    :goto_1
    new-instance v19, Lcom/android/internal/telephony/SimIdentify;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/SimIdentify;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    goto/16 :goto_0

    .line 565
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 578
    :cond_6
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 586
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 588
    .local v9, "operator":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 590
    .local v14, "slotId":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "operator = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " slotId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 593
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 595
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "update icc_operator_numeric="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 597
    const-string v19, "gsm.sim.operator.numeric"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 599
    const/16 v19, 0x0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, "countryCode":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 601
    const-string v19, "gsm.sim.operator.iso-country"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 608
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[J

    move-result-object v16

    .line 610
    .local v16, "subId":[J
    const/16 v19, 0x0

    aget-wide v20, v16, v19

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-nez v19, :cond_7

    .line 611
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "update mccmnc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " config for default subscription."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v9, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 614
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v19

    const/16 v20, 0x0

    aget-wide v20, v16, v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;J)I

    .line 621
    .end local v5    # "countryCode":Ljava/lang/String;
    .end local v16    # "subId":[J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v10

    .line 622
    .local v10, "operatorSpn":Ljava/lang/String;
    if-nez v10, :cond_8

    .line 623
    const-string v10, ""

    .line 625
    :cond_8
    const-string v19, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v14, v10}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 631
    .end local v9    # "operator":Ljava/lang/String;
    .end local v10    # "operatorSpn":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v19

    if-nez v19, :cond_d

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    const/16 v20, 0x1f7

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 640
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v19

    const-string v20, "support_lte"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v17

    .line 642
    .local v17, "supportLTE":Z
    sget v19, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v20, 0x1b

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget v19, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v20, 0x1c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    :cond_a
    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v19

    if-nez v19, :cond_0

    goto/16 :goto_0

    .line 604
    .end local v17    # "supportLTE":Z
    .restart local v5    # "countryCode":Ljava/lang/String;
    .restart local v9    # "operator":Ljava/lang/String;
    .restart local v14    # "slotId":I
    :cond_b
    const-string v19, "EVENT_RECORDS_LOADED Country code is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 616
    .end local v5    # "countryCode":Ljava/lang/String;
    :cond_c
    const-string v19, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 635
    .end local v9    # "operator":Ljava/lang/String;
    .end local v14    # "slotId":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto :goto_4

    .line 655
    :sswitch_7
    const-string v19, "IMSI"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 658
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 659
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 662
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    goto/16 :goto_0

    .line 665
    :sswitch_a
    const-string v19, "EVENT_SUBSCRIPTION_ACTIVATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 666
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionActivated()V

    goto/16 :goto_0

    .line 670
    :sswitch_b
    const-string v19, "EVENT_SUBSCRIPTION_DEACTIVATED"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 671
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onSubscriptionDeactivated()V

    goto/16 :goto_0

    .line 675
    :sswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 677
    .restart local v14    # "slotId":I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 678
    .local v4, "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 679
    .local v6, "eventCode":I
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    .line 680
    const-string v19, "gsm.sim.operator.alpha"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v14, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 687
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v6    # "eventCode":I
    .end local v14    # "slotId":I
    :sswitch_d
    const-string v19, "EVENT_CARRIER_PRIVILEGES_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    if-eqz v19, :cond_e

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;)V

    .line 691
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 696
    :sswitch_e
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->retrySimTypeIfIccFail()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    const/16 v20, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getSimTypes(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 699
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccFailRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 700
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 705
    :sswitch_f
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->retrySimTypeIfIccFail()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 706
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 707
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 708
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in getting ICC Type with exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 718
    :goto_5
    const-string v19, "Notify SIM failure after getting ICC Type."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccFailRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 720
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 710
    :cond_10
    iget-object v12, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/CommandsInterface$SimTypes;

    .line 712
    .local v12, "simTypes":Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :try_start_2
    const-string v19, "gsm.sim.types"

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v19, "gsm.sim.numeric.types"

    invoke-virtual {v12}, Lcom/android/internal/telephony/CommandsInterface$SimTypes;->ordinal()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 714
    :catch_0
    move-exception v7

    .line 715
    .local v7, "exc":Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in getting ICC Type: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_5

    .line 725
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "exc":Ljava/lang/Exception;
    .end local v12    # "simTypes":Lcom/android/internal/telephony/CommandsInterface$SimTypes;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 726
    sget-object v19, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto/16 :goto_0

    .line 730
    :sswitch_11
    const-string v19, "EVENT_ALL_NAA_RECORDS_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processNAARecrodsLoaded()V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/uicc/UiccCard;->areCarrierPriviligeRulesLoaded()Z

    move-result v19

    if-nez v19, :cond_11

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v19, v0

    const/16 v20, 0x1f7

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForCarrierPrivilegeRulesLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 737
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->onRecordsLoaded()V

    goto/16 :goto_0

    .line 742
    :cond_12
    sget-boolean v19, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    if-eqz v19, :cond_14

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SimIdentify;->processCTLTECardIdentify()V

    .line 747
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->showNonCustomer4GSIMDialog()V

    .line 751
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 752
    .local v8, "intent":Landroid/content/Intent;
    const-string v19, "com.htc.intent.action.sim_records_all_loaded"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v8, v0}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 754
    const-string v19, "android.permission.READ_PHONE_STATE"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v8, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 756
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/SimIdentify;->processDualCardIdentify()V

    goto/16 :goto_0

    .line 765
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 766
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string v19, "EVENT_GET_OTA_MSG_PROVISION_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 767
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 768
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, [I

    move-object/from16 v11, v19

    check-cast v11, [I

    .line 769
    .local v11, "otaStatus":[I
    if-eqz v11, :cond_0

    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 770
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "request ota status: ar.result[0]:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v11, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 771
    const/16 v19, 0x1

    sput-boolean v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->OTARequested:Z

    .line 772
    const/16 v19, 0x0

    aget v19, v11, v19

    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_15

    const/16 v18, 0x1

    .line 773
    .local v18, "value":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "ota_required"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 772
    .end local v18    # "value":I
    :cond_15
    const/16 v18, 0x0

    goto :goto_6

    .line 780
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v11    # "otaStatus":[I
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 781
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    const-string v19, "EVENT_ICC_HOT_SWAP_STATUS"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 782
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    .line 783
    iget-object v15, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 784
    .local v15, "status":Ljava/lang/String;
    const-string v19, "ICC_HOT_SWAP_ABSENT"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 786
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->OTARequested:Z

    .line 788
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    .line 791
    :cond_16
    const-string v19, "ICC_HOT_SWAP_INSERTED"

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 793
    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsimChecked:Z

    .line 796
    :cond_17
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 804
    .end local v4    # "ar":Landroid/os/AsyncResult;
    .end local v15    # "status":Ljava/lang/String;
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 805
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_18

    .line 806
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error in SIM access with exception"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 808
    :cond_18
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-static/range {v19 .. v21}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 809
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 814
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_15
    const-string v19, "MPCS SIM EVENT_MANUAL_SELECT_NETWORK_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 818
    :sswitch_16
    const-string v19, "MPCS SIM EVENT_AUTO_SELECT_NETWORK_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 827
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    if-nez v4, :cond_19

    .line 828
    const-string v19, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED AsyncResult is null."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 831
    :cond_19
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1a

    .line 832
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED AsyncResult has exception "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 836
    :cond_1a
    const-string v19, "EVENT_REQUEST_CLEAR_AVOID_NETWORK_COMPLETED"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    .end local v4    # "ar":Landroid/os/AsyncResult;
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 843
    .restart local v4    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 844
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    invoke-static/range {v19 .. v19}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v19

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 845
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/Message;

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xb -> :sswitch_9
        0x64 -> :sswitch_e
        0x65 -> :sswitch_10
        0x66 -> :sswitch_11
        0x68 -> :sswitch_f
        0x69 -> :sswitch_13
        0x6a -> :sswitch_12
        0x6b -> :sswitch_14
        0x6c -> :sswitch_14
        0x6d -> :sswitch_14
        0x6e -> :sswitch_14
        0x6f -> :sswitch_15
        0x70 -> :sswitch_16
        0x71 -> :sswitch_18
        0x72 -> :sswitch_17
        0x1f4 -> :sswitch_c
        0x1f5 -> :sswitch_a
        0x1f6 -> :sswitch_b
        0x1f7 -> :sswitch_d
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 1645
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1649
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardFail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    .line 1653
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1637
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1638
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1639
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1638
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1640
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCTDualCard()Z
    .locals 1

    .prologue
    .line 2622
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    if-nez v0, :cond_0

    .line 2623
    const/4 v0, 0x0

    .line 2624
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimIdentify;->isCTDualCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isCTLTESIMCard()Z
    .locals 1

    .prologue
    .line 2615
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    if-nez v0, :cond_0

    .line 2616
    const/4 v0, 0x0

    .line 2617
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimIdentify;->isCTLTESIMCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isDualCard()Z
    .locals 1

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    if-nez v0, :cond_0

    .line 2629
    const/4 v0, 0x0

    .line 2630
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mSimIdentify:Lcom/android/internal/telephony/SimIdentify;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimIdentify;->isDualCard()Z

    move-result v0

    goto :goto_0
.end method

.method public isReportImsiFromMe(Lcom/android/internal/telephony/uicc/IccRecords;)Z
    .locals 7
    .param p1, "icc"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2527
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 2528
    const-string v3, "Should call isReportImsiFromMe() API in main thread, return false"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 2572
    :cond_0
    :goto_0
    return v4

    .line 2531
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v5, :cond_0

    .line 2532
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 2533
    instance-of v5, p1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 2534
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 2535
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2536
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eq v5, v3, :cond_0

    .line 2539
    instance-of v5, p1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v5, :cond_4

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    .line 2542
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2543
    .local v2, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v5, v3, :cond_7

    .line 2544
    invoke-static {}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isSprintUiccCustomization()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2545
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 2557
    :goto_3
    const/4 v1, 0x0

    .line 2558
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v5, v2

    if-ge v0, v5, :cond_6

    .line 2559
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v5, :cond_6

    .line 2560
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2564
    if-eqz v1, :cond_9

    .line 2566
    :cond_6
    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_0

    .line 2550
    .end local v0    # "i":I
    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isGetMccMncFromUsimBeforeRuim()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2551
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_BEFORE_RUIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_3

    .line 2553
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_BEFORE_USIM_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_3

    .line 2558
    .restart local v0    # "i":I
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public isSim()Z
    .locals 1

    .prologue
    .line 2239
    const/4 v0, 0x0

    return v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6c

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->iccOpenChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 2181
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1399
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1400
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1402
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 1405
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1407
    :cond_0
    monitor-exit v2

    .line 1408
    return-void

    .line 1407
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForIccFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1745
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1746
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1748
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1750
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isIccFail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1751
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1753
    :cond_0
    monitor-exit v2

    .line 1754
    return-void

    .line 1753
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForImeiLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1763
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1764
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1766
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1768
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isImeiLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1771
    :cond_0
    monitor-exit v2

    .line 1772
    return-void

    .line 1771
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1445
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1446
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1448
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1453
    :cond_0
    monitor-exit v2

    .line 1454
    return-void

    .line 1453
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1422
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1423
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1425
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1427
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 1428
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 1430
    :cond_0
    monitor-exit v2

    .line 1431
    return-void

    .line 1430
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2508
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2509
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2511
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 2513
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 2514
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 2516
    :cond_0
    monitor-exit v2

    .line 2517
    return-void

    .line 2516
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1783
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1784
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1786
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1787
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1789
    :cond_0
    return-void
.end method

.method public registerForRecordsUpdated(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1796
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1797
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1798
    return-void
.end method

.method public requestISIMRead(IIIIILandroid/os/Message;)V
    .locals 7
    .param p1, "command"    # I
    .param p2, "field"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->requestISIMRead(IIIIILandroid/os/Message;)V

    .line 2162
    return-void
.end method

.method public requestQueryISIMSupported(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestQueryISIMSupported(Landroid/os/Message;)V

    .line 2158
    return-void
.end method

.method public requestResetWSIMState(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->requestResetWSIMState(Landroid/os/Message;)V

    .line 2170
    return-void
.end method

.method public requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 2165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->requestSetISIMAUTH(Ljava/lang/String;Landroid/os/Message;)V

    .line 2166
    return-void
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 970
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 971
    const-string v0, "update icc_operator_numeric="

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 972
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 973
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 974
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 976
    :cond_0
    return-void
.end method

.method protected resetSIMPropertyToDefault(ZLjava/lang/String;)V
    .locals 10
    .param p1, "isSprint"    # Z
    .param p2, "simnumeric"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 2284
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2286
    .local v7, "slotId":I
    const-string v8, "ro.cdma.home.operator.alpha"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2287
    .local v4, "operatorAlphaNV":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.alpha"

    invoke-direct {p0, v8, v7, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2288
    .local v3, "operatorAlpha":Ljava/lang/String;
    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2289
    const-string v8, "gsm.sim.operator.alpha"

    invoke-direct {p0, v8, v7, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2293
    :cond_0
    const-string v8, "ro.cdma.home.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2294
    .local v6, "operatorNumericNV":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric"

    invoke-direct {p0, v8, v7, v9}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2296
    .local v5, "operatorNumeric":Ljava/lang/String;
    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2297
    const-string v8, "gsm.sim.operator.numeric"

    invoke-direct {p0, v8, v7, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2299
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2300
    invoke-direct {p0, v7, v6}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateMccMncConfigurationForDefaultSubid(ILjava/lang/String;)V

    .line 2304
    :cond_1
    const-string v1, "us"

    .line 2305
    .local v1, "iso":Ljava/lang/String;
    if-eqz p1, :cond_4

    move-object v2, p2

    .line 2306
    .local v2, "isoNumeric":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2308
    const/4 v8, 0x0

    const/4 v9, 0x3

    :try_start_0
    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2315
    :cond_2
    :goto_1
    const-string v8, "gsm.sim.operator.iso-country"

    invoke-direct {p0, v8, v7, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2316
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPhoneType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 2317
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8, v6}, Lcom/android/internal/telephony/PhoneBase;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 2321
    :cond_3
    :goto_2
    return-void

    .end local v2    # "isoNumeric":Ljava/lang/String;
    :cond_4
    move-object v2, v6

    .line 2305
    goto :goto_0

    .line 2309
    .restart local v2    # "isoNumeric":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2310
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2311
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2312
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "countryCodeForMcc error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2318
    .end local v0    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccPhoneType()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 2319
    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->updateCurrentCarrierInProvider()Z

    goto :goto_2
.end method

.method public searchIccOperatorNumeric([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 4
    .param p1, "searchTypes"    # [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 2014
    const/4 v2, 0x0

    .line 2015
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    if-nez v2, :cond_2

    .line 2016
    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2017
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 2018
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_1

    .line 2019
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 2015
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2021
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_0

    .line 2022
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2026
    :cond_2
    return-object v2
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1585
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1586
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1587
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 1594
    :cond_0
    monitor-exit v2

    .line 1595
    :goto_0
    return-void

    .line 1588
    :cond_1
    if-eqz p3, :cond_0

    .line 1589
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1591
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1592
    monitor-exit v2

    goto :goto_0

    .line 1594
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1571
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1572
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1573
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 1580
    :cond_0
    monitor-exit v2

    .line 1581
    :goto_0
    return-void

    .line 1574
    :cond_1
    if-eqz p3, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1577
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1578
    monitor-exit v2

    goto :goto_0

    .line 1580
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setInvalidICCCard()V
    .locals 0

    .prologue
    .line 2247
    return-void
.end method

.method protected setNoSIMProperities()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2326
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2328
    .local v2, "slotId":I
    const-string v3, "gsm.sim.operator.alpha"

    invoke-direct {p0, v3, v2, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2329
    .local v0, "operatorAlpha":Ljava/lang/String;
    const-string v3, ""

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2330
    const-string v3, "gsm.sim.operator.alpha"

    const-string v4, ""

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2334
    :cond_0
    const-string v3, "gsm.sim.operator.numeric"

    invoke-direct {p0, v3, v2, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2336
    .local v1, "operatorNumeric":Ljava/lang/String;
    const-string v3, ""

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2337
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2340
    :cond_1
    const-string v3, "gsm.sim.operator.iso-country"

    const-string v4, "us"

    invoke-direct {p0, v3, v2, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setSystemProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 2341
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 2258
    .local v0, "oldphone":Lcom/android/internal/telephony/PhoneBase;
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 2260
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->notifyIccCardProxyReady()V

    .line 2261
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2262
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eq v1, v0, :cond_3

    .line 2263
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2264
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-eqz v1, :cond_2

    .line 2265
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->dispose()V

    .line 2266
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 2268
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2271
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_5

    .line 2272
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2273
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    if-nez v1, :cond_4

    .line 2274
    new-instance v1, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mDefaultIccPhoneBookInterfaceManager:Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    .line 2276
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2279
    :cond_5
    return-void

    .line 2268
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2276
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "subsidyType"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1730
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1731
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1740
    :goto_0
    monitor-exit v1

    .line 1741
    return-void

    .line 1735
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getSubsidyLock] subsidyType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x71

    invoke-virtual {p0, v2, p3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 344
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 349
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    .line 350
    monitor-exit v1

    .line 351
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public showNonCustomer4GSIMDialog()V
    .locals 4

    .prologue
    .line 2635
    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->isCTLTESIMCard()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2636
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_0

    .line 2638
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2639
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Not4GSimWarningDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2640
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2641
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2647
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2642
    :catch_0
    move-exception v0

    .line 2643
    .local v0, "activityNotFound":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1521
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1522
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    .line 1530
    :cond_0
    monitor-exit v2

    .line 1531
    :goto_0
    return-void

    .line 1524
    :cond_1
    if-eqz p2, :cond_0

    .line 1525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1527
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1528
    monitor-exit v2

    goto :goto_0

    .line 1530
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1465
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1466
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1467
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 1474
    :cond_0
    monitor-exit v2

    .line 1475
    :goto_0
    return-void

    .line 1468
    :cond_1
    if-eqz p2, :cond_0

    .line 1469
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1471
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1472
    monitor-exit v2

    goto :goto_0

    .line 1474
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1493
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1494
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1495
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 1502
    :cond_0
    monitor-exit v2

    .line 1503
    :goto_0
    return-void

    .line 1496
    :cond_1
    if-eqz p2, :cond_0

    .line 1497
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1499
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1500
    monitor-exit v2

    goto :goto_0

    .line 1502
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1479
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1480
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1481
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1488
    :cond_0
    monitor-exit v2

    .line 1489
    :goto_0
    return-void

    .line 1482
    :cond_1
    if-eqz p3, :cond_0

    .line 1483
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1485
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1486
    monitor-exit v2

    goto :goto_0

    .line 1488
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1507
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1508
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 1509
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1516
    :cond_0
    monitor-exit v2

    .line 1517
    :goto_0
    return-void

    .line 1510
    :cond_1
    if-eqz p3, :cond_0

    .line 1511
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1512
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1513
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1514
    monitor-exit v2

    goto :goto_0

    .line 1516
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2ViaATD()V
    .locals 0

    .prologue
    .line 2196
    return-void
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1414
    monitor-exit v1

    .line 1415
    return-void

    .line 1414
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForIccFail(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1758
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1759
    monitor-exit v1

    .line 1760
    return-void

    .line 1759
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForImeiLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1775
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1776
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mImeiLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1777
    monitor-exit v1

    .line 1778
    return-void

    .line 1777
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1458
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1459
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1460
    monitor-exit v1

    .line 1461
    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForNetworkLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1435
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mNetworkLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1437
    monitor-exit v1

    .line 1438
    return-void

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2520
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2521
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2522
    monitor-exit v1

    .line 2523
    return-void

    .line 2522
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1793
    return-void
.end method

.method public unregisterForRecordsUpdated(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->recordsUpdatedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1802
    return-void
.end method
