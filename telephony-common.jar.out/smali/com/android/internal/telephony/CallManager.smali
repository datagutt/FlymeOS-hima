.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$1;,
        Lcom/android/internal/telephony/CallManager$CallManagerHandler;,
        Lcom/android/internal/telephony/CallManager$SelfCallTracker;
    }
.end annotation


# static fields
.field public static final CS_ACTIVE:I = 0x1

.field public static final CS_ACTIVE_SESSION2:I = 0x100

.field public static final CS_HOLD:I = 0x2

.field public static final CS_HOLD_SESSION2:I = 0x200

.field public static final CS_INACTIVE:I = 0x0

.field public static final CS_INACTIVE_SESSION2:I = 0x0

.field private static final DBG:Z = true

.field private static final EVENT_CALL_MODIFY:I = 0x79

.field private static final EVENT_CALL_MODIFY_RESPONSE:I = 0x7a

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_LINECTRL_INFO:I = 0xc8

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_ONHOLD_TONE:I = 0x78

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_SUPP_SERVICE_NOTIFICATION:I = 0x3ea

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_VOICE_CONNECTED:I = 0x3e9

.field public static final IMS_ACTIVE:I = 0x10

.field public static final IMS_HOLD:I = 0x20

.field public static final IMS_INACTIVE:I = 0x0

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager;

.field private static IS_SGLTE_MODEM:Z = false

.field private static final LOCAL_MODEM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final MAX_IN_CALL_AUDIO_MODE_BIT:I = 0x7

.field private static final MODE2DDESCRIPTION:[Ljava/lang/String;

.field private static final PROPERTY_BASEBAND:Ljava/lang/String; = "ro.baseband.arch"

.field private static final PROPERTY_VOICE_MODEM_INDEX:Ljava/lang/String; = "persist.radio.voice.modem.index"

.field private static final REMOTE_MODEM:I = 0x1

.field private static final SDBG:Z = false

.field private static final SET_MODE_BEFORE_ANSWER:Z

.field private static final SGLTE:Ljava/lang/String; = "sglte"

.field private static final SGLTE_TYPE2:Ljava/lang/String; = "sglte2"

.field private static final SUPPORT_DISABLE_LOOPBACK_CALL_BY_PHONENUMBER:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

.field private static SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

.field private static final VDBG:Z

.field private static final mBaseband:Ljava/lang/String;

.field private static mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;


# instance fields
.field acceptRingingCall:Lcom/android/internal/telephony/Call;

.field private mAudioFocusEnabled:Z

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallConnectedRegistrants:Landroid/os/RegistrantList;

.field protected final mCallModifyRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field private mDualGSMtotalConnections:I

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mEmptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/CallManager$CallManagerHandler;",
            ">;"
        }
    .end annotation
.end field

.field mHasCsActiveCall:Z

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field protected final mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

.field private mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field private mNeedToHoldAfterRing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field protected final mOnHoldToneRegistrants:Landroid/os/RegistrantList;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field private mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field private mSpeedUpAudioForMtCall:Z

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    .line 123
    sput-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    .line 126
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sput-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_1

    :cond_1
    sput-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    .line 133
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    .line 140
    new-instance v0, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    .line 251
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v3, "set_mode_before_answer"

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    .line 4327
    const-string v0, "ro.baseband.arch"

    const-string v3, "msm"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    .line 4328
    const-string v0, "sglte"

    sget-object v3, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sglte2"

    sget-object v3, Lcom/android/internal/telephony/CallManager;->mBaseband:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->IS_SGLTE_MODEM:Z

    .line 4344
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "CS_ACTIVE"

    aput-object v3, v0, v1

    const-string v1, "CS_HOLD"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "<invalid-2>"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<invalid-3>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IMS_ACTIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "IMS_HOLD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<invalid-6>"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "<invalid-7>"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "CS_ACTIVE_SESSION2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "CS_HOLD_SESSION2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CallManager;->MODE2DDESCRIPTION:[Ljava/lang/String;

    return-void

    :cond_4
    move v0, v1

    .line 133
    goto :goto_0

    :cond_5
    move v0, v1

    .line 4328
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v3, p0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 119
    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->acceptRingingCall:Lcom/android/internal/telephony/Call;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    .line 163
    iput-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mSpeedUpAudioForMtCall:Z

    .line 166
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    .line 169
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    .line 172
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    .line 175
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    .line 178
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    .line 181
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    .line 184
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 187
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    .line 190
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    .line 193
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    .line 196
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    .line 199
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    .line 202
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    .line 205
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    .line 208
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    .line 211
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    .line 214
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    .line 217
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 220
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    .line 223
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    .line 226
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    .line 229
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    .line 232
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    .line 235
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    .line 238
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    .line 242
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    .line 246
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    .line 256
    new-instance v1, Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/CallManager$SelfCallTracker;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    .line 3172
    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3173
    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 4295
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    .line 4454
    iput-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    .line 270
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    .line 278
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 280
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    :try_start_0
    const-string v1, "gsm.slot1.audio.state"

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "gsm.slot2.audio.state"

    const-string v2, "off"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to set system property."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMTdetection()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->isDSDADevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/CallManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleHtcMessage(Landroid/os/Message;)V

    return-void
.end method

.method private avoidAutoChangeAudoiPath()Z
    .locals 3

    .prologue
    .line 4659
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "avoid_auto_change_audio_path"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 12
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 1650
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .line 1651
    .local v6, "serviceState":I
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v8

    .line 1652
    .local v8, "subId":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 1653
    .local v4, "hasRingingCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 1654
    .local v2, "hasActiveCall":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 1655
    .local v3, "hasHoldingCall":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v0, v7

    .line 1656
    .local v0, "allLinesTaken":Z
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1658
    .local v1, "fgCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v11, 0x3

    if-eq v6, v11, :cond_3

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v11, :cond_0

    sget-object v11, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v11, :cond_3

    :cond_0
    move v5, v7

    .line 1669
    .local v5, "result":Z
    :goto_1
    if-nez v5, :cond_1

    .line 1670
    const-string v7, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canDial serviceState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasRingingCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasActiveCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " hasHoldingCall="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " allLinesTaken="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " fgCallState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    :cond_1
    return v5

    .end local v0    # "allLinesTaken":Z
    .end local v1    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    .end local v5    # "result":Z
    :cond_2
    move v0, v10

    .line 1655
    goto :goto_0

    .restart local v0    # "allLinesTaken":Z
    .restart local v1    # "fgCallState":Lcom/android/internal/telephony/Call$State;
    :cond_3
    move v5, v10

    .line 1658
    goto :goto_1
.end method

.method private checkIsFgPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4473
    move-object v0, p1

    .line 4474
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 4475
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4477
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private getCdmaSetAudioModeBeforeRadioOperation()Z
    .locals 6

    .prologue
    .line 4151
    const/4 v1, 0x0

    .line 4152
    .local v1, "operationRequired":Z
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 4153
    const/4 v2, 0x0

    .line 4155
    .local v2, "operationResult":Ljava/lang/Boolean;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4157
    :goto_0
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force setAudioMode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4158
    if-eqz v2, :cond_0

    .line 4159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 4162
    .end local v2    # "operationResult":Ljava/lang/Boolean;
    :cond_0
    return v1

    .line 4156
    .restart local v2    # "operationResult":Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 724
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3043
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3044
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3048
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;
    .locals 4
    .param p2, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3055
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3056
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 3061
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3068
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3069
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 3073
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;
    .locals 5
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;
    .param p3, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            "J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 3081
    .local p1, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3082
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    .line 3088
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2662
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2663
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2664
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2670
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2666
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2667
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    move-object v0, v2

    .line 2670
    goto :goto_1
.end method

.method private getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;
    .locals 6
    .param p2, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;J)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .line 2676
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .line 2677
    .local v2, "result":Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 2678
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v3, :cond_0

    .line 2680
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2687
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .line 2682
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    .line 2683
    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_3
    move-object v0, v2

    .line 2687
    goto :goto_1
.end method

.method private getInCallAudioMode()I
    .locals 5

    .prologue
    .line 4456
    const/4 v1, 0x0

    .line 4457
    .local v1, "inCallMode":I
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 4458
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 4459
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v3, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v3, :cond_0

    .line 4460
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallManager;->inCallAudioModeForPhone(Lcom/android/internal/telephony/Phone;)I

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 4464
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    if-eqz v3, :cond_2

    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_2

    .line 4465
    const-string v3, "CallManager"

    const-string v4, "getInCallAudioMode set mode to CS_ACTIVE due to CSFB"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    const/4 v1, 0x1

    .line 4469
    :cond_2
    return v1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private getOffHookCall()Lcom/android/internal/telephony/Call;
    .locals 2

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4184
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 4193
    :goto_0
    return-object v1

    .line 4188
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4189
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 4190
    goto :goto_0

    .line 4193
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "p":Lcom/android/internal/telephony/Phone;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 361
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v3, :cond_0

    .line 362
    move-object v1, v2

    .line 366
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-object v1
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 310
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object p0

    .line 315
    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_0
.end method

