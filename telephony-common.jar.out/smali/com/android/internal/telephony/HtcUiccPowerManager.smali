.class public Lcom/android/internal/telephony/HtcUiccPowerManager;
.super Landroid/os/Handler;
.source "HtcUiccPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;,
        Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;
    }
.end annotation


# static fields
.field private static final EVENT_DELAY:I = 0x68

.field private static final EVENT_DSDA_COEXIST_IND_SLOT1:I = 0x69

.field private static final EVENT_DSDA_COEXIST_IND_SLOT2:I = 0x6a

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x64

.field private static final EVENT_RADIO_POWER_ON:I = 0x65

.field private static final EVENT_RADIO_POWER_TIMEOUT_SLOT1:I = 0x66

.field private static final EVENT_RADIO_POWER_TIMEOUT_SLOT2:I = 0x67

.field private static TAG:Ljava/lang/String;

.field public static sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;


# instance fields
.field private final DBG:Z

.field private isAirplaneModeEnabled:Z

.field private isCard1Checked:Z

.field private isCard1Exist:Z

.field private isCard2Checked:Z

.field private isCard2Exist:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsdualGsm:Z

.field private final mLock:Ljava/lang/Object;

.field private mPhone:[Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

.field private mProxyPhones:[Lcom/android/internal/telephony/Phone;

.field private mSimPowerOnOffRunnable:Ljava/lang/Runnable;

.field private mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

.field timer:I

.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "HtcUiccPowerManager"

    sput-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    iput-boolean v9, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->DBG:Z

    .line 39
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mLock:Ljava/lang/Object;

    .line 46
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    .line 47
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    .line 49
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 50
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    .line 51
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 52
    iput-boolean v8, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 53
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/PhoneBase;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    .line 54
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    .line 58
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    new-array v3, v3, [Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    .line 59
    const/16 v3, 0x1388

    iput v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->timer:I

    .line 76
    new-instance v3, Lcom/android/internal/telephony/HtcUiccPowerManager$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/HtcUiccPowerManager$1;-><init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 431
    new-instance v3, Lcom/android/internal/telephony/HtcUiccPowerManager$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/HtcUiccPowerManager$2;-><init>(Lcom/android/internal/telephony/HtcUiccPowerManager;)V

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSimPowerOnOffRunnable:Ljava/lang/Runnable;

    .line 125
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "Constructor HtcUiccPowerManager"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sput-object p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 130
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    .line 132
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_1

    .line 133
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 134
    .local v2, "subId":[J
    const/4 v1, 0x0

    .line 135
    .local v1, "phoneType":I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lt v3, v9, :cond_0

    .line 136
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    aget-wide v4, v2, v8

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v1

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v1, v9, :cond_1

    .line 139
    iput-boolean v9, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    .line 142
    .end local v1    # "phoneType":I
    .end local v2    # "subId":[J
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HtcUiccPowerManager, isDualGSM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 145
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, p2, v0

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    aput-object v3, v4, v0

    .line 146
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_INIT:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v4, v3, v0

    .line 148
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    if-eqz v3, :cond_2

    .line 149
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v2

    .line 150
    .restart local v2    # "subId":[J
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    new-instance v4, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    aget-wide v6, v2, v8

    invoke-direct {v4, p0, v0, v6, v7}, Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;-><init>(Lcom/android/internal/telephony/HtcUiccPowerManager;IJ)V

    aput-object v4, v3, v0

    .line 151
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    aget-object v4, v4, v0

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 144
    .end local v2    # "subId":[J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    if-eqz v3, :cond_5

    .line 157
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    if-eqz v3, :cond_4

    .line 158
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v8

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x69

    invoke-interface {v3, p0, v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerDSDACoexistInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v9

    if-eqz v3, :cond_5

    .line 161
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v9

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6a

    invoke-interface {v3, p0, v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerDSDACoexistInd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->addIntentFilter()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/HtcUiccPowerManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcUiccPowerManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HtcUiccPowerManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/HtcUiccPowerManager;)[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcUiccPowerManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/HtcUiccPowerManager;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->waitSIMStateChange(I)V

    return-void
.end method

.method private addIntentFilter()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 555
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 562
    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 563
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 564
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 572
    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    .line 565
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    .line 566
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 567
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 568
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/HtcUiccPowerManager;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->sMe:Lcom/android/internal/telephony/HtcUiccPowerManager;

    return-object v0
.end method

.method private handleControlPowerTimer()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1388

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSimPowerOnOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "reset timer, nosimpoweroff hasCallbacks mSimPowerOnOffRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSimPowerOnOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSimPowerOnOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v1, "set delay 5 sec, nosimpoweroff mSimPowerOnOffRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSimPowerOnOffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private handletimeOutMessage(I)V
    .locals 4
    .param p1, "mSlotId"    # I

    .prologue
    const/16 v2, 0x67

    const/16 v1, 0x66

    .line 416
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->removeMessages(I)V

    .line 417
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->timer:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 418
    return-void

    :cond_0
    move v0, v2

    .line 416
    goto :goto_0

    :cond_1
    move v1, v2

    .line 417
    goto :goto_1
.end method

.method private updateCardSetup(ZI)V
    .locals 9
    .param p1, "isPresent"    # Z
    .param p2, "slot"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    if-nez v3, :cond_2

    .line 217
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "mPhone1 == null or mPhone2 == null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    if-nez p2, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    if-nez v3, :cond_5

    .line 222
    iput-boolean v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 223
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 229
    :cond_3
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardSetup slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isPresent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard1Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard2Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCardSetup isCard1Exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,isCard2Exist:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 237
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "slot1_card_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 238
    .local v0, "mCardState1":Z
    const-string v3, "slot2_card_enabled"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 240
    .local v1, "mCardState2":Z
    if-eqz v0, :cond_4

    if-nez v1, :cond_6

    .line 241
    :cond_4
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nosimpoweroff mCardState1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,mCardState2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 243
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto/16 :goto_0

    .line 224
    .end local v0    # "mCardState1":Z
    .end local v1    # "mCardState2":Z
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    if-ne p2, v7, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    if-nez v3, :cond_3

    .line 225
    iput-boolean v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 226
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    goto/16 :goto_1

    .line 244
    .restart local v0    # "mCardState1":Z
    .restart local v1    # "mCardState2":Z
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-eqz v3, :cond_7

    .line 245
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff SlotGsmEcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    .line 247
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 248
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto/16 :goto_0

    .line 249
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-eqz v3, :cond_8

    .line 250
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff SlotSubGsmEcc"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    .line 252
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 253
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto/16 :goto_0

    .line 255
    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    if-eqz v3, :cond_10

    .line 256
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-eqz v3, :cond_a

    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-nez v3, :cond_e

    .line 257
    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-nez v3, :cond_d

    .line 258
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-nez v3, :cond_b

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_b

    .line 260
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff 1-<<set slot1 ON>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_ON:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v4, v3, v6

    .line 262
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x65

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 263
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 268
    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 269
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff  2-<<set slot2 OFF>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v4, v3, v7

    .line 271
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p0, v8, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 273
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 296
    :cond_c
    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 297
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    goto/16 :goto_0

    .line 278
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v7

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    goto :goto_2

    .line 281
    :cond_e
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    if-nez v3, :cond_c

    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    if-eqz v3, :cond_c

    .line 283
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-boolean v3, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    if-nez v3, :cond_f

    .line 284
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 285
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "nosimpoweroff 3-<<set slot1 OFF>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v4, v3, v6

    .line 287
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p0, v8, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 288
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto :goto_2

    .line 293
    :cond_f
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v6

    iput-boolean v6, v3, Lcom/android/internal/telephony/PhoneBase;->mRadioOnDueToECC2:Z

    goto :goto_2

    .line 299
    :cond_10
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nosimpoweroff do nothing isCard1Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCard2Checked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private waitSIMStateChange(I)V
    .locals 9
    .param p1, "mslot"    # I

    .prologue
    const/16 v8, 0x65

    const/16 v7, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 313
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportNoSimPowerOFF()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    .line 315
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v3, "mPhone1 == null || mPhone2 == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 318
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    if-nez v4, :cond_4

    .line 319
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v3, "simHotSwapTrigger(), getUiccCard() == null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :cond_4
    if-ltz p1, :cond_5

    .line 323
    if-nez p1, :cond_6

    .line 324
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCardExist()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    .line 331
    :cond_5
    :goto_1
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simHotSwapTrigger(), mslot= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ,SIM1= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,SIM2= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-ltz p1, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aget-object v4, v4, p1

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_INIT:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    if-eq v4, v5, :cond_7

    .line 334
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simHotSwapTrigger(), the procedure of radio power has not completed yet, delay 5 sec~, mslot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,slot radio state= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handleControlPowerTimer()V

    goto/16 :goto_0

    .line 325
    :cond_6
    if-ne p1, v2, :cond_5

    .line 326
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCardExist()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    goto/16 :goto_1

    .line 339
    :cond_7
    const-string v4, "sys.shutdown.hibernate.mode"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 340
    .local v1, "hibernate":Z
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_9

    move v0, v2

    .line 343
    .local v0, "airplane":Z
    :goto_2
    if-nez v1, :cond_8

    if-eqz v0, :cond_a

    .line 344
    :cond_8
    sget-object v2, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simHotSwapTrigger(), nosimpoweroff hibernate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " airplane = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "airplane":Z
    :cond_9
    move v0, v3

    .line 340
    goto :goto_2

    .line 347
    .restart local v0    # "airplane":Z
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-nez v4, :cond_c

    .line 348
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_b

    .line 349
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 350
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "simHotSwapTrigger(), case-1 , nosimpoweroff <<set slot2 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v5, v4, v2

    .line 352
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 353
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 354
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 358
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_1

    .line 359
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "simHotSwapTrigger(), case-2 , nosimpoweroff <<set slot1 ON>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_ON:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v5, v4, v3

    .line 361
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 362
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 363
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v4, v3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 367
    :cond_c
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-eqz v4, :cond_e

    .line 368
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-nez v4, :cond_d

    .line 369
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "simHotSwapTrigger(), case-3 , nosimpoweroff <<set slot1 ON>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_ON:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v5, v4, v3

    .line 371
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 372
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 373
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 389
    :cond_d
    :goto_3
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/uicc/UiccCard;->isHotSwapInserted:Z

    if-eqz v4, :cond_f

    .line 390
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 391
    sget-object v3, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v4, "simHotSwapTrigger(), case-5 ,nosimpoweroff <<set slot2 ON>>"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_ON:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v4, v3, v2

    .line 393
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p0, v8, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 394
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 395
    iget-object v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v3, v3, v2

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0

    .line 377
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_d

    .line 378
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 379
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "simHotSwapTrigger(), case-4 , nosimpoweroff <<set slot1 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v5, v4, v3

    .line 381
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 382
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 383
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_3

    .line 400
    :cond_f
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    .line 401
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "simHotSwapTrigger(), case-6 ,nosimpoweroff <<set slot2 OFF>>"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    sget-object v5, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v5, v4, v2

    .line 404
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 405
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->handletimeOutMessage(I)V

    .line 406
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v2, v4, v2

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clearCardSetup(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 196
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearCardSetup enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Checked:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Checked:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard1Exist:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isCard2Exist:Z

    .line 204
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 184
    sget-object v1, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v2, "[dispose]"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mIsdualGsm:Z

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->tm:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhoneStateListener:[Lcom/android/internal/telephony/HtcUiccPowerManager$MultiSimPhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    .local v1, "index":Ljava/lang/Integer;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 445
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 446
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    if-ne v4, v6, :cond_2

    .line 447
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    sget-object v6, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_OFF:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    if-ne v4, v6, :cond_2

    .line 448
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_1

    .line 449
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 451
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x66

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcUiccPowerManager;->removeMessages(I)V

    .line 452
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_INIT:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v7, v4, v6

    .line 453
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , radio state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,fininsh radio power."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 451
    :cond_3
    const/16 v4, 0x67

    goto :goto_1

    .line 460
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 461
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v6, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v6}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v6

    if-ne v4, v6, :cond_5

    .line 462
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    sget-object v6, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_ON:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    if-ne v4, v6, :cond_5

    .line 463
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    if-eqz v4, :cond_4

    .line 464
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 466
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x66

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcUiccPowerManager;->removeMessages(I)V

    .line 467
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mSlotRadioState:[Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;->ACTION_INIT:Lcom/android/internal/telephony/HtcUiccPowerManager$SimHotSwapRadioState;

    aput-object v7, v4, v6

    .line 468
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slot= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , radio state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,fininsh radio power."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 466
    :cond_6
    const/16 v4, 0x67

    goto :goto_2

    .line 475
    :pswitch_2
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "Slot1 turn on/off radio time out! trigger SIM hot swap again."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    if-eqz v4, :cond_7

    .line 477
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 478
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 480
    :cond_7
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcUiccPowerManager;->waitSIMStateChange(I)V

    goto/16 :goto_0

    .line 484
    :pswitch_3
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "Slot2 turn on/off radio time out! trigger SIM hot swap again."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    if-eqz v4, :cond_8

    .line 486
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 487
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 489
    :cond_8
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcUiccPowerManager;->waitSIMStateChange(I)V

    goto/16 :goto_0

    .line 493
    :pswitch_4
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DELAY time out, slot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcUiccPowerManager;->waitSIMStateChange(I)V

    goto/16 :goto_0

    .line 499
    :pswitch_5
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "EVENT_DSDA_COEXIST_IND_SLOT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 501
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 502
    .local v3, "r":[I
    if-eqz v3, :cond_9

    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_9

    .line 503
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", call:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", band:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    new-instance v2, Lcom/android/internal/telephony/CoexistInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CoexistInfo;-><init>()V

    .line 505
    .local v2, "info":Lcom/android/internal/telephony/CoexistInfo;
    aget v4, v3, v7

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->rat_1:I

    .line 506
    aget v4, v3, v8

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->n_call_1:I

    .line 507
    aget v4, v3, v9

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->testRB_1:I

    .line 508
    aget v4, v3, v10

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->band_1:I

    .line 509
    aget v4, v3, v11

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->channel_1:I

    .line 510
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoexistInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    if-eqz v4, :cond_0

    .line 513
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v8

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setDSDACoexistInfo(Lcom/android/internal/telephony/CoexistInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 517
    .end local v2    # "info":Lcom/android/internal/telephony/CoexistInfo;
    :cond_9
    if-eqz v3, :cond_a

    .line 518
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DSDA_COEXIST_IND_SLOT1 r.length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 520
    :cond_a
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "EVENT_DSDA_COEXIST_IND_SLOT1 r==null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "r":[I
    :pswitch_6
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "EVENT_DSDA_COEXIST_IND_SLOT2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 527
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    move-object v3, v4

    check-cast v3, [I

    .line 528
    .restart local v3    # "r":[I
    if-eqz v3, :cond_b

    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_b

    .line 529
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", call:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RB:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", band:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", channel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v2, Lcom/android/internal/telephony/CoexistInfo;

    invoke-direct {v2}, Lcom/android/internal/telephony/CoexistInfo;-><init>()V

    .line 531
    .restart local v2    # "info":Lcom/android/internal/telephony/CoexistInfo;
    aget v4, v3, v7

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->rat_2:I

    .line 532
    aget v4, v3, v8

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->n_call_2:I

    .line 533
    aget v4, v3, v9

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->testRB_2:I

    .line 534
    aget v4, v3, v10

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->band_2:I

    .line 535
    aget v4, v3, v11

    iput v4, v2, Lcom/android/internal/telephony/CoexistInfo;->channel_2:I

    .line 536
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CoexistInfo:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    if-eqz v4, :cond_0

    .line 539
    iget-object v4, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->mPhone:[Lcom/android/internal/telephony/PhoneBase;

    aget-object v4, v4, v7

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/PhoneBase;->setDSDACoexistInfo(Lcom/android/internal/telephony/CoexistInfo;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 543
    .end local v2    # "info":Lcom/android/internal/telephony/CoexistInfo;
    :cond_b
    if-eqz v3, :cond_c

    .line 544
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_DSDA_COEXIST_IND_SLOT2 r.length:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 546
    :cond_c
    sget-object v4, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    const-string v5, "EVENT_DSDA_COEXIST_IND_SLOT2 r==null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setUiccCardState(ZI)V
    .locals 3
    .param p1, "isPresent"    # Z
    .param p2, "slot"    # I

    .prologue
    .line 207
    sget-object v0, Lcom/android/internal/telephony/HtcUiccPowerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIccCardState slot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPresent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAirplaneModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->isAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/HtcUiccPowerManager;->updateCardSetup(ZI)V

    .line 212
    :cond_0
    return-void
.end method

.method public simHotSwapTrigger(I)V
    .locals 4
    .param p1, "mslot"    # I

    .prologue
    const/16 v1, 0x68

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/HtcUiccPowerManager;->removeMessages(I)V

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/telephony/HtcUiccPowerManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/HtcUiccPowerManager;->timer:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/HtcUiccPowerManager;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 310
    return-void
.end method
