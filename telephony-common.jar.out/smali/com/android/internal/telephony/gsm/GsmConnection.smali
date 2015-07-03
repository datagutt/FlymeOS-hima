.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "GsmConnection"

.field private static final PAUSE_DELAY_FIRST_MILLIS:I

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field mCause:I

.field mCliValid:Lcom/android/internal/telephony/Connection$CliValid;

.field mDisconnectTime:J

.field mDisconnected:Z

.field mHandler:Landroid/os/Handler;

.field mIndex:I

.field mNextPostDialChar:I

.field mNoLocalWaitingTone:Z

.field mOrigConnection:Lcom/android/internal/telephony/Connection;

.field mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mParent:Lcom/android/internal/telephony/gsm/GsmCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field mPostDialString:Ljava/lang/String;

.field mPreciseCause:I

.field mRawCause:I

.field mStopedTimer:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
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
    const/16 v0, 0x5dc

    :goto_0
    sput v0, Lcom/android/internal/telephony/gsm/GsmConnection;->PAUSE_DELAY_FIRST_MILLIS:I

    return-void

    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dc"    # Lcom/android/internal/telephony/DriverCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 83
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 89
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCliValid:Lcom/android/internal/telephony/Connection$CliValid;

    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 163
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    .line 165
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 167
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    .line 169
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 170
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 171
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 172
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 175
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 176
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 178
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 180
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    .line 202
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateCodecInfo(Ljava/lang/String;)Z

    .line 206
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/gsm/GsmCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 210
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 82
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 83
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 85
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 89
    sget-object v1, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCliValid:Lcom/android/internal/telephony/Connection$CliValid;

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 212
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 214
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 215
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    .line 217
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    .line 219
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 224
    .local v0, "dtmfEnabled":I
    if-eqz v0, :cond_1

    .line 225
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 233
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 235
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    .line 236
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 237
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 238
    iput v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCreateTime:J

    .line 241
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 242
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 247
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "UNKNOWN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->updateCodecInfo(Ljava/lang/String;)Z

    .line 251
    :cond_0
    return-void

    .line 228
    :cond_1
    const-string v1, "GsmConnection"

    const-string v2, "ignore DTMF"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/GsmConnection;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 973
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 975
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 967
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 968
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GsmConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 969
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 258
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private isConnectingInOrOut()Z
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-string v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 3
    .param p1, "state"    # Lcom/android/internal/telephony/DriverCall$State;

    .prologue
    .line 923
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 940
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 927
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 936
    :goto_0
    return-object v0

    .line 931
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 936
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 853
    const/4 v1, 0x0

    .line 856
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseToneGenerator()V

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 866
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseToneGenerator()V

    .line 871
    const/4 v1, 0x0

    .line 890
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 894
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 897
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 898
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 899
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 900
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 903
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 906
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 875
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 877
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 879
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 881
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 883
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 885
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processPostDialChar(C)Z
    .locals 6
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 771
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    .line 775
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->playTone(C)V

    .line 812
    :goto_0
    return v0

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    .line 784
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0

    .line 789
    :cond_2
    const/16 v1, 0x70

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_4

    .line 802
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 804
    :cond_4
    const/16 v1, 0x77

    if-eq p1, v1, :cond_5

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_6

    .line 805
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 806
    :cond_6
    const/16 v1, 0x3f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x4e

    if-ne p1, v1, :cond_8

    .line 807
    :cond_7
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 809
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 979
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    const-string v0, "releaseWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 984
    :cond_0
    monitor-exit v1

    .line 985
    return-void

    .line 984
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 951
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 953
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 954
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 955
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 961
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 962
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->notifyPostDialListeners()V

    .line 963
    return-void

    .line 956
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 959
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 429
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v1, 0x1

    .line 268
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v2, :cond_1

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v2, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-nez v2, :cond_0

    .line 278
    iget-object v2, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v3, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "cAddress":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method disconnectCauseFromCode(I)I
    .locals 10
    .param p1, "causeCode"    # I

    .prologue
    const/16 v4, 0x24

    const/16 v7, 0x10

    const/4 v5, 0x2

    .line 453
    sparse-switch p1, :sswitch_data_0

    .line 480
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 481
    .local v1, "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 482
    .local v2, "serviceState":I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 483
    .local v0, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v3

    .line 485
    .local v3, "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :goto_0
    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    .line 486
    const/16 v4, 0x11

    .line 514
    .end local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v2    # "serviceState":I
    .end local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_0
    :goto_1
    return v4

    .line 455
    :sswitch_0
    const/4 v4, 0x4

    goto :goto_1

    .line 463
    :sswitch_1
    const/4 v4, 0x5

    goto :goto_1

    .line 466
    :sswitch_2
    const/16 v4, 0xf

    goto :goto_1

    .line 469
    :sswitch_3
    const/16 v4, 0x14

    goto :goto_1

    .line 472
    :sswitch_4
    const/16 v4, 0x15

    goto :goto_1

    .line 475
    :sswitch_5
    const/16 v4, 0x19

    goto :goto_1

    .line 483
    .restart local v0    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v1    # "phone":Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v2    # "serviceState":I
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    goto :goto_0

    .line 487
    .restart local v3    # "uiccAppState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    :cond_2
    const/4 v6, 0x1

    if-eq v2, v6, :cond_3

    if-ne v2, v5, :cond_6

    .line 490
    :cond_3
    if-eq v7, p1, :cond_4

    const/16 v4, 0x1f

    if-ne v4, p1, :cond_5

    :cond_4
    const-wide/16 v6, 0x0

    iget-wide v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    .line 493
    goto :goto_1

    .line 496
    :cond_5
    const/16 v4, 0x12

    goto :goto_1

    .line 497
    :cond_6
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v3, v6, :cond_7

    .line 498
    const/16 v4, 0x13

    goto :goto_1

    .line 499
    :cond_7
    const v6, 0xffff

    if-ne p1, v6, :cond_a

    .line 500
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsRestricted()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 501
    const/16 v4, 0x16

    goto :goto_1

    .line 502
    :cond_8
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 503
    const/16 v4, 0x18

    goto :goto_1

    .line 504
    :cond_9
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RestrictedState;->isCsNormalRestricted()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 505
    const/16 v4, 0x17

    goto :goto_1

    .line 509
    :cond_a
    if-ne p1, v7, :cond_0

    move v4, v5

    .line 510
    goto :goto_1

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x29 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2c -> :sswitch_1
        0x31 -> :sswitch_1
        0x3a -> :sswitch_1
        0x44 -> :sswitch_2
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_4
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method fakeHoldBeforeDial()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 721
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 723
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 724
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const-string v0, "GsmConnection"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    .line 848
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 849
    return-void