.method private handleHtcMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4129
    :goto_0
    return-void

    .line 4123
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4126
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 4121
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hasActiveCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4372
    const/4 v1, 0x0

    .line 4380
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4381
    .local v0, "call":Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4384
    :goto_1
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasActiveCall("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    return v1

    .line 4380
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4381
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasHoldingCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4389
    const/4 v1, 0x0

    .line 4401
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4402
    .local v0, "call":Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 4405
    :goto_1
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasHoldingCall("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    return v1

    .line 4401
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4402
    .restart local v0    # "call":Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private hasMoreThanOneHoldingCall(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x1

    .line 3128
    const/4 v1, 0x0

    .line 3129
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3130
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 3133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3136
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3092
    const/4 v1, 0x0

    .line 3093
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3094
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3095
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3098
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasMoreThanOneRingingCall(J)Z
    .locals 7
    .param p1, "subId"    # J

    .prologue
    const/4 v3, 0x1

    .line 3109
    const/4 v1, 0x0

    .line 3110
    .local v1, "count":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .line 3111
    .local v0, "call":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    instance-of v4, v4, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v4, :cond_0

    .line 3114
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .line 3117
    .end local v0    # "call":Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3182
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_2

    .line 3185
    :cond_0
    if-eqz p1, :cond_2

    .line 3186
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3187
    .local v1, "ringPhoneIndex":I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 3188
    .local v0, "ringPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v3, :cond_1

    .line 3189
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answer ring call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    :cond_1
    const/4 v2, 0x0

    .line 3194
    .local v2, "setupPreEngadge":Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    .line 3195
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_2

    .line 3196
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3197
    const/4 v2, 0x1

    .line 3218
    .end local v0    # "ringPhone":Lcom/android/internal/telephony/Phone;
    .end local v1    # "ringPhoneIndex":I
    .end local v2    # "setupPreEngadge":Z
    :cond_2
    :goto_0
    return-void

    .line 3201
    .restart local v0    # "ringPhone":Lcom/android/internal/telephony/Phone;
    .restart local v1    # "ringPhoneIndex":I
    .restart local v2    # "setupPreEngadge":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_5

    .line 3202
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_4

    .line 3203
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3204
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3205
    const/4 v2, 0x1

    .line 3211
    :cond_4
    :goto_1
    if-eqz v2, :cond_2

    .line 3212
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3213
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_0

    .line 3209
    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private htcBlockLoopbackMTdetection()V
    .locals 0

    .prologue
    .line 3399
    return-void
.end method

.method private htcConnectionNumberMatch(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)Z
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 3287
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3288
    .local v0, "moNbr":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 3402
    const/4 v1, 0x0

    .line 3403
    .local v1, "value":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 3404
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3405
    .local v0, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    .line 3406
    new-instance v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 3409
    .end local v0    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    .line 3410
    new-instance v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 3412
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method private htcHangupAllDialingCalls(I)V
    .locals 7
    .param p1, "exceptCallIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3230
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3231
    if-eq v3, p1, :cond_1

    .line 3232
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 3233
    .local v2, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3234
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 3235
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 3236
    const/4 v0, 0x0

    .line 3237
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3238
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3240
    :cond_0
    if-nez v0, :cond_2

    .line 3242
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to hangup dialing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), except "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3245
    .restart local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_1

    .line 3249
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .line 3254
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_4
    return-void
.end method

.method private htcHangupLoopbackMTconnections(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;
    .param p3, "blockNumber"    # Ljava/lang/String;

    .prologue
    .line 3314
    const/4 v0, 0x0

    return-object v0
.end method

.method private htcMultiplePhoneSingleAudioCallChange(ZZ)V
    .locals 35
    .param p1, "onlyDisconnectConnection"    # Z
    .param p2, "onlyUnknownConnection"    # Z

    .prologue
    .line 3416
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v31, :cond_0

    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v31, :cond_48

    .line 3418
    :cond_0
    const/4 v4, 0x0

    .line 3420
    .local v4, "b":Ljava/lang/StringBuilder;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 3421
    .local v25, "ringingConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3422
    .local v5, "backgroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3424
    .local v18, "foregroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_1

    .line 3425
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "b":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3426
    .restart local v4    # "b":Ljava/lang/StringBuilder;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "State Change: isDisconnect= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ,isUnknown= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3430
    :cond_1
    const/16 v29, 0x0

    .line 3431
    .local v29, "totalGSMConnections":I
    const/16 v27, 0x0

    .line 3432
    .local v27, "totalCDMAConnections":I
    const/16 v30, 0x0

    .line 3435
    .local v30, "totalSubGSMConnections":I
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3438
    const/16 v28, 0x0

    .line 3439
    .local v28, "totalConnections":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    .line 3440
    .local v6, "basePhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_3

    .line 3441
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " ;;phoneType= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, " ,ring:bg:fg= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    :cond_3
    const/16 v24, 0x0

    .line 3444
    .local v24, "noConns":I
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3445
    .local v9, "conns":Ljava/lang/Integer;
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3446
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3447
    if-eqz v24, :cond_4

    .line 3448
    add-int/lit8 v28, v28, 0x1

    .line 3449
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    .line 3450
    add-int/lit8 v27, v27, 0x1

    .line 3457
    :cond_4
    :goto_1
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_5

    .line 3458
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3461
    :cond_5
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3462
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3463
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3464
    if-eqz v24, :cond_6

    .line 3465
    add-int/lit8 v28, v28, 0x1

    .line 3467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3469
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_c

    .line 3470
    add-int/lit8 v27, v27, 0x1

    .line 3477
    :cond_6
    :goto_2
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_7

    .line 3478
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3481
    :cond_7
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .line 3482
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3483
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 3484
    if-eqz v24, :cond_8

    .line 3485
    add-int/lit8 v28, v28, 0x1

    .line 3487
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    .line 3489
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 3490
    add-int/lit8 v27, v27, 0x1

    .line 3497
    :cond_8
    :goto_3
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_9

    .line 3498
    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3501
    :cond_9
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_2

    .line 3502
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, " ,isAudioOn= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 3451
    :cond_a
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 3452
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 3453
    :cond_b
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 3454
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 3471
    :cond_c
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    .line 3472
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    .line 3473
    :cond_d
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 3474
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_2

    .line 3491
    :cond_e
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_f

    .line 3492
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3

    .line 3493
    :cond_f
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v31

    const/16 v32, 0x1

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    .line 3494
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 3505
    .end local v6    # "basePhone":Lcom/android/internal/telephony/Phone;
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v24    # "noConns":I
    :cond_10
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_12

    .line 3506
    const-string v31, " ;;currentRingIndex= "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_11

    .line 3508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3510
    :cond_11
    const-string v31, " ,currectActiveIndex= "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_12

    .line 3512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3515
    :cond_12
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_13

    .line 3516
    const-string v31, " ,PendHold"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Boolean;

    .line 3518
    .local v23, "needHold":Ljava/lang/Boolean;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "-"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3521
    .end local v23    # "needHold":Ljava/lang/Boolean;
    :cond_13
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v31, :cond_14

    .line 3522
    const-string v31, "CallManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3526
    :cond_14
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3527
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalCDMAConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3528
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalGSMConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3529
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "totalSubGSMConnections= "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_15

    .line 3532
    if-nez v27, :cond_15

    .line 3533
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_1=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3538
    :cond_15
    if-nez v29, :cond_16

    .line 3539
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_1c

    .line 3540
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_2=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3541
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3547
    :cond_16
    :goto_5
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_17

    .line 3548
    if-nez v30, :cond_17

    .line 3549
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_2=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3560
    :cond_17
    :goto_6
    if-lez v28, :cond_43

    .line 3566
    const/4 v11, -0x1

    .line 3567
    .local v11, "currentPickUpIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    .line 3568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 3569
    if-gez v11, :cond_1d

    .line 3570
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3571
    const/4 v11, -0x2

    .line 3592
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_19

    if-gez v11, :cond_3f

    .line 3595
    :cond_19
    const/4 v10, -0x1

    .line 3596
    .local v10, "currActivePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1a

    .line 3597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3598
    if-gez v10, :cond_1a

    .line 3599
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3600
    const/4 v11, -0x2

    .line 3605
    :cond_1a
    const/16 v28, 0x0

    .line 3606
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1b
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_20

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3607
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_1b

    .line 3608
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 3543
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v10    # "currActivePhoneIndex":I
    .end local v11    # "currentPickUpIndex":I
    :cond_1c
    :try_start_1
    const-string v31, "CallManager"

    const-string v32, "MODE_IN_CALL_1=OFF"

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 3553
    :catch_0
    move-exception v13

    .line 3554
    .local v13, "ex":Ljava/lang/Exception;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "switch to Slot1/Slot2 audio path exception "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3574
    .end local v13    # "ex":Ljava/lang/Exception;
    .restart local v11    # "currentPickUpIndex":I
    :cond_1d
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_18

    .line 3575
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_1f

    .line 3576
    const/4 v10, -0x1

    .line 3577
    .restart local v10    # "currActivePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_1e

    .line 3578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3579
    if-eq v11, v10, :cond_1e

    .line 3580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3583
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3588
    .end local v10    # "currActivePhoneIndex":I
    :goto_9
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_7

    .line 3586
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_9

    .line 3611
    .restart local v10    # "currActivePhoneIndex":I
    :cond_20
    const/16 v26, 0x0

    .line 3612
    .local v26, "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .line 3613
    .local v3, "activePhoneIndex":I
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-le v0, v1, :cond_26

    .line 3615
    if-ltz v10, :cond_25

    .line 3616
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_24

    .line 3617
    move-object/from16 v26, v18

    .line 3656
    :cond_21
    :goto_a
    if-eqz v26, :cond_2d

    .line 3657
    const/16 v28, 0x0

    .line 3659
    const/16 v17, -0x1

    .line 3660
    .local v17, "firstPhoneActive":I
    const/16 v16, -0x1

    .line 3661
    .local v16, "firstConnActive":I
    const/16 v21, 0x0

    .local v21, "index":I
    :goto_b
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_2c

    .line 3662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 3663
    add-int/lit8 v28, v28, 0x1

    .line 3664
    if-gez v17, :cond_22

    .line 3665
    move/from16 v17, v21

    .line 3669
    :cond_22
    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3670
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_23

    .line 3671
    if-gez v16, :cond_23

    .line 3672
    move/from16 v16, v21

    .line 3661
    :cond_23
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 3620
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_24
    move v3, v10

    goto :goto_a

    .line 3624
    :cond_25
    move-object/from16 v26, v18

    goto :goto_a

    .line 3627
    :cond_26
    if-lez v28, :cond_28

    .line 3629
    const/4 v3, 0x0

    .line 3630
    :goto_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/Integer;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-nez v31, :cond_27

    .line 3631
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3635
    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->avoidAutoChangeAudoiPath()Z

    move-result v31

    if-eqz v31, :cond_21

    .line 3636
    const/16 v31, 0x1

    move/from16 v0, v27

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    const/16 v31, 0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    .line 3637
    move v3, v10

    goto :goto_a

    .line 3642
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_29
    :goto_d
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_2a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3643
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_29

    .line 3644
    add-int/lit8 v28, v28, 0x1

    goto :goto_d

    .line 3647
    .end local v9    # "conns":Ljava/lang/Integer;
    :cond_2a
    if-lez v28, :cond_2b

    .line 3649
    move-object/from16 v26, v25

    goto/16 :goto_a

    .line 3653
    :cond_2b
    move-object/from16 v26, v5

    goto/16 :goto_a

    .line 3676
    .restart local v16    # "firstConnActive":I
    .restart local v17    # "firstPhoneActive":I
    .restart local v21    # "index":I
    :cond_2c
    const/16 v31, 0x1

    move/from16 v0, v28

    move/from16 v1, v31

    if-ne v0, v1, :cond_30

    .line 3677
    move/from16 v3, v17

    .line 3685
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_2d
    :goto_e
    if-eq v3, v10, :cond_2e

    .line 3686
    if-ltz v10, :cond_31

    .line 3687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3699
    :cond_2e
    sget-boolean v31, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v31, :cond_3d

    .line 3700
    const/4 v15, 0x0

    .line 3701
    .local v15, "fgConnections":I
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2f
    :goto_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_33

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3702
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_2f

    .line 3703
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 3680
    .end local v9    # "conns":Ljava/lang/Integer;
    .end local v15    # "fgConnections":I
    .restart local v16    # "firstConnActive":I
    .restart local v17    # "firstPhoneActive":I
    .restart local v21    # "index":I
    :cond_30
    move/from16 v3, v16

    goto :goto_e

    .line 3691
    .end local v16    # "firstConnActive":I
    .end local v17    # "firstPhoneActive":I
    .end local v21    # "index":I
    :cond_31
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_2e

    .line 3692
    move/from16 v0, v21

    if-eq v0, v3, :cond_32

    .line 3693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3691
    :cond_32
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 3706
    .end local v21    # "index":I
    .restart local v15    # "fgConnections":I
    :cond_33
    const/4 v8, 0x0

    .line 3707
    .local v8, "bgConnections":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_34
    :goto_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_35

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3708
    .restart local v9    # "conns":Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v31

    if-eqz v31, :cond_34

    .line 3709
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 3713
    .end local v9    # "conns":Ljava/lang/Integer;
    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v31

    if-nez v31, :cond_3d

    .line 3715
    add-int v31, v15, v8

    const/16 v32, 0x2

    move/from16 v0, v31

    move/from16 v1, v32

    if-le v0, v1, :cond_3d

    .line 3716
    const/16 v31, 0x1

    move/from16 v0, v31

    if-le v15, v0, :cond_3b

    .line 3719
    const/16 v20, 0x0

    .line 3723
    .local v20, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v20, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_38

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_38

    .line 3726
    const/16 v28, 0x2

    .line 3727
    const-string v31, "CallManager"

    const-string v32, "IMS and GSM/CDMA have active call at the same time."

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    .end local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :goto_12
    move/from16 v0, v28

    if-le v8, v0, :cond_3d

    .line 3752
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_13
    if-lez v28, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_3d

    .line 3753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 3754
    .local v7, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_37

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_36

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_37

    .line 3756
    :cond_36
    if-lez v28, :cond_3c

    .line 3757
    add-int/lit8 v28, v28, -0x1

    .line 3752
    :cond_37
    :goto_14
    add-int/lit8 v21, v21, 0x1

    goto :goto_13

    .line 3729
    .end local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v21    # "index":I
    .restart local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_38
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_3a

    .line 3730
    move/from16 v0, v21

    if-eq v0, v3, :cond_39

    .line 3731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 3732
    .local v14, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v14, :cond_39

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_39

    .line 3734
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 3735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3736
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3737
    monitor-exit v31
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3738
    :try_start_4
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom fg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 3729
    .end local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_39
    :goto_16
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_15

    .line 3737
    .restart local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v32

    :try_start_5
    monitor-exit v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v32
    :try_end_6
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_6 .. :try_end_6} :catch_1

    .line 3739
    :catch_1
    move-exception v13

    .line 3740
    .local v13, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom fg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ex:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 3745
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v14    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3a
    const/16 v28, 0x1

    goto/16 :goto_12

    .line 3749
    .end local v20    # "imsPhone":Lcom/android/internal/telephony/Phone;
    .end local v21    # "index":I
    :cond_3b
    const/16 v28, 0x2

    goto/16 :goto_12

    .line 3761
    .restart local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v21    # "index":I
    :cond_3c
    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 3762
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom bg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_14

    .line 3763
    :catch_2
    move-exception v13

    .line 3764
    .restart local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v31, "CallManager"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Hangup phantom bg call - phone "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", ex:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 3776
    .end local v7    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "bgConnections":I
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v15    # "fgConnections":I
    .end local v21    # "index":I
    :cond_3d
    if-ne v3, v10, :cond_3e

    const/16 v31, -0x2

    move/from16 v0, v31

    if-ne v11, v0, :cond_41

    .line 3777
    :cond_3e
    if-ltz v3, :cond_3f

    .line 3778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3805
    .end local v3    # "activePhoneIndex":I
    .end local v10    # "currActivePhoneIndex":I
    .end local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3f
    :goto_17
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_46

    .line 3806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31

    .line 3807
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_40

    .line 3808
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_40

    .line 3809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3810
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    if-nez v32, :cond_40

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v32

    if-eqz v32, :cond_40

    .line 3813
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v32 .. v32}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 3814
    const-string v32, "CallManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pending Hold call execution "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3821
    :cond_40
    :goto_19
    :try_start_a
    monitor-exit v31
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3805
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_18

    .line 3782
    .end local v21    # "index":I
    .restart local v3    # "activePhoneIndex":I
    .restart local v10    # "currActivePhoneIndex":I
    .restart local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_41
    if-ne v3, v10, :cond_3f

    .line 3783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-nez v31, :cond_3f

    .line 3784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3786
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v31

    if-eqz v31, :cond_3f

    .line 3787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-nez v31, :cond_3f

    .line 3789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3f

    .line 3790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    .line 3791
    .local v12, "currentSlot":I
    if-nez v12, :cond_42

    const/16 v31, 0x1

    :goto_1a
    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v22

    .line 3792
    .local v22, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v22, :cond_3f

    .line 3793
    const/16 v31, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v31

    if-eqz v31, :cond_3f

    .line 3794
    sget-object v31, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_17

    .line 3791
    .end local v22    # "mPhone":Lcom/android/internal/telephony/Phone;
    :cond_42
    const/16 v31, 0x0

    goto :goto_1a

    .line 3815
    .end local v3    # "activePhoneIndex":I
    .end local v10    # "currActivePhoneIndex":I
    .end local v12    # "currentSlot":I
    .end local v26    # "searchActiveConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "index":I
    :catch_3
    move-exception v13

    .line 3816
    .restart local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_b
    const-string v32, "CallManager"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Pending Hold call execution "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", ex:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 3821
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :catchall_1
    move-exception v32

    monitor-exit v31
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v32

    .line 3825
    .end local v11    # "currentPickUpIndex":I
    .end local v21    # "index":I
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_44

    .line 3826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3827
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3829
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    if-eqz v31, :cond_45

    .line 3830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v31, v0

    sget-object v32, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v31 .. v32}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 3831
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 3833
    :cond_45
    const/16 v21, 0x0

    .restart local v21    # "index":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_46

    .line 3834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v31

    .line 3835
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    sget-object v33, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v32

    move/from16 v1, v21

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3836
    monitor-exit v31

    .line 3833
    add-int/lit8 v21, v21, 0x1

    goto :goto_1b

    .line 3836
    :catchall_2
    move-exception v32

    monitor-exit v31
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v32

    .line 3841
    :cond_46
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v31

    if-eqz v31, :cond_47

    .line 3843
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v31

    sget-object v32, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_47

    .line 3844
    const-string v31, "CallManager"

    const-string v32, "Call Stete is IDLE, set both audio to OFF "

    invoke-static/range {v31 .. v32}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3845
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3846
    const/16 v31, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->setAudioPathOff(I)V

    .line 3851
    :cond_47
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    .line 3852
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    .line 3853
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    .line 3856
    .end local v4    # "b":Ljava/lang/StringBuilder;
    .end local v5    # "backgroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "foregroundConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "index":I
    .end local v25    # "ringingConnections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v27    # "totalCDMAConnections":I
    .end local v28    # "totalConnections":I
    .end local v29    # "totalGSMConnections":I
    .end local v30    # "totalSubGSMConnections":I
    :cond_48
    return-void
