.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/Connection;
.source "ImsPhoneConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_DTMF_DONE:I = 0x1

.field private static final EVENT_NEXT_POST_DIAL:I = 0x3

.field private static final EVENT_PAUSE_DONE:I = 0x2

.field private static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneConnection"

.field private static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field private mCallExtras:Landroid/os/Bundle;

.field private mCause:I

.field private mDisconnectTime:J

.field private mDisconnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mImsCall:Lcom/android/ims/ImsCall;

.field private mMptyState:Z

.field private mNextPostDialChar:I

.field private mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field private mPostDialString:Ljava/lang/String;

.field private mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "isUnknown"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 73
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallExtras:Landroid/os/Bundle;

    .line 75
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMptyState:Z

    .line 91
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 92
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 144
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 147
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 148
    new-instance v6, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 149
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 151
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 152
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    const-string v7, "oi"

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 153
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    const-string v7, "cna"

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 154
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    const-string v7, "oir"

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 156
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v6

    const-string v7, "cnap"

    invoke-virtual {v6, v7}, Lcom/android/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 159
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v0

    .line 160
    .local v0, "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 167
    iget-object v4, v0, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 168
    .local v4, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    if-eqz v4, :cond_0

    .line 169
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromMediaProfile(Lcom/android/ims/ImsStreamMediaProfile;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V

    .line 175
    .end local v4    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v3

    .line 176
    .local v3, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v3, :cond_1

    .line 183
    iget v6, v3, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    const/4 v1, 0x1

    .line 187
    .local v1, "isLocalVideoCapable":Z
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 190
    .end local v1    # "isLocalVideoCapable":Z
    :cond_1
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v5

    .line 191
    .local v5, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v5, :cond_2

    .line 192
    iget v6, v5, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    const/4 v2, 0x1

    .line 195
    .local v2, "isRemoteVideoCapable":Z
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemoteVideoCapable(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v0    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v2    # "isRemoteVideoCapable":Z
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_2
    :goto_2
    if-nez p5, :cond_6

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 211
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 215
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 218
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    :goto_4
    invoke-virtual {v7, p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 221
    return-void

    .line 183
    .restart local v0    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    .restart local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 192
    .restart local v5    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 202
    .end local v0    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v3    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v5    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_5
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 203
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    goto :goto_2

    .line 208
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 218
    :cond_7
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    goto :goto_4

    .line 198
    .restart local v0    # "imsCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialString"    # Ljava/lang/String;
    .param p3, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p4, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 73
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallExtras:Landroid/os/Bundle;

    .line 75
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMptyState:Z

    .line 91
    iput v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 92
    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 230
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 231
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "isConferenceUri":Z
    const/4 v1, 0x0

    .line 235
    .local v1, "isSkipSchemaParsing":Z
    if-eqz p5, :cond_0

    .line 236
    const-string v2, "org.codeaurora.extra.DIAL_CONFERENCE_URI"

    invoke-virtual {p5, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 238
    const-string v2, "org.codeaurora.extra.SKIP_SCHEMA_PARSING"

    invoke-virtual {p5, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 243
    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 244
    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 246
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    .line 253
    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 254
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 255
    const-string v2, ""

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 264
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    .line 265
    iput-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapName:Ljava/lang/String;

    .line 266
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCnapNamePresentation:I

    .line 267
    iput v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCreateTime:J

    .line 271
    if-eqz p5, :cond_2

    .line 272
    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallExtras:Landroid/os/Bundle;

    .line 276
    :cond_2
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 277
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 279
    return-void

    .line 257
    :cond_3
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mAddress:Ljava/lang/String;

    .line 258
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 2

    .prologue
    .line 661
    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 663
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 656
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ImsPhoneConnection"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 657
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 286
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

.method private getAudioQualityFromMediaProfile(Lcom/android/ims/ImsStreamMediaProfile;)I
    .locals 3
    .param p1, "mediaProfile"    # Lcom/android/ims/ImsStreamMediaProfile;

    .prologue
    .line 300
    iget v1, p1, Lcom/android/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 301
    const/4 v0, 0x2

    .line 306
    .local v0, "audioQuality":I
    :goto_0
    return v0

    .line 303
    .end local v0    # "audioQuality":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "audioQuality":I
    goto :goto_0
.end method

.method private processNextPostDialChar()V
    .locals 9

    .prologue
    .line 578
    const/4 v1, 0x0

    .line 581
    .local v1, "c":C
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_1

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v6, v7, :cond_4

    .line 588
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 591
    const/4 v1, 0x0

    .line 610
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/imsphone/ImsPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 614
    .local v4, "postDialHandler":Landroid/os/Registrant;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, "notifyMessage":Landroid/os/Message;
    if-eqz v3, :cond_0

    .line 617
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 618
    .local v5, "state":Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 619
    .local v0, "ar":Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 620
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 623
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 626
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 595
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "notifyMessage":Landroid/os/Message;
    .end local v4    # "postDialHandler":Landroid/os/Registrant;
    .end local v5    # "state":Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_4
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 597
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 599
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v2

    .line 601
    .local v2, "isValid":Z
    if-nez v2, :cond_3

    .line 603
    iget-object v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 605
    const-string v6, "ImsPhoneConnection"

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

    .line 510
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    const/16 v1, 0x70

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_3

    .line 537
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 541
    :cond_3
    const/16 v1, 0x77

    if-eq p1, v1, :cond_4

    const/16 v1, 0x3b

    if-ne p1, v1, :cond_5

    .line 543
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 544
    :cond_5
    const/16 v1, 0x4e

    if-ne p1, v1, :cond_6

    .line 545
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    .line 547
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4
    .param p1, "s"    # Lcom/android/internal/telephony/Connection$PostDialState;

    .prologue
    const/4 v3, 0x4

    .line 637
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1

    .line 639
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 641
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 647
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->notifyPostDialListeners()V

    .line 651
    return-void

    .line 642
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    goto :goto_0
.end method


# virtual methods
.method public cancelPostDial()V
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 422
    return-void
.end method

.method changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 715
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 282
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->clearPostDialListeners()V

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 574
    return-void
.end method

.method public getCCWT()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object v0
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCliValid()Lcom/android/internal/telephony/Connection$CliValid;
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectCause()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    return v0
.end method

.method public getDisconnectTime()J
    .locals 2

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public getHoldDurationMillis()J
    .locals 4

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

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

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    return-wide v0
.end method

.method getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    return-object v0
.end method

.method public getNumberPresentation()I
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNumberPresentation:I

    return v0
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getPostDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    return-object v0
.end method

.method public getPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 855
    const/4 v0, 0x0

    return v0
.end method

.method public getRawDisonnectCause()I
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    .line 561
    :cond_0
    const-string v0, ""

    .line 564
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 358
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
    .line 682
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

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
    .line 364
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 369
    return-void

    .line 367
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEPDG()Z
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->showEPDGIcon()Z

    move-result v0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onConnectedInOrOut()V
    .locals 4

    .prologue
    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    .line 486
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 489
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectedInOrOut: connectTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 497
    return-void
.end method

.method public onDisconnect(I)Z
    .locals 3
    .param p1, "cause"    # I

    .prologue
    .line 435
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 439
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(Z)Z

    move-result v0

    return v0
.end method

.method public onDisconnect(Z)Z
    .locals 6
    .param p1, "silent"    # Z

    .prologue
    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "changed":Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v1, :cond_2

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDuration:J

    .line 456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 459
    if-nez p1, :cond_0

    .line 461
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_3

    .line 465
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->close()V

    .line 470
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 473
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->clearPostDialListeners()V

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 476
    return v0

    .line 467
    :cond_3
    const-string v1, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 5
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 872
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v1, :cond_0

    .line 882
    :goto_0
    return-void

    .line 876
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 879
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "ImsPhoneConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 430
    return-void
.end method

.method onStartedHolding()V
    .locals 2

    .prologue
    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHoldingStartTime:J

    .line 502
    return-void
.end method

.method public proceedAfterWaitChar()V
    .locals 3

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 384
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_0

    .line 397
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 402
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    .line 410
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mNextPostDialChar:I

    .line 412
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    goto :goto_0
.end method

.method releaseWakeLock()V
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string v0, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 672
    :cond_0
    monitor-exit v1

    .line 673
    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public separate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCCWT(Z)V
    .locals 0
    .param p1, "noWaitingTone"    # Z

    .prologue
    .line 938
    return-void
.end method

.method public setCliValid(Lcom/android/internal/telephony/Connection$CliValid;)V
    .locals 0
    .param p1, "cliValid"    # Lcom/android/internal/telephony/Connection$CliValid;

    .prologue
    .line 926
    return-void
.end method

.method public setDisconnectCause(I)V
    .locals 0
    .param p1, "cause"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mCause:I

    .line 347
    return-void
.end method

.method setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 711
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 893
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 895
    const-string v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    const-string v1, " ImsCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_0

    .line 899
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :goto_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method update(Lcom/android/ims/ImsCall;)Z
    .locals 18
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 759
    const/4 v3, 0x0

    .line 761
    .local v3, "changed":Z
    if-eqz p1, :cond_5

    .line 767
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v4

    .line 769
    .local v4, "localCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string v15, "ImsPhoneConnection"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " update localCallProfile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "isLocalVideoCapable()= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isLocalVideoCapable()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    if-eqz v4, :cond_0

    .line 776
    iget v15, v4, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    const/4 v9, 0x1

    .line 780
    .local v9, "newLocalVideoCapable":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isLocalVideoCapable()Z

    move-result v15

    if-eq v15, v9, :cond_0

    .line 781
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setLocalVideoCapable(Z)V

    .line 782
    const/4 v3, 0x1

    .line 786
    .end local v9    # "newLocalVideoCapable":Z
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v14

    .line 787
    .local v14, "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    const-string v15, "ImsPhoneConnection"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " update remoteCallProfile="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "isRemoteVideoCapable()= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isRemoteVideoCapable()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz v14, :cond_1

    .line 790
    iget v15, v14, Lcom/android/ims/ImsCallProfile;->mCallType:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v10, 0x1

    .line 793
    .local v10, "newRemoteVideoCapable":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isRemoteVideoCapable()Z

    move-result v15

    if-eq v15, v10, :cond_1

    .line 794
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setRemoteVideoCapable(Z)V

    .line 795
    const/4 v3, 0x1

    .line 800
    .end local v10    # "newRemoteVideoCapable":Z
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCallSubstate()I

    move-result v2

    .line 801
    .local v2, "callSubstate":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getCallSubstate()I

    move-result v8

    .line 803
    .local v8, "newCallSubstate":I
    if-eq v2, v8, :cond_2

    .line 804
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCallSubstate(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    const/4 v3, 0x1

    .line 814
    .end local v2    # "callSubstate":I
    .end local v4    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v8    # "newCallSubstate":I
    .end local v14    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_2
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v1

    .line 815
    .local v1, "callProfile":Lcom/android/ims/ImsCallProfile;
    if-eqz v1, :cond_4

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v13

    .line 819
    .local v13, "oldVideoState":I
    invoke-static {v1}, Lcom/android/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Lcom/android/ims/ImsCallProfile;)I

    move-result v11

    .line 822
    .local v11, "newVideoState":I
    const-string v15, "ImsPhoneConnection"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " update oldVideoState="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "newVideoState= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    if-eq v13, v11, :cond_3

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setVideoState(I)V

    .line 827
    const/4 v3, 0x1

    .line 830
    :cond_3
    iget-object v5, v1, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 831
    .local v5, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    if-eqz v5, :cond_4

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQuality()I

    move-result v12

    .line 833
    .local v12, "oldAudioQuality":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromMediaProfile(Lcom/android/ims/ImsStreamMediaProfile;)I

    move-result v7

    .line 835
    .local v7, "newAudioQuality":I
    if-eq v12, v7, :cond_4

    .line 836
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setAudioQuality(I)V

    .line 837
    const/4 v3, 0x1

    .line 843
    .end local v5    # "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    .end local v7    # "newAudioQuality":I
    .end local v11    # "newVideoState":I
    .end local v12    # "oldAudioQuality":I
    .end local v13    # "oldVideoState":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result v6

    .line 844
    .local v6, "mptyState":Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMptyState:Z

    if-eq v6, v15, :cond_5

    .line 845
    const/4 v3, 0x1

    .line 846
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMptyState:Z

    .line 850
    .end local v1    # "callProfile":Lcom/android/ims/ImsCallProfile;
    .end local v6    # "mptyState":Z
    :cond_5
    return v3

    .line 776
    .restart local v4    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 790
    .restart local v14    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 808
    .end local v4    # "localCallProfile":Lcom/android/ims/ImsCallProfile;
    .end local v14    # "remoteCallProfile":Lcom/android/ims/ImsCallProfile;
    :catch_0
    move-exception v15

    goto :goto_2
.end method

.method update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 721
    .local v1, "changed":Z
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_6

    .line 722
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 727
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v2, v3, :cond_4

    .line 733
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 734
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 736
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 737
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallGroup()Lcom/android/ims/internal/CallGroup;

    move-result-object v0

    .line 738
    .local v0, "callgroup":Lcom/android/ims/internal/CallGroup;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/ims/internal/CallGroup;->getOwner()Lcom/android/ims/internal/ICall;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 739
    const-string v2, "ImsPhoneConnection"

    const-string v3, " update owner"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v1, 0x1

    .line 744
    .end local v0    # "callgroup":Lcom/android/ims/internal/CallGroup;
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 751
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 746
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v2, :cond_4

    .line 747
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    goto :goto_0

    .line 754
    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method