.end method

.method public getCCWT()Z
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNoLocalWaitingTone:Z

    return v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCliValid:Lcom/android/internal/telephony/Connection$CliValid;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    return v0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 310
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 316
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mStopedTimer:Z

    if-eqz v2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-wide v0

    .line 320
    :cond_1
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 322
    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_0

    .line 325
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    goto :goto_0
.end method

.method getGSMIndex()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 728
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    if-ltz v0, :cond_0

    .line 729
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 731
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    .line 334
    const-wide/16 v0, 0x0

    .line 336
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 1023
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    return v0
.end method

.method public getRawDisonnectCause()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mRawCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 823
    :cond_0
    const-string v0, ""

    .line 826
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public hangup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 361
    return-void

    .line 359
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    .line 1062
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1028
    if-nez p1, :cond_1

    .line 1049
    .end local p1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_0
    :goto_0
    return-void

    .line 1030
    .restart local p1    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 1032
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUUSInfo()Lcom/android/internal/telephony/UUSInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 1034
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->setUserData(Ljava/lang/Object;)V

    .line 1037
    instance-of v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 1038
    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "imsPostDialString":Ljava/lang/String;
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local p1    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    .line 1040
    .local v1, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "migrateFrom ImsPhoneConnection getPostDialState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1041
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1043
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 1044
    const-string v2, "migrateFrom: srvcc process post dial string"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    .line 742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 750
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 752
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 754
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    .line 758
    return-void
.end method

.method onDisconnect(I)Z
    .locals 1
    .param p1, "cause"    # I

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(IZ)Z

    move-result v0

    return v0
.end method

.method onDisconnect(IZ)Z
    .locals 6
    .param p1, "cause"    # I
    .param p2, "collided"    # Z

    .prologue
    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 557
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v1, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHtcPrevStateBeforeDisconnected:Lcom/android/internal/telephony/Call$State;

    .line 562
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnectTime:J

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 566
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    .line 568
    const-string v1, "GsmConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: cause="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "GsmConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "collided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    if-eqz p2, :cond_3

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCollidedDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 586
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)Z

    move-result v0

    .line 590
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 592
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->clearPostDialListeners()V

    .line 593
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 594
    return v0

    .line 582
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 440
    return-void
.end method

.method onRemoteDisconnect(I)V
    .locals 1
    .param p1, "causeCode"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mRawCause:I

    .line 526
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPreciseCause:I

    .line 527
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 539
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 762
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mHoldingStartTime:J

    .line 763
    return-void
.end method