.end method

.method private inCallAudioModeForPhone(Lcom/android/internal/telephony/Phone;)I
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4481
    const/4 v4, 0x0

    .line 4482
    .local v4, "ret":I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasActiveCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    .line 4483
    .local v0, "hasActiveCall":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->hasHoldingCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 4484
    .local v1, "hasHoldingCall":Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->checkIsFgPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    .line 4486
    .local v2, "isFgPhone":Z
    const-string v6, "persist.radio.voice.modem.index"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 4489
    .local v5, "voiceModemIndex":I
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inCallAudioModeForPhone( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ): phoneState: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasActiveCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasHoldingCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isFgPhone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceModemIndex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_1

    .line 4496
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 4497
    .local v3, "phoneType":I
    if-eqz v0, :cond_0

    const/4 v6, 0x3

    if-eq v3, v6, :cond_0

    const/4 v6, 0x4

    if-eq v3, v6, :cond_0

    .line 4499
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/CallManager;->mHasCsActiveCall:Z

    .line 4502
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 4503
    packed-switch v3, :pswitch_data_0

    .line 4511
    if-eqz v5, :cond_2

    .line 4512
    const/16 v4, 0x100

    .line 4535
    .end local v3    # "phoneType":I
    :cond_1
    :goto_0
    return v4

    .line 4505
    .restart local v3    # "phoneType":I
    :pswitch_0
    const-string v6, "CallManager"

    const-string v7, "inCallAudioModeForPhone is meaningless for SIP"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4508
    :pswitch_1
    const/16 v4, 0x10

    .line 4509
    goto :goto_0

    .line 4514
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 4517
    :cond_3
    if-eqz v1, :cond_1

    .line 4518
    packed-switch v3, :pswitch_data_1

    .line 4526
    if-eqz v5, :cond_4

    .line 4527
    const/16 v4, 0x200

    goto :goto_0

    .line 4520
    :pswitch_2
    const-string v6, "CallManager"

    const-string v7, "inCallAudioModeForPhone is meaningless for SIP"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4523
    :pswitch_3
    const/16 v4, 0x20

    .line 4524
    goto :goto_0

    .line 4529
    :cond_4
    const/4 v4, 0x2

    goto :goto_0

    .line 4503
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 4518
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private inCallModeToString(I)Ljava/lang/String;
    .locals 5
    .param p1, "inCallMode"    # I

    .prologue
    .line 4540
    const-string v2, "["

    .line 4541
    .local v2, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4543
    .local v0, "addOper":Z
    const/4 v1, 0x7

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4544
    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 4545
    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4546
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CallManager;->MODE2DDESCRIPTION:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4547
    const/4 v0, 0x1

    .line 4543
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4550
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4551
    return-object v2
