.class public Lcom/android/internal/telephony/sip/SipPhone;
.super Lcom/android/internal/telephony/sip/SipPhoneBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/sip/SipPhone$1;,
        Lcom/android/internal/telephony/sip/SipPhone$SipAudioCallAdapter;,
        Lcom/android/internal/telephony/sip/SipPhone$SipConnection;,
        Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SipPhone"

.field private static final S_DEBUG:Z = false

.field private static final TIMEOUT_ANSWER_CALL:I = 0x8

.field private static final TIMEOUT_HOLD_CALL:I = 0xf

.field private static final TIMEOUT_MAKE_CALL:I = 0xf

.field private static final VDBG:Z


# instance fields
.field private mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mProfile:Landroid/net/sip/SipProfile;

.field private mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

.field private mSipManager:Landroid/net/sip/SipManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    const/4 v1, 0x0

    .line 88
    const-string v0, "SIP:"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 68
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p3, "profile"    # Landroid/net/sip/SipProfile;

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;)V

    .line 68
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .line 82
    iput-object p3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    .line 83
    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 1
    .param p0, "x0"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/sip/SipPhone;Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/sip/SipPhone;
    .param p1, "x1"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method private dialInternal(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialInternal: dialString="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "xxxxxx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->clearDisconnected()V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "dialInternal: cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V

    .line 220
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 222
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "cannot dial in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 228
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    return-object v0

    .line 229
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Landroid/net/sip/SipException;
    const-string v2, "dialInternal: "

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 231
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getCallStateFrom(Landroid/net/sip/SipAudioCall;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p0, "sipAudioCall"    # Landroid/net/sip/SipAudioCall;

    .prologue
    .line 419
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    .line 431
    :goto_0
    return-object v1

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 421
    .local v0, "sessionState":I
    packed-switch v0, :pswitch_data_0

    .line 430
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/sip/SipPhone;->slog(Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 422
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 424
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 425
    :pswitch_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 426
    :pswitch_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 427
    :pswitch_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 428
    :pswitch_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 3
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "domain":Ljava/lang/String;
    const-string v1, ":5060"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 414
    .end local v0    # "domain":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getUriString(Landroid/net/sip/SipProfile;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipDomain(Landroid/net/sip/SipProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 436
    const-string v0, "SipPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 444
    const-string v0, "SipPhone"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 448
    const-string v0, "SipPhone"

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    return-void
.end method

.method private static slog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v0, "SipPhone"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-void
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 3
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 169
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_1

    .line 172
    :cond_0
    const-string v0, "acceptCall: accepting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->acceptCall()V

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 178
    :cond_1
    const-string v0, "acceptCall: throw CallStateException(\"phone not ringing\")"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 247
    const-string v0, "canConference: ret=true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic canDial()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public changeCallBarringPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCBFacility"    # I
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;

    .prologue
    .line 1162
    return-void
.end method

.method public checkFDNCapability()Z
    .locals 1

    .prologue
    .line 1414
    const/4 v0, 0x0

    return v0
.end method

.method public checkTestIcc()Z
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 2

    .prologue
    .line 287
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->clearDisconnected()V

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 294
    monitor-exit v1

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearVoiceMessageWaiting()V
    .locals 0

    .prologue
    .line 1210
    return-void
.end method

.method public conference()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 253
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v2, :cond_1

    .line 256
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong state to merge calls: fg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 260
    :cond_1
    :try_start_1
    const-string v0, "conference: merge fg & bg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 262
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "that"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 266
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 267
    :try_start_0
    instance-of v0, p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cannot merge with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    .end local p1    # "that":Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 271
    .restart local p1    # "that":Lcom/android/internal/telephony/Call;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    check-cast p1, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    .end local p1    # "that":Lcom/android/internal/telephony/Call;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 272
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 204
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhone;->dialInternal(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1125
    const/4 v0, 0x0

    return-object v0
.end method

.method public dial(Ljava/lang/String;ILandroid/os/Bundle;Z)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "dialFromCsDomain"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhone;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic disableLocationUpdates()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->disableLocationUpdates()V

    return-void
.end method

.method public bridge synthetic enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enableLocationUpdates()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->enableLocationUpdates()V

    return-void
.end method

.method public equals(Lcom/android/internal/telephony/sip/SipPhone;)Z
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/sip/SipPhone;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone;->getSipUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 94
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 97
    :goto_0
    return v1

    .line 95
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .line 97
    .local v0, "that":Lcom/android/internal/telephony/sip/SipPhone;
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public bridge synthetic getAvailableNetworks(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getBandCapability()I
    .locals 1

    .prologue
    .line 1233
    const/4 v0, 0x0

    return v0
.end method

.method public getCFUNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCBReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1148
    return-void
.end method

.method public bridge synthetic getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCallForwardingOption(ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 345
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method

.method public bridge synthetic getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrentDataConnectionList()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataCallList(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDataEnabled()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDetailIccStatus()[I
    .locals 1

    .prologue
    .line 1173
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getGprsState()I
    .locals 1

    .prologue
    .line 1215
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1
    .param p1, "appType"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 1139
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getNeighboringCids(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    return-void
.end method

.method public getOperatorInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 331
    return-void
.end method

.method public getPRIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPendingMmiCodes()Ljava/util/List;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneType()I
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1204
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSipUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsidyLock(ILandroid/os/Message;)V
    .locals 0
    .param p1, "querySetting"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1240
    return-void
.end method

.method public bridge synthetic getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public htcCdmaExitRadioPowerSaveMode()V
    .locals 0

    .prologue
    .line 1361
    return-void
.end method

.method public htcModemLinkOn()Z
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x0

    return v0
.end method

.method public htcNotifyDataConnectionDisconnect(Z)Z
    .locals 1
    .param p1, "dis"    # Z

    .prologue
    .line 1396
    const/4 v0, 0x0

    return v0
.end method

.method public initSpecificDialNumbers()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method public bridge synthetic isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDefaultTypeStillActive()Z
    .locals 1

    .prologue
    .line 1444
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic notifyCallForwardingIndicator()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->notifyCallForwardingIndicator()V

    return-void
.end method

.method public registerForERIInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1373
    return-void
.end method

.method public registerForLoopBackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1313
    return-void
.end method

.method public registerForMIPFailCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1289
    return-void
.end method

.method public registerForNBPCDInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1343
    return-void
.end method

.method public registerForNetworkBusy(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1277
    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1385
    return-void
.end method

.method public bridge synthetic registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalFade(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1301
    return-void
.end method

.method public bridge synthetic registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForToneSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1325
    return-void
.end method

.method public registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1433
    return-void
.end method

.method public registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1421
    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 188
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "rejectCall: rejecting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->rejectCall()V

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 194
    :cond_0
    const-string v0, "rejectCall: throw CallStateException(\"phone not ringing\")"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "phone not ringing"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestGetNBPCD(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1337
    return-void
.end method

.method public requestHtcGetGPSOneMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1271
    return-void
.end method

.method public requestHtcSetGPSOneMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "gpsOneMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1265
    return-void
.end method

.method public requestOTAProvisionStatus(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1355
    return-void
.end method

.method public requestReleaseAllVoiceCalls(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1259
    return-void
.end method

.method public bridge synthetic saveClirSetting(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->saveClirSetting(I)V

    return-void
.end method

.method public bridge synthetic selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, "sendBurstDtmf() is a CDMA method"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public sendDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 299
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->sendDtmf(C)V

    .line 304
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic sendUssdResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->sendUssdResponse(Ljava/lang/String;)V

    return-void
.end method

.method public setCBMsgIdEFcbmi([BLandroid/os/Message;)V
    .locals 0
    .param p1, "msgId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1180
    return-void
.end method

.method public setCFUNumber(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "dialNumber"    # Ljava/lang/String;

    .prologue
    .line 1408
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCBFacility"    # I
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1155
    return-void
.end method

.method public bridge synthetic setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super/range {p0 .. p5}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 351
    const-string v0, "call waiting not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public bridge synthetic setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # [I
    .param p2, "x1"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setDataEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataEnabled(Z)V

    return-void
.end method

.method public setDataNationalRoamingMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 1168
    return-void
.end method

.method public bridge synthetic setDataRoamingEnabled(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method public setEchoSuppressionEnabled()V
    .locals 5

    .prologue
    .line 358
    const-class v3, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v3

    .line 359
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 360
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "ec_supported"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "echoSuppression":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 364
    :cond_0
    monitor-exit v3

    .line 365
    return-void

    .line 364
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    .end local v1    # "echoSuppression":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 369
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setMute(Z)V

    .line 371
    monitor-exit v1

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void
.end method

.method public bridge synthetic setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 338
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method

.method public bridge synthetic setRadioPower(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setRadioPower(Z)V

    return-void
.end method

.method public setRadioPowerExt(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 1451
    return-void
.end method

.method public setSubsidyLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "subsidyType"    # Ljava/lang/String;
    .param p2, "passWord"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1247
    return-void
.end method

.method public setTestIcc(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "plmn"    # Ljava/lang/String;
    .param p2, "ef_ad"    # Z

    .prologue
    .line 1186
    return-void
.end method

.method public bridge synthetic setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Landroid/os/Message;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/sip/SipPhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public startDtmf(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 310
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDtmf called with invalid character \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->loge(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "dialInternal: switch fg and bg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 238
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hold()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->unhold()V

    .line 242
    :cond_1
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public takeIncomingCall(Ljava/lang/Object;)Lcom/android/internal/telephony/Connection;
    .locals 11
    .param p1, "incomingCall"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 112
    const-class v8, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v8

    .line 113
    :try_start_0
    instance-of v9, p1, Landroid/net/sip/SipAudioCall;

    if-nez v9, :cond_0

    .line 114
    const-string v9, "takeIncomingCall: ret=null, not a SipAudioCall"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 115
    monitor-exit v8

    move-object v2, v7

    .line 163
    :goto_0
    return-object v2

    .line 117
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 118
    const-string v9, "takeIncomingCall: ret=null, ringingCall not alive"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 119
    monitor-exit v8

    move-object v2, v7

    goto :goto_0

    .line 124
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mBackgroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 127
    const-string v9, "takeIncomingCall: ret=null, foreground and background both alive"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 129
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v7

    goto :goto_0

    .line 133
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/net/sip/SipAudioCall;

    move-object v6, v0

    .line 136
    .local v6, "sipAudioCall":Landroid/net/sip/SipAudioCall;
    const-string v1, "xxxxx"

    .line 139
    .local v1, "caller":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "canTake: taking call from: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v6}, Landroid/net/sip/SipAudioCall;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "localUri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v9}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 144
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mForegroundCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    .line 145
    .local v5, "makeCallWait":Z
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9, v6, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->initIncomingCall(Landroid/net/sip/SipAudioCall;Z)Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    move-result-object v2

    .line 147
    .local v2, "connection":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v6}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    .line 149
    const-string v9, "    takeIncomingCall: call cancelled !!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 150
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const/4 v2, 0x0

    .line 153
    :cond_3
    :try_start_2
    monitor-exit v8

    goto/16 :goto_0

    .line 164
    .end local v1    # "caller":Ljava/lang/String;
    .end local v2    # "connection":Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .end local v4    # "localUri":Ljava/lang/String;
    .end local v5    # "makeCallWait":Z
    .end local v6    # "sipAudioCall":Landroid/net/sip/SipAudioCall;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 155
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    takeIncomingCall: exception e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 160
    iget-object v9, p0, Lcom/android/internal/telephony/sip/SipPhone;->mRingingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    invoke-virtual {v9}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->reset()V

    .line 162
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v9, "takeIncomingCall: NOT taking !!"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/sip/SipPhone;->log(Ljava/lang/String;)V

    .line 163
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    goto/16 :goto_0
.end method

.method public turnOnRadioDueToECC()V
    .locals 0

    .prologue
    .line 1222
    return-void
.end method

.method public unregisterForERIInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1379
    return-void
.end method

.method public unregisterForLoopBackMode(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1319
    return-void
.end method

.method public unregisterForMIPFailCause(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1295
    return-void
.end method

.method public unregisterForNBPCDInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1349
    return-void
.end method

.method public unregisterForNetworkBusy(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1283
    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1391
    return-void
.end method

.method public bridge synthetic unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForRingbackTone(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalFade(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1307
    return-void
.end method

.method public bridge synthetic unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForToneSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1331
    return-void
.end method

.method public unregisterForVoiceCallEnded(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1439
    return-void
.end method

.method public unregisterForVoiceCallStarted(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1427
    return-void
.end method

.method public bridge synthetic updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateCurrentCarrierInProvider()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic updateServiceLocation()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/internal/telephony/sip/SipPhoneBase;->updateServiceLocation()V

    return-void
.end method