.method playTone(C)V
    .locals 5
    .param p1, "c"    # C

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_0

    .line 1079
    :try_start_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x8

    const/16 v4, 0x46

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :cond_0
    const/4 v1, 0x0

    .line 1089
    .local v1, "tone":I
    packed-switch p1, :pswitch_data_0

    .line 1127
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v2, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1128
    .end local v1    # "tone":I
    :goto_1
    return-void

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "GSMConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_1

    .line 1091
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "tone":I
    :pswitch_1
    const/4 v1, 0x0

    .line 1092
    goto :goto_0

    .line 1094
    :pswitch_2
    const/4 v1, 0x1

    .line 1095
    goto :goto_0

    .line 1097
    :pswitch_3
    const/4 v1, 0x2

    .line 1098
    goto :goto_0

    .line 1100
    :pswitch_4
    const/4 v1, 0x3

    .line 1101
    goto :goto_0

    .line 1103
    :pswitch_5
    const/4 v1, 0x4

    .line 1104
    goto :goto_0

    .line 1106
    :pswitch_6
    const/4 v1, 0x5

    .line 1107
    goto :goto_0

    .line 1109
    :pswitch_7
    const/4 v1, 0x6

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_8
    const/4 v1, 0x7

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_9
    const/16 v1, 0x8

    .line 1116
    goto :goto_0

    .line 1118
    :pswitch_a
    const/16 v1, 0x9

    .line 1119
    goto :goto_0

    .line 1121
    :pswitch_b
    const/16 v1, 0xa

    .line 1122
    goto :goto_0

    .line 1124
    :pswitch_c
    const/16 v1, 0xb

    goto :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 380
    const-string v0, "GsmConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 387
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 393
    const-string v1, "GsmConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    return-void

    .line 398
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPostDialString:Ljava/lang/String;

    .line 406
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNextPostDialChar:I

    .line 415
    const-string v1, "proceedAfterWildChar"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method releaseToneGenerator()V
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 1071
    :cond_0
    return-void
.end method

.method public restartTimer()V
    .locals 2

    .prologue
    .line 1178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    .line 1179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    .line 1180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 1181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mStopedTimer:Z

    .line 1182
    return-void
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 370
    return-void

    .line 368
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCCWT(Z)V
    .locals 0
    .param p1, "noLocalWaitingTone"    # Z

    .prologue
    .line 1152
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNoLocalWaitingTone:Z

    .line 1153
    return-void
.end method

.method public setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
    .locals 0
    .param p1, "cliValid"    # Lcom/android/internal/telephony/Connection$CliValid;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCliValid:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1143
    return-void
.end method

.method public setDialString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setconnectTimeReal(J)V
    .locals 1
    .param p1, "connectTimeReal"    # J

    .prologue
    .line 1188
    iput-wide p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    .line 1189
    return-void
.end method

.method srvccReleaseWakeLock()V
    .locals 5

    .prologue
    .line 988
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const-string v1, "srvccReleaseWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 998
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GsmConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPartialWakeLock.release: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 997
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTime:J

    .line 1172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConnectTimeReal:J

    .line 1173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mDuration:J

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mStopedTimer:Z

    .line 1175
    return-void
.end method

.method stopTone()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 1132
    const-string v0, "GSMConnection"

    const-string v1, "mToneStopper: mToneGenerator == null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .locals 9
    .param p1, "dc"    # Lcom/android/internal/telephony/DriverCall;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 601
    const/4 v0, 0x0

    .line 602
    .local v0, "changed":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 603
    .local v3, "wasConnectingInOrOut":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    move v4, v5

    .line 605
    .local v4, "wasHolding":Z
    :goto_0
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 608
    .local v1, "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v7, :cond_6

    .line 609
    const-string v7, "update: mOrigConnection is not null"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 621
    :cond_0
    :goto_1
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 622
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 623
    const/4 v0, 0x1

    .line 624
    const-string v7, ""

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    .line 634
    :cond_1
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--dssds---- empty:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 638
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    .line 639
    iget v7, p1, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberPresentation:I

    .line 641
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v7, :cond_9

    .line 642
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v7, :cond_2

    .line 643
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 645
    :cond_2
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 646
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 647
    const/4 v0, 0x1

    .line 669
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update: parent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasNewParent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v8, :cond_c

    :goto_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cnapNamePresentation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapNamePresentation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cnapName empty:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 694
    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_3

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 698
    :cond_3
    if-eqz v0, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_4

    .line 700
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 705
    :cond_4
    return v0

    .end local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4    # "wasHolding":Z
    :cond_5
    move v4, v6

    .line 603
    goto/16 :goto_0

    .line 611
    .restart local v1    # "newParent":Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v4    # "wasHolding":Z
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mNumberConverted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 612
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mNumberConverted:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mConvertedNumber:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 614
    :cond_7
    const-string v7, "update: phone # changed!"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 615
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mAddress:Ljava/lang/String;

    .line 616
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 626
    :cond_8
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 627
    const/4 v0, 0x1

    .line 628
    iget-object v7, p1, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCnapName:Ljava/lang/String;

    goto/16 :goto_2

    .line 650
    :cond_9
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 651
    .local v2, "parentStateChange":Z
    if-nez v0, :cond_a

    if-eqz v2, :cond_b

    :cond_a
    move v0, v5

    :goto_5
    goto/16 :goto_3

    :cond_b
    move v0, v6

    goto :goto_5

    .end local v2    # "parentStateChange":Z
    :cond_c
    move v5, v6

    .line 669
    goto/16 :goto_4
.end method

.method public updateCodecInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    .line 1194
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/Connection;->updateCodecInfo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