.end method

.method private initCdmaSetAudioModeBeforeRadioOperation()V
    .locals 3

    .prologue
    .line 4135
    sget-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 4136
    const/4 v0, 0x0

    .line 4138
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.HtcBuildUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 4141
    :goto_0
    if-eqz v0, :cond_0

    .line 4143
    :try_start_1
    const-string v1, "cdmaSetAudioModeBeforeRadioOperation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4148
    .end local v0    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_1
    return-void

    .line 4144
    .restart local v0    # "cls":Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4139
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isCallOnImsEnabled()Z
    .locals 2

    .prologue
    .line 4362
    const-string v0, "gsm.radio.calls.on.ims"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isDSDADevice()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4665
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 4666
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 4669
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    sget-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInCallModeEnabled()Z
    .locals 1

    .prologue
    .line 4367
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->isCallOnImsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->IS_SGLTE_MODEM:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRingingWithoutOffHookCalls()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4168
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 4170
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4171
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getOffHookCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 4173
    :cond_0
    return v1
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .param p0, "p1"    # Lcom/android/internal/telephony/Phone;
    .param p1, "p2"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 343
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "fgPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v2, 0x0

    .line 4223
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4224
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4225
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.movial.ipphone.IPPhone"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 4226
    const/4 v2, 0x1

    .line 4231
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v2

    .line 4229
    :catch_0
    move-exception v0

    .line 4230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isVoiceOverIPCall(ZLcom/android/internal/telephony/Call;)Z
    .locals 4
    .param p1, "answeredCall"    # Z
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 4197
    if-eqz p2, :cond_3

    .line 4199
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 4200
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 4202
    const-string v2, "net.gannet0.cellular"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4205
    .local v0, "ganLiteProperty":Ljava/lang/String;
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4208
    :cond_0
    const/4 v2, 0x1

    .line 4216
    .end local v0    # "ganLiteProperty":Ljava/lang/String;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    .line 4211
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v2, "CallManager"

    const-string v3, "Warning! Phone is invalid when OFFHOOK!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4214
    :cond_3
    const-string v2, "CallManager"

    const-string v3, "Warning! Call is invalid when OFFHOOK!"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 4117
    const/16 v0, 0x3e9

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 4118
    return-void
.end method

