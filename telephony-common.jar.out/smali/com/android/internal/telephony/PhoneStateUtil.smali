.class public Lcom/android/internal/telephony/PhoneStateUtil;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStateUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneStateUtil"

.field private static sInstance:Lcom/android/internal/telephony/PhoneStateUtil;


# instance fields
.field mCallState:I

.field private mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataNetType:I

.field mDataState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSendSmsAfterStateReady:Z

.field mServiceState:Landroid/telephony/ServiceState;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mhasRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/internal/telephony/PhoneStateUtil;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneStateUtil;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PhoneStateUtil;->sInstance:Lcom/android/internal/telephony/PhoneStateUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mServiceState:Landroid/telephony/ServiceState;

    .line 39
    iput v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mCallState:I

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataState:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataNetType:I

    .line 53
    iput v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    .line 57
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 61
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mhasRegistered:Z

    .line 63
    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSendSmsAfterStateReady:Z

    .line 107
    new-instance v0, Lcom/android/internal/telephony/PhoneStateUtil$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneStateUtil$1;-><init>(Lcom/android/internal/telephony/PhoneStateUtil;)V

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/PhoneStateUtil;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/PhoneStateUtil;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->sendSmsWhenStateReady()V

    return-void
.end method

.method private getDataActivity()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    return v0
.end method

.method private getDataState()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataState:I

    return v0
.end method

.method public static getDefault()Lcom/android/internal/telephony/PhoneStateUtil;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/telephony/PhoneStateUtil;->sInstance:Lcom/android/internal/telephony/PhoneStateUtil;

    return-object v0
.end method

.method private getNetworkType()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataNetType:I

    return v0
.end method

.method private getSimState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mServiceState:Landroid/telephony/ServiceState;

    .line 187
    .local v0, "state":Landroid/telephony/ServiceState;
    if-nez v0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendSmsWhenStateReady()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 230
    iget v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mCallState:I

    if-nez v1, :cond_0

    .line 234
    iget-boolean v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSendSmsAfterStateReady:Z

    if-ne v1, v3, :cond_0

    .line 235
    const-string v1, "PhoneStateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSmsWhenStateReady mDataActivity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v1, "PhoneStateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSmsWhenStateReady mCallState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mCallState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v1, "PhoneStateUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSmsWhenStateReady mSendSmsAfterStateReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSendSmsAfterStateReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.SEND_QUEUED_SMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSendSmsAfterStateReady:Z

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 244
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PhoneStateUtil"

    const-string v2, "State ready but context is null, can\'t trigger to send SMS!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "state":Ljava/lang/String;
    const-string v2, "PhoneStateUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState: state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 156
    :cond_2
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 160
    :cond_3
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 161
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 163
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 165
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_5
    const-string v2, "ICC_FAIL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 167
    :cond_6
    const-string v2, "IMEI_LOCK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 169
    :cond_7
    const-string v2, "ICC_EXPIRED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 170
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 171
    :cond_8
    const-string v2, "ICC_HOT_SWAP_ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ICC_HOT_SWAP_INSERTED_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method


# virtual methods
.method public hasDataActivity(Landroid/content/Context;)Z
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 255
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v7

    .line 256
    .local v7, "tm":Lcom/htc/service/HtcTelephonyManager;
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->hasService()Z

    move-result v5

    .line 257
    .local v5, "hasService":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->getDataState()I

    move-result v2

    .line 258
    .local v2, "dataState":I
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->getSimState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v6

    .line 259
    .local v6, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->getDataActivity()I

    move-result v1

    .line 261
    .local v1, "dataActivity":I
    const/4 v3, 0x0

    .line 262
    .local v3, "gprsState":I
    const/4 v4, 0x0

    .line 263
    .local v4, "hasModemLinkOn":Z
    if-eqz v7, :cond_0

    .line 264
    invoke-virtual {v7}, Lcom/htc/service/HtcTelephonyManager;->getGprsState()I

    move-result v3

    .line 265
    invoke-virtual {v7}, Lcom/htc/service/HtcTelephonyManager;->htcModemLinkOn()Z

    move-result v4

    .line 268
    :cond_0
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: hasService="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: dataState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: simState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: dataActivity="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: gprsState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v10, "PhoneStateUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hasDataActivity: hasModemLinkOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->isCdma()Z

    move-result v10

    if-nez v10, :cond_3

    .line 277
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v6, v10, :cond_1

    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v10, :cond_9

    .line 278
    :cond_1
    if-nez v3, :cond_2

    if-ne v2, v13, :cond_2

    .line 279
    packed-switch v1, :pswitch_data_0

    move v8, v9

    .line 322
    :goto_0
    :pswitch_0
    return v8

    .line 287
    :cond_2
    if-eqz v4, :cond_9

    .line 288
    packed-switch v1, :pswitch_data_1

    move v8, v9

    .line 294
    goto :goto_0

    .line 299
    :cond_3
    sget-object v10, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v6, v10, :cond_4

    .line 300
    const-string v8, "PhoneStateUtil"

    const-string v10, "no SIM nor RUIM when detect hasDataActivity"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v9

    .line 301
    goto :goto_0

    .line 303
    :cond_4
    if-eq v2, v13, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    move v0, v8

    .line 304
    .local v0, "connected":Z
    :goto_1
    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 305
    packed-switch v1, :pswitch_data_2

    move v8, v9

    .line 311
    goto :goto_0

    .end local v0    # "connected":Z
    :cond_6
    move v0, v9

    .line 303
    goto :goto_1

    .line 314
    .restart local v0    # "connected":Z
    :cond_7
    if-eqz v5, :cond_8

    const/4 v8, 0x3

    if-eq v2, v8, :cond_9

    .line 316
    :cond_8
    iput v9, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mDataActivity:I

    .end local v0    # "connected":Z
    :cond_9
    move v8, v9

    .line 322
    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 305
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasRegistered()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mhasRegistered:Z

    return v0
.end method

.method public markToSendSmsAfterStateReady()V
    .locals 3

    .prologue
    .line 214
    const-string v0, "PhoneStateUtil"

    const-string v1, "markToSendSmsAfterStateReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "markToSendSmsAfterStateReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mSendSmsAfterStateReady:Z

    .line 225
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneStateUtil;->sendSmsWhenStateReady()V

    .line 226
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneStateUtil;->updateSimState(Landroid/content/Intent;)V

    .line 147
    :cond_0
    return-void
.end method

.method public registerPhoneStateListener(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v3, "PhoneStateUtil"

    const-string v4, "registerPhoneStateListener: "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 75
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    const/16 v0, 0xe1

    .line 79
    .local v0, "events":I
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 82
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mContext:Landroid/content/Context;

    .line 88
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mhasRegistered:Z

    .line 89
    return-void
.end method

.method public unRegisterPhoneStateListener(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 92
    const-string v1, "PhoneStateUtil"

    const-string v2, "unRegisterPhoneStateListener: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/telephony/PhoneStateUtil;->mhasRegistered:Z

    .line 100
    return-void
.end method
