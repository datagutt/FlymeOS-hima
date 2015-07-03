.class public final Lcom/android/internal/telephony/gsm/GsmCallTracker;
.super Lcom/android/internal/telephony/CallTracker;
.source "GsmCallTracker.java"


# static fields
.field private static final DBG_POLL:Z = false

.field static final EMERGENCY_CATEGORY_PROPERTY:Ljava/lang/String; = "ro.ril.ecc_category"

.field private static final EVENT_CC_ALPHA_NOTIFY:I = 0x78

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final REPEAT_POLLING:Z


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mCCWTInfo:Z

.field mCallSecurityMgr:Lcom/android/internal/telephony/CallSecurityManager;

.field mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

.field mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

.field mDesiredMute:Z

.field mDroppedDuringPoll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyCategoryMap:Ljava/util/HashMap;
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

.field mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mHangupPendingMO:Z

.field mLastBlockResult:Lcom/android/internal/telephony/CallSecurityManager$Result;

.field private mNeedUpdateForFirstQuery:Z

.field mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

.field mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

.field mState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private mVoiceCallAbility:Z

.field mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

.field mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/CallTracker;-><init>()V

    .line 81
    const-string v1, "GsmCallTracker"

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    .line 94
    new-array v1, v4, [Lcom/android/internal/telephony/gsm/GsmConnection;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 95
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    .line 96
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    .line 103
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 105
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 106
    new-instance v1, Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/GsmCall;-><init>(Lcom/android/internal/telephony/gsm/GsmCallTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 115
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 117
    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->NONE:Lcom/android/internal/telephony/Call$SrvccState;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mSrvccState:Lcom/android/internal/telephony/Call$SrvccState;

    .line 1779
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 139
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    .line 143
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x9

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xa

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x33

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerCLINotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x34

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerCallWaitingInformation(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3c

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCallWaitingTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->loadEmergencyCategory()V

    .line 158
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x3e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForECallUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x78

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x42

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceSpeechCodecInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resetVoiceSpeechCodecInfo()V

    .line 171
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    if-eqz v1, :cond_2

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->initSecurityCenter(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_2
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v2, "init security center error"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkInvalidState(Ljava/util/List;)Z
    .locals 7
    .param p1, "polledCalls"    # Ljava/util/List;

    .prologue
    const/4 v4, 0x1

    .line 715
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v5, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 717
    const/4 v2, 0x0

    .line 718
    .local v2, "isCallDialing":Z
    const/4 v1, 0x0

    .line 719
    .local v1, "isCallActive":Z
    const/4 v0, 0x0

    .line 720
    .local v0, "c":Lcom/android/internal/telephony/DriverCall;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 721
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Lcom/android/internal/telephony/DriverCall;
    check-cast v0, Lcom/android/internal/telephony/DriverCall;

    .line 722
    .restart local v0    # "c":Lcom/android/internal/telephony/DriverCall;
    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v5, v6, :cond_1

    .line 723
    const/4 v1, 0x1

    .line 729
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 734
    .end local v0    # "c":Lcom/android/internal/telephony/DriverCall;
    .end local v1    # "isCallActive":Z
    .end local v2    # "isCallDialing":Z
    .end local v3    # "j":I
    :goto_2
    return v4

    .line 724
    .restart local v0    # "c":Lcom/android/internal/telephony/DriverCall;
    .restart local v1    # "isCallActive":Z
    .restart local v2    # "isCallDialing":Z
    .restart local v3    # "j":I
    :cond_1
    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    sget-object v6, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    if-ne v5, v6, :cond_0

    .line 726
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 720
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 734
    .end local v0    # "c":Lcom/android/internal/telephony/DriverCall;
    .end local v1    # "isCallActive":Z
    .end local v2    # "isCallDialing":Z
    .end local v3    # "j":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private dumpState()V
    .locals 6

    .prologue
    .line 1206
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringing call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1211
    .local v1, "l":Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1212
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Foreground call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1218
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1219
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1222
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Background call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmCall;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1225
    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v0, v2, :cond_2

    .line 1226
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1229
    :cond_2
    return-void
.end method

.method private static final eMobileDialReplacement()Z
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method private fakeHoldForegroundBeforeDial()V
    .locals 5

    .prologue
    .line 333
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 335
    .local v1, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 336
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 338
    .local v0, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->fakeHoldBeforeDial()V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    return-void
.end method

.method private getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
    .locals 2

    .prologue
    .line 1183
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_VALID:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1184
    .local v0, "cliValid":Lcom/android/internal/telephony/Connection$CliValid;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    iget v1, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->cliValid:I

    packed-switch v1, :pswitch_data_0

    .line 1196
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 1198
    :cond_0
    return-object v0

    .line 1187
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_WITHHELD:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1188
    goto :goto_0

    .line 1190
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Connection$CliValid;->CLI_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$CliValid;

    .line 1191
    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1419
    packed-switch p1, :pswitch_data_0

    .line 1429
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    :goto_0
    return-object v0

    .line 1421
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1423
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1425
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1427
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    goto :goto_0

    .line 1419
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleECallUSSD(Landroid/os/AsyncResult;)V
    .locals 17
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1650
    const-string v14, "handleECallUSSD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 1653
    .local v12, "ussdResult":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1655
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ussdResult = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    .line 1659
    .local v13, "ussdlenght":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEccUssdMap()Ljava/util/HashMap;

    move-result-object v3

    .line 1660
    .local v3, "eccUSSDmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    div-int/lit8 v14, v13, 0x2

    new-array v5, v14, [B

    .line 1662
    .local v5, "hexCode":[B
    invoke-static {v12}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    .line 1664
    const/4 v4, 0x0

    .line 1665
    .local v4, "errorflag":Z
    const/4 v14, 0x3

    new-array v8, v14, [I

    .line 1666
    .local v8, "key":[I
    const/4 v14, 0x3

    new-array v9, v14, [I

    .line 1667
    .local v9, "key1":[I
    const/4 v14, 0x3

    new-array v10, v14, [I

    .line 1668
    .local v10, "position":[I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    .local v11, "sb":Ljava/lang/StringBuilder;
    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1672
    if-eqz v3, :cond_0

    :try_start_0
    array-length v14, v5

    const/4 v15, 0x3

    if-lt v14, v15, :cond_0

    .line 1673
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/4 v14, 0x3

    if-ge v6, v14, :cond_4

    .line 1674
    aget-byte v14, v5, v6

    aput v14, v8, v6

    .line 1675
    aget v14, v8, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1676
    aget v14, v8, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    aput v14, v10, v6

    .line 1678
    aget v7, v10, v6

    .line 1679
    .local v7, "index":I
    array-length v14, v5

    if-gt v7, v14, :cond_3

    .line 1680
    add-int/lit8 v14, v7, -0x1

    aget-byte v14, v5, v14

    aput v14, v9, v6

    .line 1681
    aget v14, v9, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 1682
    aget v14, v9, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1673
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1685
    :cond_3
    const/4 v4, 0x1

    .line 1686
    const-string v14, "error parsing USSD - out of array"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1696
    .end local v7    # "index":I
    :cond_4
    :goto_2
    if-nez v4, :cond_0

    .line 1697
    const/16 v14, 0x23

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1699
    .local v1, "UVR":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v15, 0x0

    invoke-interface {v14, v1, v15}, Lcom/android/internal/telephony/CommandsInterface;->requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1702
    .end local v1    # "UVR":Ljava/lang/String;
    .end local v6    # "i":I
    :catch_0
    move-exception v2

    .line 1703
    .local v2, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v15, "error parsing USSD"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1690
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "i":I
    :cond_5
    const/4 v4, 0x1

    .line 1691
    :try_start_1
    const-string v14, "error parsing USSD"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleRadioNotAvailable()V
    .locals 0

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 1145
    return-void
.end method

.method private handleUnsolicitedCCWTInfo(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v1, 0x0

    .line 1712
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 1713
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 1714
    const-string v0, "[handleUnsolicitedCCWTInfo] null ar.result in response!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[handleUnsolicitedCCWTInfo] mCCWTInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1718
    goto :goto_1
.end method

.method private handleUnsolicitedCLIInfo(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1150
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1151
    const-string v1, "handleUnsolicitedCLIInfo"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1152
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1153
    const-string v1, "[handleUnsolicitedCLIInfo] null ar.result in response!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1180
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1158
    .local v0, "CLIInfo":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_2

    .line 1159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 1161
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1162
    new-instance v1, Lcom/android/internal/telephony/gsm/ClipInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/ClipInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    .line 1163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    if-eqz v1, :cond_0

    .line 1164
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->number:Ljava/lang/String;

    .line 1167
    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1168
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->toa:I

    .line 1174
    :cond_3
    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mClipInfo:Lcom/android/internal/telephony/gsm/ClipInfo;

    aget-object v2, v0, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/gsm/ClipInfo;->cliValid:I

    goto :goto_0
.end method

.method private initSecurityCenter(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "QQ enabled security center"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/android/internal/telephony/CallSecurityManager;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/CallSecurityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallSecurityMgr:Lcom/android/internal/telephony/CallSecurityManager;

    .line 183
    return-void
.end method

.method private internalClearDisconnected()V
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->clearDisconnected()V

    .line 632
    return-void
.end method

.method private static final isEmergencyCallCategory()Z
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method private loadEmergencyCategory()V
    .locals 6

    .prologue
    .line 1726
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    .line 1727
    const-string v3, "ro.ril.ecc_category"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1728
    .local v1, "eccCategoryProp":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1729
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECC Category List: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1731
    .local v0, "eccCategoryList":[Ljava/lang/String;
    array-length v3, v0

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1732
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 1733
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    aget-object v4, v0, v2

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1732
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1737
    .end local v0    # "eccCategoryList":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private obtainCompleteMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private obtainCompleteMessage(I)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 649
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private operationComplete()V
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    .line 666
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    if-eqz v0, :cond_1

    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 668
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentCalls(Landroid/os/Message;)V

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    if-gez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GsmCallTracker.pendingOperations < 0"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingOperations:I

    goto :goto_0
.end method

.method private processReplacedDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 483
    const-string v1, ""

    .line 484
    .local v1, "replacedDialStr":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->shouldReplaceDialString()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    const-string v2, "gsm.operator.numeric"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "currentMCC":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "440"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "441"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sbmDialReplacement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0046010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SBM replacedDialStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 503
    .end local v0    # "currentMCC":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 494
    .restart local v0    # "currentMCC":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->eMobileDialReplacement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eMobile replacedDialStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseSecurityManager()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallSecurityMgr:Lcom/android/internal/telephony/CallSecurityManager;

    .line 290
    return-void
.end method

.method private static final sbmDialReplacement()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method private setVoiceSpeechCodecMode()V
    .locals 4

    .prologue
    .line 1871
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1872
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isSprintGroupSku()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return-void

    .line 1876
    :cond_1
    const/4 v1, 0x0

    .line 1878
    .local v1, "conn":Lcom/android/internal/telephony/Connection;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1879
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1886
    :cond_2
    :goto_1
    const-string v0, "UNKNOWN"

    .line 1887
    .local v0, "codec":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1888
    const-string v3, "Codec"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/Connection;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1889
    .local v2, "realCodec":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "AMR-WB"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1890
    const-string v0, "AMR-WB"

    .line 1892
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateCodecToAudio(Ljava/lang/String;)V

    goto :goto_0

    .line 1880
    .end local v0    # "codec":Ljava/lang/String;
    .end local v2    # "realCodec":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1881
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_1

    .line 1882
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1883
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_1
.end method

.method private static final shouldReplaceDialString()Z
    .locals 1

    .prologue
    .line 477
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sbmDialReplacement()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->eMobileDialReplacement()Z

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

.method private updateCallStateAfterLocallyHangupConnection(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 6
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 1268
    if-eqz p1, :cond_1

    .line 1269
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1270
    .local v1, "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 1271
    .local v4, "s":I
    :goto_0
    const/4 v3, 0x0

    .line 1273
    .local v3, "isAlive":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 1274
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1275
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget v5, v0, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    if-nez v5, :cond_3

    .line 1276
    const/4 v3, 0x1

    .line 1281
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    .line 1282
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v5, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 1285
    .end local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "i":I
    .end local v3    # "isAlive":Z
    .end local v4    # "s":I
    :cond_1
    return-void

    .line 1270
    .restart local v1    # "conns":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1273
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .restart local v2    # "i":I
    .restart local v3    # "isAlive":Z
    .restart local v4    # "s":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateCodecToAudio(Ljava/lang/String;)V
    .locals 3
    .param p1, "codec"    # Ljava/lang/String;

    .prologue
    .line 1898
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1899
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1901
    .local v0, "audioManager":Landroid/media/AudioManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update codec to Audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CALL_CODEC="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1904
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method private updatePhoneState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 680
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 690
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    .line 695
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_6

    .line 696
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneInPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAccPhoneOff:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_2

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    .line 712
    :cond_2
    return-void

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v1

    if-nez v1, :cond_5

    .line 684
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 686
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 701
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 705
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhoneInPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAccPhoneIn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method acceptCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 529
    const-string v0, "phone"

    const-string v1, "acceptCall: incoming..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->acceptCall(Landroid/os/Message;)V

    .line 539
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_0

    .line 537
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected assignPendingMO(Ljava/lang/String;)V
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1857
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1858
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1860
    return-void
.end method

.method canConference()Z
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method canDial()Z
    .locals 5

    .prologue
    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    .line 601
    .local v2, "serviceState":I
    const-string v3, "ro.telephony.disable-call"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, "disableCall":Ljava/lang/String;
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 614
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 604
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method canTransfer()Z
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearDisconnected()V
    .locals 1

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 587
    return-void
.end method

.method conference()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->conference(Landroid/os/Message;)V

    .line 574
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 509
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 11
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "clirMode"    # I
    .param p3, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getTempCLIR()I

    move-result v6

    .line 354
    .local v6, "tmpCLIR":I
    if-eqz v6, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 356
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "temp CLIR: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    move p2, v6

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v7

    if-nez v7, :cond_1

    .line 365
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v6    # "tmpCLIR":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 368
    .restart local v6    # "tmpCLIR":I
    :cond_1
    move-object v3, p1

    .line 369
    .local v3, "origNumber":Ljava/lang/String;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v7, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->convertNumberIfNecessary(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_4

    .line 377
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 378
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, "phoneNum":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 381
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 400
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v4    # "phoneNum":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->fakeHoldForegroundBeforeDial()V

    .line 403
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    .line 405
    new-instance v7, Lcom/android/internal/telephony/CallStateException;

    const-string v8, "cannot dial in current state"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 408
    :cond_5
    new-instance v7, Lcom/android/internal/telephony/gsm/GsmConnection;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkForTestEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {v7, v8, v9, p0, v10}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 410
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isEmergencyCallCategory()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 415
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_6

    .line 418
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x0

    invoke-interface {v8, v7, v9}, Lcom/android/internal/telephony/CommandsInterface;->requestSetEmergencyCallCategory(ILandroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 425
    :cond_6
    :goto_0
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_7

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x4e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_9

    .line 430
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/4 v8, 0x7

    iput v8, v7, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    .line 457
    :goto_1
    iget-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    if-eqz v7, :cond_8

    .line 458
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;->setConverted(Ljava/lang/String;)V

    .line 459
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNumberConverted:Z

    .line 462
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 463
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 465
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v7

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "ex":Ljava/lang/NumberFormatException;
    :try_start_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mEmergencyCategoryMap:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is not a valid number!!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 437
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_9
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 441
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->processReplacedDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "replacedDialStr":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 444
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v5, p2, p3, v8}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    goto :goto_1

    .line 449
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v9

    invoke-interface {v7, v8, p2, p3, v9}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 9

    .prologue
    .line 186
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "GsmCallTracker dispose"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCallStateChanged(Landroid/os/Handler;)V

    .line 192
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 193
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 195
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterCLINotify(Landroid/os/Handler;)V

    .line 196
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterCallWaitingInformation(Landroid/os/Handler;)V

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 201
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForECallUSSD(Landroid/os/Handler;)V

    .line 205
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 208
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceSpeechCodecInfo(Landroid/os/Handler;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, "arr$":[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v1, v0, v5

    .line 213
    .local v1, "c":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_2

    .line 220
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 221
    iget-object v7, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mDialString:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 223
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    .line 211
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 229
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "dispose: call connnection onDisconnect, cause LOST_SIGNAL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v4

    .line 235
    .local v4, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "dispose: unexpected error on hangup"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 240
    .end local v1    # "c":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v4    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_4
    const/4 v3, 0x0

    .line 253
    .local v3, "eccCallSwitchPhone":Z
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v7, :cond_5

    .line 254
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->getDialString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 255
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->dispose()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    const/4 v3, 0x1

    .line 270
    :cond_5
    :goto_2
    if-eqz v3, :cond_8

    .line 271
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 279
    :goto_3
    sget-boolean v7, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v7, :cond_6

    .line 281
    :try_start_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->releaseSecurityManager()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 286
    :cond_6
    :goto_4
    return-void

    .line 259
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 260
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "dispose: call mPendingMO.onDsiconnect, cause LOST_SIGNAL"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 265
    :catch_1
    move-exception v4

    .line 266
    .restart local v4    # "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "dispose: unexpected error on hangup"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 275
    .end local v4    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    goto :goto_3

    .line 282
    :catch_2
    move-exception v2

    .line 283
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v8, "QQ release security center error"

    invoke-static {v7, v8, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1747
    const-string v1, "GsmCallTracker extends:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/CallTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConnections: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1751
    const-string v1, "  mConnections[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v3, v3, v0

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1750
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1753
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallEndedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVoiceCallStartedRegistrants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDroppedDuringPoll: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1757
    const-string v1, "  mDroppedDuringPoll[%d]=%s\n"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1756
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1759
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRingingCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mForegroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mBackgroundCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mHangupPendingMO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPhone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDesiredMute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    return-void
.end method

.method public enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z
    .locals 6
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x1

    .line 1781
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1782
    .local v2, "result":Z
    if-eqz p1, :cond_0

    .line 1783
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1785
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1786
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1788
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1790
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot1 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot1.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1792
    const-string v3, "gsm.slot1.audio.state"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1793
    const-string v3, "MODE_IN_CALL_2=ON"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1794
    const-string v3, "MODE_IN_CALL_2=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1795
    const-string v3, "gsm.slot2.audio.state"

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot2 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot2.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1836
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v2

    .line 1798
    .restart local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1799
    const-string v3, "slot1 audio path is ON since can not change audio path to slot2!!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1814
    :catch_0
    move-exception v1

    .line 1815
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to GSM audio path on exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1802
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot2 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot2.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1803
    const-string v3, "gsm.slot2.audio.state"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1804
    const-string v3, "MODE_IN_CALL_1=ON"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1805
    const-string v3, "MODE_IN_CALL_1=ON"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1806
    const-string v3, "gsm.slot1.audio.state"

    const-string v4, "on"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot1 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot1.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1809
    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallAbility:Z

    .line 1810
    const-string v3, "slot2 audio path is ON since can not change audio path to slot1!!!!!"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1819
    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1820
    const-string v3, "MODE_IN_CALL_2=OFF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1821
    const-string v3, "MODE_IN_CALL_2=OFF"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1822
    const-string v3, "gsm.slot2.audio.state"

    const-string v4, "off"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot2 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot2.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1830
    :catch_1
    move-exception v1

    .line 1831
    .restart local v1    # "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch to GSM audio path exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1825
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string v3, "MODE_IN_CALL_1=OFF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1826
    const-string v3, "MODE_IN_CALL_1=OFF"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1827
    const-string v3, "gsm.slot1.audio.state"

    const-string v4, "off"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot1 audio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gsm.slot1.audio.state"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method explicitCallTransfer()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->explicitCallTransfer(Landroid/os/Message;)V

    .line 579
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "GsmCallTracker finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1408
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1409
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1410
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1415
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :goto_1
    return-object v0

    .line 1408
    .restart local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getCurrentPendingMO()Lcom/android/internal/telephony/Connection;
    .locals 6

    .prologue
    .line 1846
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v4, :cond_1

    .line 1847
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1854
    :cond_0
    :goto_0
    return-object v1

    .line 1849
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    .local v0, "arr$":[Lcom/android/internal/telephony/gsm/GsmConnection;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 1850
    .local v1, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_0

    .line 1849
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1854
    .end local v1    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMute()Z
    .locals 1

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1438
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v12, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mDropEvent:Z

    if-eqz v12, :cond_1

    .line 1439
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " GsmCallTracker drop event "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-boolean v12, v12, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    if-nez v12, :cond_2

    .line 1446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] while being destroyed. Ignoring."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1450
    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    goto :goto_0

    .line 1452
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1454
    .local v2, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    move-object/from16 v0, p1

    if-ne v0, v12, :cond_3

    .line 1457
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedsPoll:Z

    .line 1458
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastRelevantPoll:Landroid/os/Message;

    .line 1459
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1462
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-nez v12, :cond_0

    .line 1465
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handlePollCalls(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1471
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1472
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1479
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1480
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_4

    .line 1481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getFailedService(I)Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    .line 1483
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    goto/16 :goto_0

    .line 1488
    .end local v2    # "ar":Landroid/os/AsyncResult;
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1490
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->operationComplete()V

    .line 1492
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_7

    .line 1495
    const/16 v4, 0x10

    .line 1496
    .local v4, "causeCode":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "Exception during getLastCallFailCause, assuming normal disconnect"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    :goto_1
    const/16 v12, 0x22

    if-eq v4, v12, :cond_5

    const/16 v12, 0x29

    if-eq v4, v12, :cond_5

    const/16 v12, 0x2a

    if-eq v4, v12, :cond_5

    const/16 v12, 0x2c

    if-eq v4, v12, :cond_5

    const/16 v12, 0x31

    if-eq v4, v12, :cond_5

    const/16 v12, 0x3a

    if-eq v4, v12, :cond_5

    const v12, 0xffff

    if-ne v4, v12, :cond_6

    .line 1509
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v10

    check-cast v10, Landroid/telephony/gsm/GsmCellLocation;

    .line 1510
    .local v10, "loc":Landroid/telephony/gsm/GsmCellLocation;
    const v13, 0xc3ba

    const/4 v12, 0x3

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    const/4 v15, 0x1

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v12

    :goto_2
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v15

    const/4 v12, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v12

    invoke-static {v13, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1515
    .end local v10    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_6
    const/4 v9, 0x0

    .local v9, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1516
    .local v11, "s":I
    :goto_3
    if-ge v9, v11, :cond_9

    .line 1518
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1520
    .local v7, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    .line 1516
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1499
    .end local v4    # "causeCode":I
    .end local v7    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v9    # "i":I
    .end local v11    # "s":I
    :cond_7
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    check-cast v12, [I

    const/4 v13, 0x0

    aget v4, v12, v13

    .restart local v4    # "causeCode":I
    goto :goto_1

    .line 1510
    .restart local v10    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    :cond_8
    const/4 v12, -0x1

    goto :goto_2

    .line 1523
    .end local v10    # "loc":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v9    # "i":I
    .restart local v11    # "s":I
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1526
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1531
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v4    # "causeCode":I
    .end local v9    # "i":I
    .end local v11    # "s":I
    :sswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsWhenSafe()V

    goto/16 :goto_0

    .line 1535
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioAvailable()V

    goto/16 :goto_0

    .line 1539
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleRadioNotAvailable()V

    goto/16 :goto_0

    .line 1544
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleUnsolicitedCLIInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1547
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleUnsolicitedCCWTInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1553
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "EVENT_DELAY_CALL_STATE_CHANGE"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1560
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "EVENT_DELAY_PHONE_STATE_CHANGE"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPhoneStateChanged()V

    goto/16 :goto_0

    .line 1568
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->handleECallUSSD(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1575
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, " handleMessage (EVENT_CC_ALPHA_NOTIFY)"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v12, :cond_0

    .line 1577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 1581
    const/4 v1, 0x0

    .line 1582
    .local v1, "alpha":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1583
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    if-eqz v2, :cond_a

    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v12, :cond_a

    .line 1585
    :try_start_0
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    .line 1592
    .local v3, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v1, :cond_0

    .line 1593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "EVENT_CC_ALPHA_NOTIFY: notify call state changed"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    instance-of v12, v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    if-eqz v12, :cond_b

    move-object v12, v3

    .line 1595
    check-cast v12, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {v12, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setDialString(Ljava/lang/String;)V

    .line 1596
    check-cast v3, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/gsm/GsmConnection;->setUserData(Ljava/lang/Object;)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1586
    :catch_0
    move-exception v8

    .line 1587
    .local v8, "e":Ljava/lang/ClassCastException;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_CC_ALPHA_NOTIFY: exception e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1599
    .end local v8    # "e":Ljava/lang/ClassCastException;
    .restart local v3    # "c":Lcom/android/internal/telephony/Connection;
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "EVENT_CC_ALPHA_NOTIFY: not an instance of GsmConnection!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1610
    .end local v1    # "alpha":Ljava/lang/String;
    .end local v2    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "c":Lcom/android/internal/telephony/Connection;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    const-string v13, "EVENT_UNSOL_VOICE_SPEECH_CODEC_INFO)"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 1613
    .restart local v2    # "ar":Landroid/os/AsyncResult;
    iget-object v12, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, [I

    move-object v6, v12

    check-cast v6, [I

    .line 1615
    .local v6, "codecinfo":[I
    if-eqz v6, :cond_0

    array-length v12, v6

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->resetVoiceSpeechCodecInfo()V

    .line 1619
    const/4 v5, 0x0

    .line 1620
    .local v5, "changed":Z
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_5
    array-length v12, v6

    if-ge v9, v12, :cond_c

    .line 1622
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    array-length v12, v12

    if-gt v9, v12, :cond_c

    .line 1623
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    add-int/lit8 v13, v9, -0x1

    aget v14, v6, v9

    invoke-static {v14}, Lcom/android/internal/telephony/Connection;->convertVoiceSpeechCodecToString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 1620
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1629
    :cond_c
    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    array-length v12, v12

    if-ge v9, v12, :cond_e

    .line 1630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    aget-object v7, v12, v9

    .line 1631
    .restart local v7    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v7, :cond_d

    .line 1632
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnVoiceSpeechCodecInfo(ILcom/android/internal/telephony/Connection;)Z

    move-result v12

    or-int/2addr v5, v12

    .line 1629
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1636
    .end local v7    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_e
    if-eqz v5, :cond_0

    .line 1637
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setVoiceSpeechCodecMode()V

    .line 1638
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 1450
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x3b -> :sswitch_9
        0x3c -> :sswitch_8
        0x3e -> :sswitch_b
        0x42 -> :sswitch_d
        0x43 -> :sswitch_a
        0x78 -> :sswitch_c
    .end sparse-switch
.end method

.method protected declared-synchronized handlePollCalls(Landroid/os/AsyncResult;)V
    .locals 32
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    if-nez v28, :cond_1

    .line 744
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/List;

    .line 756
    .local v24, "polledCalls":Ljava/util/List;
    :goto_0
    const/16 v21, 0x0

    .line 757
    .local v21, "newRinging":Lcom/android/internal/telephony/Connection;
    const/16 v22, 0x0

    .line 758
    .local v22, "newUnknown":Lcom/android/internal/telephony/Connection;
    const/4 v15, 0x0

    .line 760
    .local v15, "hasNonHangupStateChanged":Z
    const/4 v14, 0x0

    .line 761
    .local v14, "hasAnyCallDisconnected":Z
    const/16 v20, 0x0

    .line 762
    .local v20, "needsPollDelay":Z
    const/16 v26, 0x0

    .line 765
    .local v26, "unknownConnectionAppeared":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->checkInvalidState(Ljava/util/List;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 766
    const-string v28, "ignore temporary call status!"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    .end local v14    # "hasAnyCallDisconnected":Z
    .end local v15    # "hasNonHangupStateChanged":Z
    .end local v20    # "needsPollDelay":Z
    .end local v21    # "newRinging":Lcom/android/internal/telephony/Connection;
    .end local v22    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .end local v24    # "polledCalls":Ljava/util/List;
    .end local v26    # "unknownConnectionAppeared":Z
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 745
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->isCommandExceptionRadioNotAvailable(Ljava/lang/Throwable;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 748
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .restart local v24    # "polledCalls":Ljava/util/List;
    goto :goto_0

    .line 752
    .end local v24    # "polledCalls":Ljava/util/List;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 743
    :catchall_0
    move-exception v28

    monitor-exit p0

    throw v28

    .line 773
    .restart local v14    # "hasAnyCallDisconnected":Z
    .restart local v15    # "hasNonHangupStateChanged":Z
    .restart local v20    # "needsPollDelay":Z
    .restart local v21    # "newRinging":Lcom/android/internal/telephony/Connection;
    .restart local v22    # "newUnknown":Lcom/android/internal/telephony/Connection;
    .restart local v24    # "polledCalls":Ljava/util/List;
    .restart local v26    # "unknownConnectionAppeared":Z
    :cond_3
    const/16 v25, 0x0

    .line 774
    .local v25, "result":Lcom/android/internal/telephony/CallSecurityManager$Result;
    :try_start_2
    sget-boolean v28, Lcom/android/internal/telephony/CallSecurityManager;->ENABLE_SECURITY_CENTER:Z

    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallSecurityMgr:Lcom/android/internal/telephony/CallSecurityManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCallSecurityMgr:Lcom/android/internal/telephony/CallSecurityManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastBlockResult:Lcom/android/internal/telephony/CallSecurityManager$Result;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CallSecurityManager;->isBlockedBySecurityManager(Ljava/util/List;Lcom/android/internal/telephony/PhoneConstants$State;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CallSecurityManager$Result;)Lcom/android/internal/telephony/CallSecurityManager$Result;

    move-result-object v25

    .line 779
    :cond_4
    if-eqz v25, :cond_5

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallSecurityManager$Result;->blocked:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 780
    const-string v28, "Security blocked!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    .line 782
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mLastBlockResult:Lcom/android/internal/telephony/CallSecurityManager$Result;

    goto :goto_1

    .line 787
    :cond_5
    const/16 v17, 0x0

    .local v17, "i":I
    const/4 v10, 0x0

    .local v10, "curDC":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v12

    .line 788
    .local v12, "dcSize":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_1d

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v9, v28, v17

    .line 790
    .local v9, "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    const/4 v11, 0x0

    .line 793
    .local v11, "dc":Lcom/android/internal/telephony/DriverCall;
    if-ge v10, v12, :cond_6

    .line 794
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "dc":Lcom/android/internal/telephony/DriverCall;
    check-cast v11, Lcom/android/internal/telephony/DriverCall;

    .line 796
    .restart local v11    # "dc":Lcom/android/internal/telephony/DriverCall;
    iget v0, v11, Lcom/android/internal/telephony/DriverCall;->index:I

    move/from16 v28, v0

    add-int/lit8 v29, v17, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 797
    add-int/lit8 v10, v10, 0x1

    .line 806
    :cond_6
    :goto_3
    if-nez v9, :cond_12

    if-eqz v11, :cond_12

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aput-object v29, v28, v17

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move/from16 v0, v17

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/gsm/GsmConnection;->mIndex:I

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    .line 816
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 819
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 820
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 822
    :try_start_3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "poll: hangupPendingMO, hangup conn "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 825
    :catch_0
    move-exception v13

    .line 826
    .local v13, "ex":Lcom/android/internal/telephony/CallStateException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "unexpected error on hangup"

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 799
    .end local v13    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 834
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v29, v28, v17

    .line 853
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getHoConnection(Lcom/android/internal/telephony/DriverCall;)Lcom/android/internal/telephony/Connection;

    move-result-object v16

    .line 854
    .local v16, "hoConnection":Lcom/android/internal/telephony/Connection;
    if-eqz v16, :cond_f

    .line 856
    if-eqz v11, :cond_9

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->srvccReleaseWakeLock()V

    .line 861
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->migrateFrom(Lcom/android/internal/telephony/Connection;)V

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 863
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_a
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 864
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 865
    .local v6, "c":Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "HO Conn state is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    iget-object v0, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v17

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Removing HO conn "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v6, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    check-cast v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v6    # "c":Lcom/android/internal/telephony/Connection;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(Z)Z

    .line 872
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 875
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    aget-object v29, v29, v17

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyHandoverStateChanged(Lcom/android/internal/telephony/Connection;)V

    .line 905
    .end local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    :cond_c
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnVoiceSpeechCodecInfo(ILcom/android/internal/telephony/Connection;)Z

    .line 909
    :cond_d
    const/4 v15, 0x1

    .line 788
    :cond_e
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 876
    .restart local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v21, v28, v17

    goto :goto_5

    .line 885
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Phantom call appeared "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_11

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_11

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 893
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 899
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v22, v28, v17

    .line 901
    const/16 v26, 0x1

    goto/16 :goto_5

    .line 910
    .end local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_12
    if-eqz v9, :cond_13

    if-nez v11, :cond_13

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v29, v28, v17

    .line 920
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    if-ltz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "UNKNOWN"

    aput-object v29, v28, v17

    goto/16 :goto_6

    .line 927
    :cond_13
    if-eqz v9, :cond_16

    if-eqz v11, :cond_16

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->compareTo(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    if-nez v28, :cond_16

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, p0

    move/from16 v3, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/android/internal/telephony/gsm/GsmConnection;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V

    aput-object v29, v28, v17

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v21, v28, v17

    .line 938
    :cond_14
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mConnections:[Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    aget-object v28, v28, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnVoiceSpeechCodecInfo(ILcom/android/internal/telephony/Connection;)Z

    .line 942
    :cond_15
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 943
    :cond_16
    if-eqz v9, :cond_1c

    if-eqz v11, :cond_1c

    .line 944
    const/4 v8, 0x0

    .line 946
    .local v8, "changed":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_17

    .line 947
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateConnVoiceSpeechCodecInfo(ILcom/android/internal/telephony/Connection;)Z

    move-result v8

    .line 952
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v28

    if-eqz v28, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getECCUssdStatus()Z

    move-result v28

    if-eqz v28, :cond_19

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->getEccUssdString()Ljava/lang/String;

    move-result-object v27

    .line 954
    .local v27, "ussd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ussd"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "oldState"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "dc.State"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-eqz v27, :cond_19

    .line 961
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    .line 962
    .local v23, "oldState":Lcom/android/internal/telephony/Call$State;
    sget-object v28, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_18

    sget-object v28, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_19

    :cond_18
    iget-object v0, v11, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_19

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getAddress()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->requestSendECallUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 973
    .end local v23    # "oldState":Lcom/android/internal/telephony/Call$State;
    .end local v27    # "ussd":Ljava/lang/String;
    :cond_19
    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmConnection;->update(Lcom/android/internal/telephony/DriverCall;)Z

    move-result v28

    or-int v8, v8, v28

    .line 975
    if-nez v15, :cond_1a

    if-eqz v8, :cond_1b

    :cond_1a
    const/4 v15, 0x1

    .line 977
    :goto_7
    goto/16 :goto_6

    .line 975
    :cond_1b
    const/4 v15, 0x0

    goto :goto_7

    .line 980
    .end local v8    # "changed":Z
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_e

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    if-ltz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceSpeechCodecInfo:[Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "UNKNOWN"

    aput-object v29, v28, v17

    goto/16 :goto_6

    .line 1011
    .end local v9    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v11    # "dc":Lcom/android/internal/telephony/DriverCall;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1e

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Pending MO dropped before poll fg state:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1017
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1020
    :cond_1e
    if-eqz v21, :cond_1f

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getCliValid()Lcom/android/internal/telephony/Connection$CliValid;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V

    .line 1023
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCCWTInfo:Z

    move/from16 v28, v0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setCCWT(Z)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1031
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int/lit8 v17, v28, -0x1

    :goto_8
    if-ltz v17, :cond_25

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1035
    .restart local v9    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->isCollided()Z

    move-result v28

    if-eqz v28, :cond_21

    .line 1036
    const/16 v28, 0x1

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(IZ)Z

    .line 1031
    :cond_20
    :goto_9
    add-int/lit8 v17, v17, -0x1

    goto :goto_8

    .line 1040
    :cond_21
    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming()Z

    move-result v28

    if-eqz v28, :cond_23

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmConnection;->getConnectTime()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-nez v28, :cond_23

    .line 1043
    iget v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    .line 1044
    const/16 v7, 0x10

    .line 1051
    .local v7, "cause":I
    :goto_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "missed/rejected call, conn.cause="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1052
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "setting cause to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1055
    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v28

    or-int v14, v14, v28

    .line 1056
    goto :goto_9

    .line 1046
    .end local v7    # "cause":I
    :cond_22
    const/4 v7, 0x1

    .restart local v7    # "cause":I
    goto :goto_a

    .line 1056
    .end local v7    # "cause":I
    :cond_23
    iget v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_24

    iget v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    const/16 v29, 0x7

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    .line 1058
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1059
    iget v0, v9, Lcom/android/internal/telephony/gsm/GsmConnection;->mCause:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(I)Z

    move-result v28

    or-int v14, v14, v28

    goto/16 :goto_9

    .line 1065
    .end local v9    # "conn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_28

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/Connection;

    .line 1066
    .restart local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollCalls - disconnect hoConn= "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1068
    if-eqz v24, :cond_26

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_27

    .line 1070
    :cond_26
    check-cast v16, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(Z)Z

    goto :goto_b

    .line 1072
    .restart local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    :cond_27
    check-cast v16, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v16    # "hoConnection":Lcom/android/internal/telephony/Connection;
    const/16 v28, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(Z)Z

    goto :goto_b

    .line 1077
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_29

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHandoverConnections:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 1084
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDroppedDuringPoll:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_2a

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainNoPollCompleteMessage(I)Landroid/os/Message;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/android/internal/telephony/CommandsInterface;->getLastCallFailCauseBypass(Landroid/os/Message;)V

    .line 1093
    :cond_2a
    if-eqz v20, :cond_2b

    .line 1094
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->pollCallsAfterDelay()V

    .line 1102
    :cond_2b
    if-nez v21, :cond_2c

    if-nez v15, :cond_2c

    if-eqz v14, :cond_2d

    .line 1103
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->internalClearDisconnected()V

    .line 1106
    :cond_2d
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportVoiceSpeechCodec()Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setVoiceSpeechCodecMode()V

    .line 1111
    :cond_2e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updatePhoneState()V

    .line 1113
    if-eqz v26, :cond_2f

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    .line 1119
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedUpdateForFirstQuery:Z

    move/from16 v28, v0

    if-eqz v28, :cond_30

    .line 1120
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedUpdateForFirstQuery:Z

    .line 1121
    const/4 v15, 0x1

    .line 1125
    :cond_30
    if-eqz v21, :cond_31

    .line 1127
    const/16 v28, 0x3b

    const-wide/16 v30, 0x3e8

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 1129
    :cond_31
    if-nez v15, :cond_32

    if-eqz v14, :cond_0

    .line 1131
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 3
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1328
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1329
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no connections in call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_1

    .line 1333
    const-string v0, "(ringing) hangup waiting or background"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1362
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->onHangupLocal()V

    .line 1363
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyPreciseCallStateChanged()V

    .line 1364
    return-void

    .line 1335
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_4

    .line 1336
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    const-string v0, "(foregnd) hangup dialing or alerting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmCall;->getConnections()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    goto :goto_0

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    const-string v0, "hangup all conns in active/background call, without affecting ringing call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 1346
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupForegroundResumeBackground()V

    goto :goto_0

    .line 1348
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-ne p1, v0, :cond_6

    .line 1349
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1351
    const-string v0, "hangup all conns in background call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 1355
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0

    .line 1358
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "does not belong to GsmCallTracker "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1235
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1236
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1240
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPendingMO:Lcom/android/internal/telephony/gsm/GsmConnection;

    if-ne p1, v1, :cond_1

    .line 1244
    const-string v1, "hangup: set hangupPendingMO to true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mHangupPendingMO:Z

    .line 1257
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onHangupLocal()V

    .line 1262
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mParent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateCallStateAfterLocallyHangupConnection(Lcom/android/internal/telephony/gsm/GsmCall;)V

    .line 1264
    return-void

    .line 1248
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: hangup() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method hangupAllConnections(Lcom/android/internal/telephony/gsm/GsmCall;)V
    .locals 7
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;

    .prologue
    .line 1394
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1395
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1396
    iget-object v4, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1397
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1399
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 1400
    .local v2, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hangupConnectionByIndex caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .end local v2    # "ex":Lcom/android/internal/telephony/CallStateException;
    :cond_0
    return-void
.end method

.method hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/gsm/GsmCall;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1380
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1381
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1382
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/GsmCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmConnection;

    .line 1383
    .local v0, "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 1384
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Lcom/android/internal/telephony/CommandsInterface;->hangupConnection(ILandroid/os/Message;)V

    .line 1385
    return-void

    .line 1381
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    .end local v0    # "cn":Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string v4, "no gsm index found"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method hangupForegroundResumeBackground()V
    .locals 2

    .prologue
    .line 1374
    const-string v0, "hangupForegroundResumeBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1375
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupForegroundResumeBackground(Landroid/os/Message;)V

    .line 1376
    return-void
.end method

.method hangupWaitingOrBackground()V
    .locals 2

    .prologue
    .line 1368
    const-string v0, "hangupWaitingOrBackground"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->log(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->hangupWaitingOrBackground(Landroid/os/Message;)V

    .line 1370
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GsmCallTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return-void
.end method

.method public notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyVoiceCallConnected(Lcom/android/internal/telephony/Connection;)V

    .line 324
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 312
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 314
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 301
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 302
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 303
    return-void
.end method

.method rejectCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage()Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->rejectCall(Landroid/os/Message;)V

    .line 550
    return-void

    .line 548
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "phone not ringing"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .locals 4
    .param p1, "conn"    # Lcom/android/internal/telephony/gsm/GsmConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GsmConnection;->mOwner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    if-eq v1, p0, :cond_0

    .line 1291
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "does not belong to GsmCallTracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getGSMIndex()I

    move-result v2

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->separateConnection(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1303
    :goto_0
    return-void

    .line 1297
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmCallTracker WARN: separate() on absent connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setMute(Z)V
    .locals 3
    .param p1, "mute"    # Z

    .prologue
    .line 1310
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    if-eq v0, p1, :cond_0

    .line 1311
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mMutePath:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAccMute:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->updateAccessoryFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    .line 1315
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mDesiredMute:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setMute(ZLandroid/os/Message;)V

    .line 1316
    return-void

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mAccUnmute:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setupInitState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 1
    .param p1, "initState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mNeedUpdateForFirstQuery:Z

    .line 1865
    return-void
.end method

.method switchWaitingOrHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot be in the incoming state"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->obtainCompleteMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->switchWaitingOrHoldingAndActive(Landroid/os/Message;)V

    .line 569
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallEndedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mVoiceCallStartedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 308
    return-void
.end method