.method private registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/16 v7, 0x73

    const/4 v6, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 733
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .line 734
    .local v1, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v1, :cond_0

    .line 735
    const-string v2, "CallManager"

    const-string v3, "This phone has already been registered."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_0
    return-void

    .line 740
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .end local v1    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/telephony/CallManager$CallManagerHandler;-><init>(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$1;)V

    .line 741
    .restart local v1    # "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const/16 v2, 0x65

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 745
    const/16 v2, 0x64

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 746
    const/16 v2, 0x66

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 747
    const/16 v2, 0x67

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 748
    const/16 v2, 0x68

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 749
    const/16 v2, 0x69

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 750
    const/16 v2, 0x6a

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 751
    const/16 v2, 0x6b

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 752
    const/16 v2, 0x6d

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 753
    const/16 v2, 0x6e

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 754
    const/16 v2, 0x70

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    const/16 v2, 0x71

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 756
    const/16 v2, 0x72

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 757
    const/16 v2, 0x75

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 758
    const/16 v2, 0x76

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 759
    const/16 v2, 0x3ea

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 762
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 765
    :cond_1
    const/16 v2, 0x77

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 770
    const/16 v2, 0x6f

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 771
    const/16 v2, 0x74

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 772
    const/16 v2, 0x6c

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 773
    invoke-interface {p1, v1, v7, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 775
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->initCdmaSetAudioModeBeforeRadioOperation()V

    .line 780
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 781
    const/16 v2, 0x78

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    :cond_4
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 785
    invoke-interface {p1, v1, v7, v5}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 788
    const/16 v2, 0x79

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 789
    const/16 v2, 0x7a

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForModifyCallResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_5
    :goto_1
    const/16 v2, 0xc8

    invoke-interface {p1, v1, v2, v5}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 800
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/CallManager;->registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForModifyCallRequest: CallStateException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setAudioPathOff(I)V
    .locals 4
    .param p1, "mSlot"    # I

    .prologue
    .line 4650
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPathOff(), mSlot= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4651
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4652
    .local v0, "mPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 4653
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPathOff(), set Phone audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to false;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4656
    :cond_0
    return-void
.end method

.method private support2Hold1ActiveCall()Z
    .locals 3

    .prologue
    .line 4556
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "support_two_hold_one_active_call"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 805
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    .line 806
    .local v1, "handler":Lcom/android/internal/telephony/CallManager$CallManagerHandler;
    if-eqz v1, :cond_0

    .line 807
    const-string v2, "CallManager"

    const-string v3, "Could not find Phone handler for unregistration"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :goto_0
    return-void

    .line 810
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 814
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 815
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 816
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 817
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 818
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 819
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 820
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 821
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 822
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 823
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 824
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 825
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 826
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 827
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 828
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 831
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 834
    :cond_1
    const/16 v2, 0x77

    invoke-interface {p1, v6, v2, v6}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 838
    :cond_2
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 839
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 840
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 841
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 842
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 846
    :cond_3
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 847
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    .line 848
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 850
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForModifyCallRequest(Landroid/os/Handler;)V

    .line 851
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForModifyCallResponse(Landroid/os/Handler;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_4
    :goto_1
    invoke-interface {p1, v1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    goto :goto_0

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    const-string v3, "unregisterForModifyCallRequest "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateInCallAudioMode(ILandroid/media/AudioManager;)Z
    .locals 1
    .param p1, "newAudioMode"    # I
    .param p2, "audioManager"    # Landroid/media/AudioManager;

    .prologue
    .line 4451
    const/4 v0, 0x0

    return v0
.end method

.method private updateInCallAudioModeForAnswer(ILandroid/media/AudioManager;Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "newAudioMode"    # I
    .param p2, "audioManager"    # Landroid/media/AudioManager;
    .param p3, "ringingPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4435
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 1
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 877
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CallManager;->acceptCall(Lcom/android/internal/telephony/Call;I)V

    .line 878
    return-void
.end method

.method public acceptCall(Lcom/android/internal/telephony/Call;I)V
    .locals 19
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    .line 898
    .local v12, "ringingPhone":Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->acceptRingingCall:Lcom/android/internal/telephony/Call;

    .line 900
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_0

    .line 901
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall api with calltype "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " from "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string v15, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_0
    const/4 v14, 0x1

    .line 909
    .local v14, "tryForceSetupAudioMode":Z
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "acceptCall-hasActiveFgCall():  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 913
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 914
    .local v8, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 915
    .local v3, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 916
    .local v4, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v11, 0x1

    .line 917
    .local v11, "hasBgCall":Z
    :goto_0
    if-ne v3, v12, :cond_9

    const/4 v13, 0x1

    .line 919
    .local v13, "sameChannel":Z
    :goto_1
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_1

    .line 920
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "hasBgCall: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "sameChannel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_1
    const/4 v14, 0x0

    .line 927
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v15, :cond_16

    .line 928
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v15

    .line 929
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 930
    .local v2, "acceptRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 932
    const/4 v10, 0x0

    .line 933
    .local v10, "hangupCall":Lcom/android/internal/telephony/Call;
    if-eqz v13, :cond_a

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 936
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 978
    :goto_2
    if-eqz v10, :cond_2

    .line 980
    :try_start_1
    const-string v16, "CallManager"

    const-string v17, "acceptCall-htcHangupWithoutAnswerOrResumeCall"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1017
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    .line 1019
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1070
    .end local v2    # "acceptRingCallIndex":I
    .end local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v4    # "bgCall":Lcom/android/internal/telephony/Call;
    .end local v8    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v11    # "hasBgCall":Z
    .end local v13    # "sameChannel":Z
    :cond_3
    :goto_4
    if-eqz v14, :cond_4

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getCdmaSetAudioModeBeforeRadioOperation()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1073
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    .line 1080
    :cond_4
    move/from16 v0, p2

    invoke-interface {v12, v0}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    .line 1084
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v15, :cond_5

    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v15, :cond_6

    .line 1086
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V

    .line 1089
    :cond_6
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v15, :cond_7

    .line 1090
    const-string v15, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "End acceptCall("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ")"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v15, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_7
    return-void

    .line 916
    .restart local v3    # "activePhone":Lcom/android/internal/telephony/Phone;
    .restart local v4    # "bgCall":Lcom/android/internal/telephony/Call;
    .restart local v8    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 917
    .restart local v11    # "hasBgCall":Z
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 940
    .restart local v2    # "acceptRingCallIndex":I
    .restart local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    .restart local v13    # "sameChannel":Z
    :cond_a
    :try_start_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x40000000    # 2.0f

    sget v17, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 944
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mDualGSMtotalConnections = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_c

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 947
    const-string v16, "CallManager"

    const-string v17, "1 Active and 2 Holds, hangup active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_b
    :goto_5
    if-nez v13, :cond_11

    const/4 v14, 0x1

    :goto_6
    goto/16 :goto_2

    .line 948
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/CallManager;->mDualGSMtotalConnections:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 949
    if-eqz v11, :cond_d

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 951
    const-string v16, "CallManager"

    const-string v17, "1 Active and 1 Hold on same line, incoming ringing call, hangup active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1019
    .end local v2    # "acceptRingCallIndex":I
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v16

    .line 952
    .restart local v2    # "acceptRingCallIndex":I
    .restart local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_d
    if-nez v13, :cond_b

    .line 953
    if-eqz v3, :cond_e

    :try_start_4
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 955
    const/4 v10, 0x0

    .line 956
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->rejectCall(Lcom/android/internal/telephony/Call;)V

    .line 957
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 958
    const-string v16, "CallManager"

    const-string v17, "active:fg> Active ,ring> waiting; ringcall: bg>Hold , ring> incoming, on different line, ringcall is not same active call, reject waiting call and then switch active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 961
    :cond_e
    const/4 v10, 0x0

    .line 962
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 963
    const-string v16, "CallManager"

    const-string v17, "1 Active and 1 Hold on different line, ringing is not same active call, hold active Call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 968
    :cond_f
    const/4 v10, 0x0

    .line 969
    const-string v16, "CallManager"

    const-string v17, "Don\'t hangup call, set hangupCall=null"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 973
    :cond_10
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call has fg and bg call,since hangup active fg call first."

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    goto :goto_5

    .line 976
    :cond_11
    const/4 v14, 0x0

    goto :goto_6

    .line 982
    :catch_0
    move-exception v7

    .line 983
    .local v7, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "acceptCall hangup: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 988
    .end local v7    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v10    # "hangupCall":Lcom/android/internal/telephony/Call;
    :cond_12
    if-nez v13, :cond_2

    .line 989
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 990
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 991
    .local v6, "bgRingingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-eqz v16, :cond_14

    .line 992
    const-string v16, "CallManager"

    const-string v17, "acceptCall-bgRingingCall==IDLE"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v16

    if-nez v16, :cond_13

    .line 994
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call->active call is under incall mode since switchHoldingAndActive first and then accept ringcall"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1004
    :goto_7
    const/4 v14, 0x1

    .line 1005
    goto/16 :goto_3

    .line 997
    :cond_13
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active call is dial, not need to switch call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1001
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1002
    .local v5, "bgRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 1007
    .end local v5    # "bgRingCallIndex":I
    .end local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 1008
    .local v9, "fgCdmaCall":Lcom/android/internal/telephony/Call;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1010
    const-string v16, "CallManager"

    const-string v17, "acceptCall-active cdma call->hang up cdma fg call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1021
    .end local v2    # "acceptRingCallIndex":I
    .end local v9    # "fgCdmaCall":Lcom/android/internal/telephony/Call;
    :cond_16
    sget-boolean v15, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v15, :cond_1b

    .line 1022
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v15

    .line 1023
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1024
    .restart local v2    # "acceptRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1025
    if-eqz v13, :cond_18

    .line 1026
    if-eqz v11, :cond_17

    .line 1027
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1028
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1051
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    .line 1053
    monitor-exit v15

    goto/16 :goto_4

    .end local v2    # "acceptRingCallIndex":I
    :catchall_1
    move-exception v16

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v16

    .line 1033
    .restart local v2    # "acceptRingCallIndex":I
    :cond_18
    if-nez v11, :cond_1a

    .line 1034
    :try_start_6
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    .line 1035
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 1036
    .restart local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-eqz v16, :cond_19

    .line 1037
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1043
    :goto_9
    const/4 v14, 0x1

    .line 1044
    goto :goto_8

    .line 1040
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1041
    .restart local v5    # "bgRingCallIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    .line 1047
    .end local v5    # "bgRingCallIndex":I
    .end local v6    # "bgRingingCall":Lcom/android/internal/telephony/Call;
    :cond_1a
    const/4 v14, 0x1

    goto :goto_8

    .line 1056
    .end local v2    # "acceptRingCallIndex":I
    :cond_1b
    const/4 v14, 0x1

    .line 1058
    if-eqz v13, :cond_1c

    if-eqz v11, :cond_1c

    .line 1059
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4

    .line 1060
    :cond_1c
    if-nez v13, :cond_1d

    if-nez v11, :cond_1d

    .line 1061
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_4

    .line 1062
    :cond_1d
    if-nez v13, :cond_3

    if-eqz v11, :cond_3

    .line 1063
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v2, 0x0

    .line 1348
    const/4 v0, 0x0

    .line 1349
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1351
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1355
    :cond_0
    if-eqz p1, :cond_1

    .line 1356
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1360
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 1367
    :cond_2
    :goto_0
    return v2

    .line 1364
    :cond_3
    instance-of v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_4

    .line 1365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 1367
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public canConference(Lcom/android/internal/telephony/Call;J)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # J

    .prologue
    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1384
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1385
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1388
    :cond_0
    if-eqz p1, :cond_1

    .line 1389
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1392
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1686
    const/4 v0, 0x0

    .line 1687
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1689
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1690
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1693
    :cond_0
    if-eqz p1, :cond_1

    .line 1694
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1697
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;J)Z
    .locals 4
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .param p2, "subId"    # J

    .prologue
    .line 1706
    const/4 v0, 0x0

    .line 1707
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .line 1709
    .local v1, "heldPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1710
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1713
    :cond_0
    if-eqz p1, :cond_1

    .line 1714
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1717
    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    .line 1623
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1624
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1626
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public clearDisconnected(J)V
    .locals 5
    .param p1, "subId"    # J

    .prologue
    .line 1633
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 1634
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1635
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .line 1638
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v2

    .line 1407
    .local v2, "subId":J
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1408
    const-string v1, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1413
    .local v0, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_4

    .line 1414
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_2

    .line 1415
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    .line 1425
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1426
    const-string v1, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End conference("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_1
    return-void

    .line 1416
    .restart local v0    # "fgPhone":Lcom/android/internal/telephony/Phone;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1417
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    .line 1419
    :cond_3
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1422
    :cond_4
    const-string v1, "CallManager"

    const-string v4, "conference: fgPhone=null"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1445
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/CallManager;->dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;IZ)Lcom/android/internal/telephony/Connection;
    .locals 19
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "videoState"    # I
    .param p4, "dialFromCsDomain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1453
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1454
    .local v5, "basePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface/range {p1 .. p1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v12

    .line 1457
    .local v12, "subId":J
    const/4 v9, 0x0

    .line 1459
    .local v9, "holdActivePhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v16, :cond_0

    .line 1460
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " dial("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " subId = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    const-string v16, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v14

    .line 1467
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-nez v16, :cond_4

    .line 1469
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->canDial(Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1475
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1476
    .local v10, "newDialString":Ljava/lang/String;
    invoke-interface {v5, v10}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1477
    const/4 v11, 0x0

    .line 1598
    .end local v10    # "newDialString":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v11

    .line 1479
    .restart local v10    # "newDialString":Ljava/lang/String;
    :cond_3
    new-instance v16, Lcom/android/internal/telephony/CallStateException;

    const-string v17, "cannot dial in current state"

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1487
    .end local v10    # "newDialString":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 1489
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1490
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 1491
    .local v4, "activePhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v16

    if-nez v16, :cond_d

    const/4 v8, 0x1

    .line 1494
    .local v8, "hasBgCall":Z
    :goto_1
    const-string v17, "CallManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "hasBgCall: "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v18, " sameChannel:"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    if-ne v4, v5, :cond_e

    const/16 v16, 0x1

    :goto_2
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1499
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 1505
    :cond_5
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    .line 1506
    .local v15, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eq v4, v5, :cond_7

    if-eqz v15, :cond_6

    if-eq v15, v4, :cond_7

    .line 1509
    :cond_6
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v16, :cond_12

    .line 1511
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x40000000    # 2.0f

    sget v17, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->support2Hold1ActiveCall()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1515
    if-eqz v8, :cond_f

    .line 1516
    const-string v16, "CallManager"

    const-string v17, "1 active and 1 hold on same line, hangup active call"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    .end local v4    # "activePhone":Lcom/android/internal/telephony/Phone;
    .end local v8    # "hasBgCall":Z
    .end local v15    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    :goto_3
    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v16

    move/from16 v3, p4

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;ILandroid/os/Bundle;Z)Lcom/android/internal/telephony/Connection;

    move-result-object v11

    .line 1567
    .local v11, "result":Lcom/android/internal/telephony/Connection;
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v16, :cond_8

    .line 1568
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "End dial("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v16, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_8
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v16, :cond_9

    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v16, :cond_2

    .line 1575
    :cond_9
    if-eqz v11, :cond_2

    .line 1576
    if-eqz v9, :cond_a

    .line 1577
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 1579
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 1582
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    .line 1583
    const-string v16, "CallManager"

    const-string v17, "Dial, set activePhone to false "

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1586
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1587
    .local v6, "basePhoneIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 1589
    const-string v16, "CallManager"

    const-string v17, "Dial, set dialPhone to true "

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v16 .. v17}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_0

    .line 1491
    .end local v6    # "basePhoneIndex":I
    .end local v11    # "result":Lcom/android/internal/telephony/Connection;
    .restart local v4    # "activePhone":Lcom/android/internal/telephony/Phone;
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1494
    .restart local v8    # "hasBgCall":Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1519
    .restart local v15    # "vPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v7

    .line 1520
    .local v7, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v16, "CallManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dial hangup: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1524
    .end local v7    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_f
    const-string v16, "CallManager"

    const-string v17, "1 active and 1 hold on different line, Switch active call to hold."

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    move-object v9, v4

    goto/16 :goto_3

    .line 1529
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v16

    if-eqz v16, :cond_11

    .line 1530
    const-string v16, "CallManager"

    const-string v17, "Unable to dial due to both fg+bg active"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1534
    :cond_11
    if-nez v8, :cond_7

    .line 1535
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    move-object v9, v4

    goto/16 :goto_3

    .line 1541
    :cond_12
    sget-boolean v16, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v16, :cond_13

    .line 1542
    if-nez v8, :cond_7

    .line 1543
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    move-object v9, v4

    goto/16 :goto_3

    .line 1549
    :cond_13
    if-eqz v8, :cond_14

    .line 1550
    const-string v16, "CallManager"

    const-string v17, "Hangup"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_3

    .line 1553
    :cond_14
    const-string v16, "CallManager"

    const-string v17, "Switch"

    invoke-static/range {v16 .. v17}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_3
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p4, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1614
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    .line 1616
    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1733
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1734
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1739
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1742
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1743
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_2
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 5

    .prologue
    .line 2607
    const/4 v0, 0x0

    .line 2608
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_4

    .line 2610
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    .line 2612
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2613
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    .line 2615
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 2616
    .local v2, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_3

    .line 2618
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2622
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v3, v4, :cond_1

    .line 2623
    const/4 v0, 0x0

    .line 2640
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2641
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_5

    const/4 v0, 0x0

    .line 2645
    :cond_2
    :goto_2
    return-object v0

    .line 2619
    .restart local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v1

    .line 2620
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CallManager"

    const-string v4, "getImsActiveFgCall, get null point exception..."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 2631
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_1
    move-exception v1

    .line 2632
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "CallManager"

    const-string v4, "getActiveFgCall, get null point exception..."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2626
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2637
    .end local v2    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 2641
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2
.end method

.method public getActiveFgCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2649
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2650
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2651
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2652
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2656
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return-object v0

    .line 2652
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 2869
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2871
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2872
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2875
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2879
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2881
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2882
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2885
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2499
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_5

    .line 2501
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2502
    .local v0, "bgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2503
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 2504
    const/4 v1, 0x0

    .line 2506
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 2507
    .local v3, "singleCall":Lcom/android/internal/telephony/Call;
    if-eq v3, v1, :cond_2

    .line 2508
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2511
    .end local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .line 2512
    .restart local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2514
    .end local v3    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2517
    .end local v0    # "bgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    .end local v1    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2918
    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v7, :cond_5

    .line 2920
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2922
    .local v2, "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2923
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    .line 2924
    const/4 v3, 0x0

    .line 2926
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2927
    .local v6, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_2

    if-eq v6, v3, :cond_2

    .line 2928
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2929
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2933
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2934
    .restart local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_4

    .line 2935
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2936
    .restart local v1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2944
    .end local v1    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v2    # "connections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2945
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_7

    .line 2946
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .line 2948
    .end local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_6
    :goto_2
    return-object v2

    .restart local v0    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public getBgCallConnections(J)Ljava/util/List;
    .locals 3
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2956
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2957
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2958
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2960
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 677
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 681
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBgPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 692
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2893
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2894
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2895
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2897
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallConnections(J)Ljava/util/List;
    .locals 3
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2905
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2906
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2907
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2909
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mEmptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    .line 2968
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2969
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2970
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2972
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgCallLatestConnection(J)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2980
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2981
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 2982
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 2984
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 650
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 654
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 665
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2708
    const/4 v0, 0x0

    .line 2709
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v9, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v9, :cond_c

    .line 2711
    :cond_0
    const/4 v1, 0x0

    .line 2712
    .local v1, "callFound":Z
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v9, :cond_3

    .line 2714
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2715
    if-eqz v0, :cond_1

    .line 2716
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_6

    move v1, v7

    .line 2718
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 2720
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 2721
    .local v5, "imsPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v5, :cond_8

    .line 2722
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2723
    if-eqz v0, :cond_2

    .line 2724
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v10, :cond_7

    move v1, v7

    .line 2726
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2727
    const/4 v0, 0x0

    .line 2739
    .end local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_2
    if-nez v1, :cond_9

    .line 2740
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 2741
    .local v3, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_4

    .line 2742
    const/4 v3, 0x0

    .line 2744
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .line 2745
    .local v6, "singleCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_5

    if-eqz v6, :cond_5

    if-eq v6, v3, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    .line 2746
    move-object v0, v6

    .line 2747
    const/4 v1, 0x1

    goto :goto_3

    .end local v3    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_6
    move v1, v8

    .line 2716
    goto :goto_0

    .restart local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :cond_7
    move v1, v8

    .line 2724
    goto :goto_1

    .line 2730
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 2735
    .end local v5    # "imsPhone":Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v2

    .line 2736
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "CallManager"

    const-string v8, "getFirstActiveBgCall, get null point exception..."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2751
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    if-nez v1, :cond_a

    .line 2752
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2760
    .end local v1    # "callFound":Z
    :cond_a
    :goto_4
    if-nez v0, :cond_b

    .line 2761
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v7, :cond_d

    const/4 v0, 0x0

    .line 2765
    :cond_b
    :goto_5
    return-object v0

    .line 2756
    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_4

    .line 2761
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_5
.end method

.method public getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2783
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2784
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneHoldingCall(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2785
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2793
    :cond_0
    :goto_0
    return-object v0

    .line 2787
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2788
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2789
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    .line 2815
    const/4 v0, 0x0

    .line 2816
    .local v0, "call":Lcom/android/internal/telephony/Call;
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_7

    .line 2818
    :cond_0
    const/4 v2, 0x0

    .line 2819
    .local v2, "firstCall":Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .line 2820
    .local v1, "callFound":Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 2821
    .local v4, "singleCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    .line 2822
    if-nez v2, :cond_2

    .line 2823
    move-object v2, v4

    .line 2825
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_3

    .line 2826
    const/4 v1, 0x1

    goto :goto_0

    .line 2829
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2830
    move-object v0, v4

    .line 2831
    const/4 v1, 0x1

    goto :goto_0

    .line 2836
    .end local v4    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_4
    if-nez v0, :cond_5

    .line 2837
    move-object v0, v2

    .line 2845
    .end local v1    # "callFound":Z
    .end local v2    # "firstCall":Lcom/android/internal/telephony/Call;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    .line 2846
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_8

    const/4 v0, 0x0

    .line 2850
    :cond_6
    :goto_2
    return-object v0

    .line 2841
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    .line 2846
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2
.end method

.method public getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 2854
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getPhone(J)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2855
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2856
    .local v0, "call":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 2857
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 2861
    :cond_0
    :goto_0
    return-object v0

    .line 2857
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2481
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_2

    .line 2483
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2484
    .local v1, "fgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2485
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    .line 2486
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 2491
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "fgCalls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1811
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1812
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    .line 1816
    :goto_0
    return v0

    .line 1813
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1814
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    .line 1816
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1759
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneInCall()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneInCall(J)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 511
    const/4 v0, 0x0

    .line 512
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 520
    :goto_0
    return-object v0

    .line 514
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 515
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    .line 518
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method public getRegistrationHandler(Lcom/android/internal/telephony/Phone;)Landroid/os/Handler;
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 4678
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 4679
    .local v0, "handler":Landroid/os/Handler;
    return-object v0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 704
    .local v0, "ringCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 708
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRingingPhone(J)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 440
    const/4 v2, 0x1

    .line 442
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 443
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 444
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 446
    move v2, v3

    .line 461
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 448
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 451
    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    .line 453
    :cond_3
    move v2, v3

    goto :goto_0

    .line 455
    :cond_4
    if-ne v3, v5, :cond_0

    .line 456
    if-ne v2, v6, :cond_0

    .line 457
    move v2, v3

    goto :goto_0
.end method

.method public getServiceState(J)I
    .locals 9
    .param p1, "subId"    # J

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 468
    const/4 v2, 0x1

    .line 470
    .local v2, "resultState":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 471
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    .line 472
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 473
    .local v3, "serviceState":I
    if-nez v3, :cond_2

    .line 475
    move v2, v3

    .line 491
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "serviceState":I
    :cond_1
    return v2

    .line 477
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v3    # "serviceState":I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 480
    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_0

    .line 482
    :cond_3
    move v2, v3

    goto :goto_0

    .line 484
    :cond_4
    if-ne v3, v6, :cond_0

    .line 485
    if-ne v2, v7, :cond_0

    .line 486
    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 6

    .prologue
    .line 376
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 378
    .local v3, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .line 380
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_3

    .line 382
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 383
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 384
    .local v0, "cur":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_2

    .line 385
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 387
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    .line 388
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v4, :cond_0

    .line 389
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 396
    .end local v0    # "cur":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_4

    .line 397
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 398
    :cond_4
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_0

    .line 399
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 405
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_5
    return-object v3
.end method

.method public getState(J)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 7
    .param p1, "subId"    # J

    .prologue
    .line 415
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 417
    .local v2, "s":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 418
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 419
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    .line 420
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 421
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    .line 422
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 426
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    return-object v2
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1280
    const/4 v2, 0x0

    .line 1281
    .local v2, "foregroundPhone":Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 1283
    .local v0, "backgroundPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v4, :cond_0

    .line 1284
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupForegroundResumeBackground("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1289
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1290
    if-eqz p1, :cond_2

    .line 1291
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1293
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_7

    .line 1295
    :cond_1
    invoke-static {v2, v0}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1296
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-handle same phone case"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 1298
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-(gsm) hang up active fg call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1336
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v4, :cond_3

    .line 1337
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End hangupForegroundResumeBackground("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    const-string v4, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_3
    return-void

    .line 1302
    :cond_4
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-(cdma) switch help call"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1306
    :cond_5
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-handle NOT same phone case"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    :try_start_0
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-Hangup active fg call WithoutAnswerOrResumeCall"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1311
    .local v3, "mActiveFgPhone":Lcom/android/internal/telephony/Phone;
    const-string v4, "CallManager"

    const-string v5, "hangupForegroundResumeBackground()-Hangup active fg call WithoutAnswerOrResumeCall-set hangup call audio to OFF first."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    if-eqz v3, :cond_6

    .line 1313
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    .end local v3    # "mActiveFgPhone":Lcom/android/internal/telephony/Phone;
    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 1315
    :catch_0
    move-exception v1

    .line 1316
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupForegroundResumeBackground hangup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1323
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_7
    if-ne v2, v0, :cond_8

    .line 1324
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_0

    .line 1327
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 2547
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    .line 2549
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2550
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 2551
    const/4 v0, 0x0

    .line 2553
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 2554
    .local v2, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2563
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasActiveBgCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2525
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2528
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2531
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    .line 2528
    goto :goto_0

    .line 2531
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public hasActiveFgCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasActiveRingingCall(J)Z
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 2588
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 3014
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    .line 3016
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3017
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    .line 3018
    const/4 v0, 0x0

    .line 3020
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .line 3021
    .local v2, "singleCall":Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 3027
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "singleCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2992
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    .line 2994
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2995
    .local v0, "fgCall":Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .line 2998
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    .line 2995
    goto :goto_0

    .line 2998
    .end local v0    # "fgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public hasDisconnectedFgCall(J)Z
    .locals 3
    .param p1, "subId"    # J

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;J)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3284
    return-void
.end method

.method public htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3351
    const/4 v0, 0x0

    return v0
.end method

.method public htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 3355
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    .line 3356
    .local v0, "blocked":Z
    if-nez v0, :cond_0

    .line 3357
    if-eqz v0, :cond_0

    .line 3359
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block ring call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3370
    :cond_0
    :goto_0
    return v0

    .line 3363
    :catch_0
    move-exception v1

    .line 3365
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to block ring call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 3221
    if-eqz p1, :cond_0

    .line 3222
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .line 3223
    .local v0, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    .line 3224
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V

    .line 3227
    .end local v0    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_0
    return-void
.end method

.method public isImsPhoneActive()Z
    .locals 4

    .prologue
    .line 3145
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3146
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 3148
    const/4 v2, 0x1

    .line 3151
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isImsPhoneIdle()Z
    .locals 4

    .prologue
    .line 3159
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 3160
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    .line 3162
    const/4 v2, 0x1

    .line 3165
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2453
    return-void
.end method

.method public registerForCallModify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2434
    return-void
.end method

.method public registerForCallModifyResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2445
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2284
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2361
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1949
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1950
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2339
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2340
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2164
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2264
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2244
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2035
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2322
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2146
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2126
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2014
    return-void
.end method

.method public registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2078
    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2422
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2423
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1974
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2093
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2094
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2057
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2181
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2307
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2379
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2200
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2201
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2224
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1990
    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2105
    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 7
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 529
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 531
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 534
    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerPhone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 539
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 551
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_1

    .line 553
    const-string v2, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assign mDefaultPhone in PhoneConstants.SUB1 case from:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 559
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0, v2, v4, v5}, Lcom/android/internal/telephony/PhoneController;->registerImsCall(Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 570
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 573
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_4

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v2

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move v2, v3

    .line 585
    :cond_5
    return v2

    .line 542
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 543
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .line 544
    .local v1, "firstPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    const/4 v2, 0x5

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 545
    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .line 580
    .end local v1    # "firstPhone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "ringingCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1105
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1106
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_0
    if-eqz p1, :cond_2

    .line 1110
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1111
    .local v0, "ringingPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1116
    .end local v0    # "ringingPhone":Lcom/android/internal/telephony/Phone;
    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_1

    .line 1117
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_1
    return-void

    .line 1113
    :cond_2
    const-string v1, "CallManager"

    const-string v2, "rejectCall--get null..."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1929
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1931
    const/4 v0, 0x1

    .line 1933
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1847
    const/4 v0, 0x0

    .line 1849
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1850
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1855
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1856
    const/4 v0, 0x1

    .line 1859
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    .line 1860
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_2
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 1772
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioFocusEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 4297
    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eq v3, p1, :cond_0

    .line 4298
    iput-boolean p1, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    .line 4299
    const/4 v2, -0x1

    .line 4300
    .local v2, "streamType":I
    sget-object v3, Lcom/android/internal/telephony/CallManager$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 4308
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eqz v3, :cond_0

    .line 4309
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4310
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 4316
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "streamType":I
    :cond_0
    :goto_1
    return-void

    .line 4302
    .restart local v2    # "streamType":I
    :pswitch_0
    const/4 v2, 0x2

    .line 4303
    goto :goto_0

    .line 4305
    :pswitch_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4311
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4312
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    goto :goto_1

    .line 4300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioMode(II)V
    .locals 0
    .param p1, "phoneType"    # I
    .param p2, "AudioMode"    # I

    .prologue
    .line 4291
    return-void
.end method

.method public setAudioMode(Z)V
    .locals 1
    .param p1, "answerCall"    # Z

    .prologue
    .line 4241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    .line 4242
    return-void
.end method

.method public setAudioMode(ZLcom/android/internal/telephony/Call;)V
    .locals 8
    .param p1, "answerCall"    # Z
    .param p2, "ringCall"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x2

    .line 4246
    if-eqz p1, :cond_0

    .line 4247
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4248
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    .line 4286
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 4249
    .restart local v1    # "context":Landroid/content/Context;
    :cond_1
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4251
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 4253
    const-string v5, "CallManager"

    const-string v6, "setAudioMode due to answerCall"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    move-object v3, p2

    .line 4255
    .local v3, "targetCall":Lcom/android/internal/telephony/Call;
    if-nez v3, :cond_2

    .line 4256
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 4259
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_4

    .line 4262
    :cond_3
    const-string v4, "CallManager"

    const-string v5, "Invalid targetCall or targetCall.getPhone()!"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4266
    :cond_4
    invoke-direct {p0, v7, v3}, Lcom/android/internal/telephony/CallManager;->isVoiceOverIPCall(ZLcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x3

    .line 4271
    .local v2, "newAudioMode":I
    :goto_1
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioMode due to answerCall: SET_MODE_BEFORE_ANSWER: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SET_MODE_BEFORE_ANSWER:Z

    if-eqz v5, :cond_5

    if-eq v4, v2, :cond_0

    .line 4274
    :cond_5
    const-string v5, "CallManager"

    const-string v6, "requestAudioFocus & setAudioMode right after answer call."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4276
    iget-boolean v5, p0, Lcom/android/internal/telephony/CallManager;->mAudioFocusEnabled:Z

    if-eqz v5, :cond_6

    .line 4277
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    .line 4280
    :cond_6
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-direct {p0, v2, v0, v4}, Lcom/android/internal/telephony/CallManager;->updateInCallAudioModeForAnswer(ILandroid/media/AudioManager;Lcom/android/internal/telephony/Phone;)Z

    .line 4281
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .end local v2    # "newAudioMode":I
    :cond_7
    move v2, v4

    .line 4266
    goto :goto_1
.end method

.method public setEchoSuppressionEnabled()V
    .locals 2

    .prologue
    .line 1823
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1824
    const-string v0, "CallManager"

    const-string v1, " setEchoSuppression()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    .line 1832
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1833
    const-string v0, "CallManager"

    const-string v1, "End setEchoSuppression()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .param p1, "muted"    # Z

    .prologue
    .line 1786
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1787
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1792
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1795
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1796
    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    :cond_2
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 1876
    const/4 v0, 0x0

    .line 1878
    .local v0, "result":Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1879
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1884
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1885
    const/4 v0, 0x1

    .line 1888
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    .line 1889
    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_2
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 1901
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1902
    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1908
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    .line 1909
    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    :cond_2
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 1141
    const/4 v1, 0x0

    .line 1142
    .local v1, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .line 1144
    .local v3, "heldPhone":Lcom/android/internal/telephony/Phone;
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_0

    .line 1145
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1153
    :cond_1
    if-eqz p1, :cond_2

    .line 1154
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 1157
    :cond_2
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchHoldingAndActive, activePhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", heldPhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v6, :cond_14

    .line 1162
    :cond_3
    invoke-static {v3, v1}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1163
    if-eqz v1, :cond_4

    .line 1164
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, same phone-switch active call to hold/unhold"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1166
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1167
    .local v0, "activeCallIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1168
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1169
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    .end local v0    # "activeCallIndex":I
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_5

    .line 1266
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_5
    return-void

    .line 1169
    .restart local v0    # "activeCallIndex":I
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1173
    .end local v0    # "activeCallIndex":I
    :cond_6
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, handle NOT same phone case."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    if-eqz v1, :cond_a

    .line 1176
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_a

    .line 1177
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1178
    .local v5, "index":I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1179
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1180
    if-ltz v5, :cond_8

    .line 1181
    :try_start_2
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    .line 1184
    :cond_7
    const/4 v5, -0x2

    .line 1187
    :cond_8
    if-ltz v5, :cond_9

    .line 1188
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, switch active call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1191
    :cond_9
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1206
    .end local v5    # "index":I
    :cond_a
    :goto_1
    if-eqz v3, :cond_4

    .line 1207
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, handle held call."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_b

    .line 1210
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1211
    .local v2, "bgCall":Lcom/android/internal/telephony/Call;
    if-ne v2, p1, :cond_11

    .line 1212
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, bgCall == heldCall, switch held call"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1222
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_b
    :goto_2
    if-eqz v1, :cond_12

    .line 1223
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1224
    if-eqz v1, :cond_d

    .line 1225
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v7}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1227
    :cond_c
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set activePhone to false"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1232
    :cond_d
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1233
    .local v4, "heldPhoneIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone;

    iput-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1234
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_e

    .line 1235
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set heldPhone to true"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1238
    :cond_e
    monitor-exit v6

    goto/16 :goto_0

    .end local v4    # "heldPhoneIndex":I
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 1191
    .restart local v5    # "index":I
    :catchall_2
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    .line 1194
    :cond_f
    if-ltz v5, :cond_a

    .line 1195
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1196
    :try_start_5
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_10

    .line 1198
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, activePhone.getRingingCall().isIdle()= false"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1201
    :cond_10
    monitor-exit v6

    goto/16 :goto_1

    :catchall_3
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v7

    .line 1215
    .end local v5    # "index":I
    .restart local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-ne v6, p1, :cond_b

    .line 1217
    const-string v6, "CallManager"

    const-string v7, "switchHoldingAndActive, heldPhone.getForegroundCall() == heldCall"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_2

    .line 1240
    .end local v2    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_12
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v6

    .line 1241
    :try_start_6
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1242
    .restart local v4    # "heldPhoneIndex":I
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/Phone;

    iput-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 1243
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v7, :cond_13

    .line 1244
    const-string v7, "CallManager"

    const-string v8, "switchHoldingAndActive, set heldPhone to true"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, v8}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 1247
    :cond_13
    monitor-exit v6

    goto/16 :goto_0

    .end local v4    # "heldPhoneIndex":I
    :catchall_4
    move-exception v7

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v7

    .line 1254
    :cond_14
    if-eqz v1, :cond_15

    .line 1255
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1258
    :cond_15
    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_4

    .line 1259
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_0
.end method

.method public switchSingleLineHoldingAndActiveCall(Lcom/android/internal/telephony/Call;)V
    .locals 9
    .param p1, "heldCall"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 4560
    const/4 v0, 0x0

    .line 4561
    .local v0, "activePhone":Lcom/android/internal/telephony/Phone;
    const/4 v2, 0x0

    .line 4563
    .local v2, "heldPhone":Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .line 4565
    .local v4, "mTurnOnAutioPath":Z
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4567
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v5, :cond_0

    .line 4568
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "switchSingleLineHoldingAndActiveCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    :cond_0
    if-eqz p1, :cond_1

    .line 4573
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 4576
    :cond_1
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_2

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_a

    .line 4579
    :cond_2
    if-eqz v2, :cond_a

    .line 4581
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 4582
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4583
    .local v1, "bgCall":Lcom/android/internal/telephony/Call;
    if-ne v1, p1, :cond_c

    .line 4584
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()-1.switchHoldingAndActive"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 4587
    const/4 v4, 0x1

    .line 4596
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v5

    .line 4597
    if-eqz v0, :cond_5

    .line 4598
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4600
    :cond_4
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, set activePhone to false "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4605
    :cond_5
    if-eqz v4, :cond_8

    .line 4607
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4608
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4611
    :cond_6
    if-nez v0, :cond_7

    .line 4612
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4613
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, get activePhone=null, since get firsrt active bg call "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4614
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 4615
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 4619
    :cond_7
    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchSingleLineHoldingAndActiveCall, activePhone= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4620
    if-eqz v0, :cond_8

    .line 4621
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4622
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, have to turn on hold call audio path ,we need to close another phone audio path first. "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4627
    :cond_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4631
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4632
    .local v3, "heldPhoneIndex":I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    iput-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .line 4633
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_9

    .line 4634
    const-string v6, "CallManager"

    const-string v7, "switchSingleLineHoldingAndActiveCall, set heldPhone to true "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4635
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .line 4637
    :cond_9
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4641
    .end local v3    # "heldPhoneIndex":I
    :cond_a
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v5, :cond_b

    .line 4642
    const-string v5, "CallManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End switchSingleLineHoldingAndActiveCall("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4643
    const-string v5, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_b
    return-void

    .line 4590
    .restart local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 4592
    const-string v5, "CallManager"

    const-string v6, "switch SingleLine HoldingAndActiveCall()-2.switchHoldingAndActive"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_0

    .line 4637
    .end local v1    # "bgCall":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 4060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4061
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 4062
    const-string v5, "CallManager {"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getState(J)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4065
    .local v1, "call":Lcom/android/internal/telephony/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Foreground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState(J)Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4072
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections(J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4073
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Background: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    const-string v5, "\n  Conn: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections(J)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4083
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall(J)Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4089
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n- Ringing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4090
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4061
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4070
    :cond_0
    const-string v5, "null"

    goto/16 :goto_1

    .line 4079
    :cond_1
    const-string v5, "null"

    goto :goto_2

    .line 4080
    :cond_2
    const-string v5, "null"

    goto :goto_3

    .line 4089
    :cond_3
    const-string v5, "null"

    goto :goto_4

    .line 4090
    :cond_4
    const-string v5, "null"

    goto :goto_5

    .line 4094
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    .line 4095
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v4, :cond_6

    .line 4096
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nPhone: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4099
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    const-string v5, "\n- Foreground: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4100
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4101
    const-string v5, " Background: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4102
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4103
    const-string v5, " Ringing: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 4106
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v4    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_7
    const-string v5, "\n}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2456
    return-void
.end method

.method public unregisterForCallModify(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallModifyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2438
    return-void
.end method

.method public unregisterForCallModifyResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mModifyCallResponseRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2449
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2292
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2369
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1961
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2350
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2172
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2273
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2253
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2044
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mLineCtrlInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2326
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2154
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2134
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2023
    return-void
.end method

.method public unregisterForOnHoldTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mOnHoldToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2086
    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2427
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1982
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2101
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2065
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2189
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2317
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2387
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2211
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2233
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1997
    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 2110
    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 593
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 595
    .local v0, "basePhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 598
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterPhone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 603
    .local v2, "vPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 608
    :cond_0
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_2

    .line 610
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandlerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CallManager$CallManagerHandler;

    monitor-enter v3

    .line 611
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 612
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 613
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 614
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 615
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    .end local v1    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 620
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 621
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 622
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 623
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    .line 624
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v3, :cond_3

    .line 625
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 626
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    .line 632
    .end local v2    # "vPhone":Lcom/android/internal/telephony/Phone;
    :cond_3
    :goto_0
    return-void

    .line 616
    .restart local v2    # "vPhone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 628
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method
