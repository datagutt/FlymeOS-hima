.class public Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "CdmaInboundSmsHandler.java"


# static fields
.field private static final SPRINT_WAKE_LOCK_TIMEOUT:I = 0x1388


# instance fields
.field private allowMtSmsInEcmMode:Z

.field private mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

.field private final mCheckForDuplicatePortsInOmadmWapPush:Z

.field private final mHtcFeatureReceiver:Landroid/content/BroadcastReceiver;

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private final mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

.field private final mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

.field protected mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

.field private mSprintWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    const/4 v8, 0x1

    .line 119
    const-string v1, "CdmaInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/CellBroadcastHandler;->makeCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/CellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 89
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCheckForDuplicatePortsInOmadmWapPush:Z

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->allowMtSmsInEcmMode:Z

    .line 1042
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mHtcFeatureReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 122
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->makeScpHandler(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    .line 124
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v8, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 130
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v0, "com.htc.intent.action.ACTION_SPRINT_REASSEMBLE_SMS_DISPATCH"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mHtcFeatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 137
    .local v7, "pm":Landroid/os/PowerManager;
    const-string v0, "ReassembleSms_5"

    invoke-virtual {v7, v8, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSprintWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSprintWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static checkDuplicatePortOmadmWapPush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 635
    add-int/lit8 p1, p1, 0x4

    .line 636
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 637
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 639
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 640
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 643
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 655
    :cond_0
    :goto_0
    return v4

    .line 647
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 650
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 654
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "mimeType":Ljava/lang/String;
    const-string v4, "application/vnd.syncml.notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private static checkDuplicatePortOmadmWappush([BI)Z
    .locals 6
    .param p0, "origPdu"    # [B
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 816
    add-int/lit8 p1, p1, 0x4

    .line 817
    array-length v5, p0

    sub-int/2addr v5, p1

    new-array v1, v5, [B

    .line 818
    .local v1, "omaPdu":[B
    array-length v5, v1

    invoke-static {p0, p1, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 820
    new-instance v2, Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 821
    .local v2, "pduDecoder":Lcom/android/internal/telephony/WspTypeDecoder;
    const/4 v3, 0x2

    .line 824
    .local v3, "wspIndex":I
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v4

    .line 828
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v5

    add-int/2addr v3, v5

    .line 831
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 835
    invoke-virtual {v2}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 837
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 6
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 538
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v2

    .line 539
    .local v2, "voicemailCount":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v3

    .line 540
    .local v3, "voicemailpriority":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Voicemail count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 543
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 544
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 545
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "vm_count_key_cdma"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 549
    const-string v4, "vm_priority_key_cdma"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 551
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 552
    return-void
.end method

.method private static isInEmergencyCallMode()Z
    .locals 3

    .prologue
    .line 170
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private kddiBroadcastEmailSignal([[B)V
    .locals 5
    .param p1, "pdus"    # [[B

    .prologue
    .line 980
    const-string v1, "kddiNotifySmsToEmailSignal"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 982
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    const-string v3, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 984
    .local v0, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 985
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p3, "smsDispatcher"    # Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .prologue
    .line 159
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)V

    .line 161
    .local v0, "handler":Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->start()V

    .line 162
    return-object v0
.end method

.method private processCdmaWapPdu([BILjava/lang/String;J)I
    .locals 18
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 566
    const/4 v14, 0x0

    .line 568
    .local v14, "index":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .local v15, "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    .line 569
    .local v16, "msgType":I
    if-eqz v16, :cond_0

    .line 570
    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 571
    const/4 v4, 0x1

    move v14, v15

    .line 620
    .end local v15    # "index":I
    .restart local v14    # "index":I
    :goto_0
    return v4

    .line 573
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_0
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v15

    and-int/lit16 v11, v4, 0xff

    .line 574
    .local v11, "totalSegments":I
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v10, v4, 0xff

    .line 576
    .local v10, "segment":I
    if-lt v10, v11, :cond_1

    .line 577
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WDP bad segment #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " expecting 0-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v11, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 578
    const/4 v4, 0x1

    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto :goto_0

    .line 582
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_1
    const/16 v17, 0x0

    .line 583
    .local v17, "sourcePort":I
    const/4 v6, 0x0

    .line 584
    .local v6, "destinationPort":I
    if-nez v10, :cond_2

    .line 586
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v17, v4, 0x8

    .line 587
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    or-int v17, v17, v4

    .line 588
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aget-byte v4, p1, v15

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v4, 0x8

    .line 589
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "index":I
    .restart local v15    # "index":I
    aget-byte v4, p1, v14

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v6, v4

    .line 593
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportOmaDm()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 596
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->checkDuplicatePortOmadmWapPush([BI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 597
    add-int/lit8 v14, v15, 0x4

    .line 603
    .end local v15    # "index":I
    .restart local v14    # "index":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 608
    move-object/from16 v0, p1

    array-length v4, v0

    sub-int/2addr v4, v14

    new-array v3, v4, [B

    .line 609
    .local v3, "userData":[B
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    sub-int/2addr v5, v14

    move-object/from16 v0, p1

    invoke-static {v0, v14, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 611
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v7, 0x1

    const/4 v12, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 615
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 616
    .local v13, "bundle":Landroid/os/Bundle;
    const-string v4, "address"

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v2, v13}, Lcom/android/internal/telephony/InboundSmsTracker;->setExtraData(Landroid/os/Bundle;)V

    .line 620
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    goto/16 :goto_0

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v3    # "userData":[B
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v14    # "index":I
    .restart local v15    # "index":I
    :cond_2
    move v14, v15

    .end local v15    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_1
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 518
    packed-switch p0, :pswitch_data_0

    .line 529
    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    .line 522
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 524
    :pswitch_2
    const/16 v0, 0x23

    goto :goto_0

    .line 526
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "accessory"    # Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .prologue
    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify To app. Action> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1014
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1016
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1017
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 5
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ack last incoming sms> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->allowMtSmsInEcmMode:Z

    if-nez v3, :cond_0

    .line 497
    :goto_0
    return-void

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCdmaNackWith0x23()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    .line 470
    const/4 p2, 0x3

    .line 473
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->resultToCause(I)I

    move-result v0

    .line 474
    .local v0, "causeCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 476
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCheckDuplicateSms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 482
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mAckWaitMessageId:I

    if-eqz v3, :cond_4

    .line 483
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v3, :cond_2

    .line 484
    new-instance v3, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v1, v1}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Landroid/content/Context;IZ)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mAckWaitMessageId:I

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicateFile(II)V

    .line 489
    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mAckWaitMessageId:I

    .line 493
    :cond_4
    if-nez v0, :cond_5

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 496
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 20
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    move-object/from16 v14, p1

    .line 192
    check-cast v14, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 193
    .local v14, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v12

    .line 194
    .local v12, "isCmas":Z
    const/4 v13, 0x0

    .line 195
    .local v13, "isInEcm":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCmas? "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->allowMtSmsInEcmMode:Z

    .line 200
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintMtSmsInEcmMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-nez v2, :cond_0

    .line 204
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->allowMtSmsInEcmMode:Z

    .line 208
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->isInEmergencyCallMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->allowMtSmsInEcmMode:Z

    if-nez v2, :cond_1

    .line 212
    const-string v2, "Ecm callback mode."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 213
    const/4 v13, 0x1

    .line 214
    if-nez v12, :cond_1

    .line 215
    const/4 v2, -0x1

    .line 445
    :goto_0
    return v2

    .line 238
    :cond_1
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    .line 242
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCheckDuplicateSms()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 245
    const-string v2, "got Duplicate SMS -- drop it"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 248
    if-eqz v12, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    const/4 v2, -0x1

    goto :goto_0

    .line 252
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 257
    :cond_3
    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    .line 259
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v10, v2

    const-wide/high16 v18, 0x401c000000000000L    # 7.0

    cmpl-double v2, v10, v18

    if-ltz v2, :cond_6

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintMtSmsInEcmMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 288
    :cond_4
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 289
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v16

    .line 290
    .local v16, "teleService":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "teleService> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v4, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->verifyAndKillDevice(Ljava/lang/String;)V

    .line 297
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 265
    .end local v16    # "teleService":I
    :cond_5
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 278
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put CMAS in queue: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 281
    monitor-exit v4

    .line 282
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 281
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 300
    .restart local v16    # "teleService":I
    :cond_7
    const/4 v7, 0x0

    .line 301
    .local v7, "isDiscard":Z
    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;Landroid/telephony/SmsCbMessage;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 302
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportCmasAck()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 303
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 305
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 306
    :cond_9
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-nez v2, :cond_a

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 308
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 310
    :cond_a
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_c

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheck3gpp2CbDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 312
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 314
    :cond_b
    invoke-static {v14}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 315
    const/4 v7, 0x1

    .line 319
    :cond_c
    sparse-switch v16, :sswitch_data_0

    .line 361
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    .line 369
    :cond_d
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEasAllowSms()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v2, v4, :cond_11

    .line 374
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 324
    :sswitch_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->shouldDiscardVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 328
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->handleVoicemailTeleservice(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 329
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 333
    :sswitch_2
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDispatcher:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 335
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 340
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mServiceCategoryProgramHandler:Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;

    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/cdma/CdmaServiceCategoryProgramHandler;->dispatchSmsMessage(Ljava/lang/Object;)V

    .line 341
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 365
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported teleservice 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x4

    goto/16 :goto_0

    .line 377
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isFollowSprintWapPushSmsFormat()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 378
    const-string v2, "9999999999"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 379
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCtCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 384
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isFollowCtWapPushSmsFormat()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 385
    const v2, 0xfdea

    move/from16 v0, v16

    if-ne v2, v0, :cond_13

    .line 386
    const-string v2, "got CT WAP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCtCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 389
    :cond_13
    const v2, 0xfdf1

    move/from16 v0, v16

    if-ne v2, v0, :cond_14

    .line 390
    const-string v2, "got CT DM WAP"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    iget v4, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 393
    :cond_14
    const v2, 0xfded

    move/from16 v0, v16

    if-ne v2, v0, :cond_15

    .line 396
    const-string v2, "got CT CMD WAP PUSH"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 400
    new-instance v3, Landroid/content/Intent;

    const-string v2, "com.htc.sms.action.CT_CMD_WAP_PUSH_RECEIVED"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "intent":Landroid/content/Intent;
    const-string v2, "user_data"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 402
    const-string v2, "originating_address"

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const/4 v2, 0x1

    new-array v5, v2, [[B

    .line 404
    .local v5, "pdus":[[B
    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v5, v2

    .line 405
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;

    .line 409
    .end local v7    # "isDiscard":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "com.htc.permission.sms.CT_CMD_WAP_PUSH"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 410
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 416
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "pdus":[[B
    .restart local v7    # "isDiscard":Z
    :cond_15
    const/16 v2, 0x1004

    move/from16 v0, v16

    if-ne v2, v0, :cond_16

    .line 417
    const-string v2, "process CdmaWap Push"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v7

    .end local v7    # "isDiscard":Z
    iget v8, v14, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->processCdmaWapPdu([BILjava/lang/String;J)I

    move-result v2

    goto/16 :goto_0

    .line 423
    .restart local v7    # "isDiscard":Z
    :cond_16
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v15

    .line 424
    .local v15, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/4 v2, 0x1

    new-array v5, v2, [[B

    .line 425
    .restart local v5    # "pdus":[[B
    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v5, v2

    .line 426
    if-eqz v15, :cond_17

    iget-object v2, v15, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_18

    .line 427
    :cond_17
    if-eqz v15, :cond_19

    iget-object v2, v15, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_19

    .line 437
    :cond_18
    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v8, 0x1

    .line 441
    .local v8, "isBroadcastType":Z
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 442
    .restart local v3    # "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;

    .line 445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I

    move-result v2

    goto/16 :goto_0

    .line 429
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "isBroadcastType":Z
    :cond_19
    const/4 v2, 0x1

    invoke-virtual {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v4

    if-eq v2, v4, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCheckDuplicateSms()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 431
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)I

    move-result v2

    goto/16 :goto_0

    .line 437
    :cond_1a
    const/4 v8, 0x0

    goto :goto_1

    .line 319
    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_0
        0x1002 -> :sswitch_2
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_0
        0x1005 -> :sswitch_2
        0x1006 -> :sswitch_3
        0xfdea -> :sswitch_0
        0xfded -> :sswitch_0
        0xfdf1 -> :sswitch_0
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected dispatchPendingSprintReassembleSms(Ljava/lang/String;I)V
    .locals 21
    .param p1, "originatingAddress"    # Ljava/lang/String;
    .param p2, "sequenceCount"    # I

    .prologue
    .line 1079
    const/16 v20, 0x0

    check-cast v20, [[B

    .line 1080
    .local v20, "pdus":[[B
    const/16 v16, 0x0

    .line 1082
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1083
    :cond_0
    const-string v2, "No originating address and can\'t check pending Sprint reassemble SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1092
    :cond_2
    const-string v5, "address=? AND count=?"

    .line 1093
    .local v5, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1098
    .local v6, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v7, "sequence ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1101
    if-nez v16, :cond_3

    .line 1102
    const-string v2, "Cursor is null and can\'t check pending Sprint reassemble SMS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1139
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1106
    :cond_3
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    .line 1108
    .local v17, "cursorCount":I
    if-nez v17, :cond_4

    .line 1139
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1112
    :cond_4
    const/4 v2, 0x1

    :try_start_2
    new-array v0, v2, [[B

    move-object/from16 v20, v0

    .line 1116
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1117
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1119
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v20, v2

    .line 1122
    new-instance v8, Landroid/content/Intent;

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v8, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1124
    const-string v2, "format"

    const-string v3, "3gpp2"

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSprintWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v10, 0x1388

    invoke-virtual {v2, v10, v11}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1128
    const/high16 v2, 0x8000000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1129
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.RECEIVE_SMS"

    const/16 v10, 0x10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mHtcFeatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v12

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1116
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1135
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1139
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1136
    .end local v17    # "cursorCount":I
    .end local v19    # "i":I
    :catch_0
    move-exception v18

    .line 1137
    .local v18, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Can\'t access multipart SMS database for Sprint reassemble SMS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1139
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v18    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method protected handleCmasInEcmCallbackMode(Z)V
    .locals 7
    .param p1, "isECM"    # Z

    .prologue
    .line 1024
    if-nez p1, :cond_1

    .line 1025
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1026
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaCmasQueue:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsMessageBase;

    .line 1029
    .local v1, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v0, Landroid/telephony/SmsMessage;

    invoke-direct {v0}, Landroid/telephony/SmsMessage;-><init>()V

    .line 1030
    .local v0, "sms":Landroid/telephony/SmsMessage;
    iput-object v1, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1031
    const/4 v2, 0x1

    new-instance v4, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1033
    .end local v0    # "sms":Landroid/telephony/SmsMessage;
    .end local v1    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1035
    :cond_1
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/cdma/SmsMessage;)I
    .locals 13
    .param p1, "pdus"    # [[B
    .param p2, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v6, 0x1

    .line 854
    const/4 v10, 0x0

    .line 857
    .local v10, "isSendAckSkip":Z
    const/4 v12, -0x1

    .line 860
    .local v12, "returnType":I
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x3060001

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    .line 866
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v0, :cond_1

    .line 867
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 870
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v3, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(I[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 873
    const/4 v0, -0x1

    .line 974
    :goto_0
    return v0

    .line 876
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->KddiGetMessageEncoding()I

    move-result v8

    .line 877
    .local v8, "encoding":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Msgencoding> 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 878
    const/4 v0, 0x4

    if-eq v0, v8, :cond_6

    .line 881
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    .line 882
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v7

    .line 893
    .local v7, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 899
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v0

    if-nez v0, :cond_3

    .line 900
    const/4 v10, 0x1

    .line 905
    :cond_3
    if-nez v10, :cond_4

    .line 908
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 935
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch discard? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiIsDiscard()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is it special cmail? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiIsDiscard()Z

    move-result v0

    if-nez v0, :cond_8

    .line 940
    if-ne v10, v6, :cond_7

    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v3, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 945
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v11

    .line 948
    .local v11, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 949
    .local v1, "intent":Landroid/content/Intent;
    move-object v2, p2

    .line 950
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;

    .line 953
    invoke-virtual {p0, v11, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I

    move-result v0

    goto/16 :goto_0

    .line 884
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    .end local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v11    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v7

    .restart local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 889
    .end local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCdmaJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v7, v0, v3, v4, v5}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 912
    :pswitch_0
    const/4 v12, 0x1

    .line 914
    goto/16 :goto_2

    .line 919
    :pswitch_1
    const/4 v12, 0x3

    .line 921
    goto/16 :goto_2

    .line 925
    :pswitch_2
    iget v0, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mAckWaitMessageId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 968
    .end local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v8    # "encoding":I
    :catch_0
    move-exception v9

    .line 970
    .local v9, "ex":Ljava/lang/NullPointerException;
    const-string v0, "judgeSmsType() failed to create SmsAccessory"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->loge(Ljava/lang/String;)V

    .end local v9    # "ex":Ljava/lang/NullPointerException;
    :goto_3
    move v0, v12

    .line 974
    goto/16 :goto_0

    .line 956
    .restart local v7    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .restart local v8    # "encoding":I
    :cond_7
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v0

    const/high16 v3, 0x10000000

    if-ne v0, v3, :cond_9

    .line 957
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->kddiBroadcastEmailSignal([[B)V

    .line 966
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget v3, p2, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4, v7}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    goto :goto_3

    .line 959
    :cond_9
    invoke-virtual {p0, p1, v7}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "accessory"    # Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .prologue
    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify To Email signal. Action> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permission> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 998
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 999
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1000
    const-string v1, "format"

    const-string v2, "3gpp2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1002
    return-void
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSms(Landroid/os/Handler;)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 150
    const-string v0, "unregistered for 3GPP2 SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 152
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 508
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 510
    return-void
.end method

.method protected packagePdusAndExtra(Landroid/content/Intent;Lcom/android/internal/telephony/SmsMessageBase;[[B[IZZ)Landroid/content/Intent;
    .locals 4
    .param p1, "it"    # Landroid/content/Intent;
    .param p2, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p3, "pdus"    # [[B
    .param p4, "idxonsims"    # [I
    .param p5, "isDiscard"    # Z
    .param p6, "isBroadcastType"    # Z

    .prologue
    const/4 v0, 0x1

    .line 673
    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .end local p1    # "it":Landroid/content/Intent;
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .restart local p1    # "it":Landroid/content/Intent;
    :cond_0
    move-object v1, p2

    .line 674
    check-cast v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 675
    .local v1, "sms":Lcom/android/internal/telephony/cdma/SmsMessage;
    const-string v2, "SimSmsRecordIndex"

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    const-string v2, "cmas"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 677
    const-string v2, "earthquake_alert"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    const-string v2, "pdus"

    invoke-virtual {p1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 679
    const-string v2, "isCdma"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 680
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 681
    .local v0, "isCBM":Z
    :goto_0
    const-string v2, "is_cbm"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    const-string v2, "idxonsim"

    invoke-virtual {p1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 683
    const-string v2, "kddi_bcsms"

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiBCSMS()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    const-string v2, "discard"

    invoke-virtual {p1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const-string v2, "isBroadcastType"

    invoke-virtual {p1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    return-object p1

    .line 680
    .end local v0    # "isCBM":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processCtCdmaWapPdu([BILjava/lang/String;J)I
    .locals 24
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "timestamp"    # J

    .prologue
    .line 705
    const/4 v10, 0x0

    .line 706
    .local v10, "segment":I
    const/4 v11, 0x1

    .line 707
    .local v11, "totalSegments":I
    const/16 v18, 0x0

    .line 708
    .local v18, "index":I
    const/16 v20, -0x1

    .line 710
    .local v20, "msgType":I
    const/16 v22, 0x0

    .line 711
    .local v22, "sourcePort":I
    const/4 v6, 0x0

    .line 713
    .local v6, "destinationPort":I
    const/4 v15, -0x1

    .line 715
    .local v15, "cuWapReferenceNumber":I
    const/4 v3, 0x0

    .line 717
    .local v3, "mmsPdu":[B
    new-instance v19, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 723
    .local v19, "is":Lcom/android/internal/util/BitwiseInputStream;
    :goto_0
    const/16 v4, 0x8

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    .line 724
    .local v17, "id":I
    if-nez v17, :cond_2

    .line 725
    const/16 v4, 0xc

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 726
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v15, v4, 0x8

    .line 727
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v15, v4

    .line 728
    const/4 v4, 0x4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 771
    .end local v17    # "id":I
    :catch_0
    move-exception v13

    .line 772
    .local v13, "ae":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v4, "processCtCdmaWapPdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception while parse CT WAP : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v15, -0x1

    .line 780
    .end local v13    # "ae":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    if-nez v10, :cond_6

    const/16 v4, 0x23f0

    move/from16 v0, v22

    if-ne v0, v4, :cond_0

    const/16 v4, 0xb84

    if-eq v6, v4, :cond_6

    .line 781
    :cond_0
    const-string v4, "processCtCdmaWapPdu"

    const-string v5, "WSP first case !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v3, p1

    .line 790
    :cond_1
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v7, 0x1

    const/4 v12, 0x1

    move-wide/from16 v4, p4

    move-object/from16 v8, p3

    move/from16 v9, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 794
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 795
    .local v14, "bundle":Landroid/os/Bundle;
    const-string v4, "address"

    move-object/from16 v0, p3

    invoke-virtual {v14, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v2, v14}, Lcom/android/internal/telephony/InboundSmsTracker;->setExtraData(Landroid/os/Bundle;)V

    .line 799
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v4

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v14    # "bundle":Landroid/os/Bundle;
    :goto_3
    return v4

    .line 730
    .restart local v17    # "id":I
    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 732
    const/16 v4, 0x8

    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 733
    const/4 v4, 0x5

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 734
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    .line 737
    .local v21, "num_field":I
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v20

    .line 739
    if-eqz v20, :cond_3

    .line 740
    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 741
    const/4 v4, 0x1

    goto :goto_3

    .line 745
    :cond_3
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 746
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 749
    if-nez v10, :cond_4

    .line 750
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v22, v4, 0x8

    .line 751
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int v22, v22, v4

    .line 752
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v4, 0x8

    .line 753
    const/16 v4, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v6, v4

    .line 756
    mul-int/lit8 v4, v21, 0x8

    add-int/lit8 v4, v4, -0x38

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    .line 763
    :goto_4
    move/from16 p2, v15

    .line 765
    goto/16 :goto_1

    .line 759
    :cond_4
    mul-int/lit8 v4, v21, 0x8

    add-int/lit8 v4, v4, -0x18

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_4

    .line 767
    .end local v21    # "num_field":I
    :cond_5
    const/4 v15, -0x1

    .line 768
    goto/16 :goto_1

    .line 774
    .end local v17    # "id":I
    :catch_1
    move-exception v16

    .line 775
    .local v16, "e":Ljava/lang/Exception;
    const-string v4, "processCtCdmaWapPdu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception while parse CT WAP : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v4, 0x4

    goto/16 :goto_3

    .line 783
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v10, :cond_1

    const/4 v4, -0x1

    if-ne v15, v4, :cond_1

    .line 784
    const-string v4, "processCtCdmaWapPdu"

    const-string v5, "WSP second case !"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    move-object/from16 v3, p1

    goto/16 :goto_2
.end method

.method protected resetLastSmsFingerprint()V
    .locals 3

    .prologue
    .line 661
    const-string v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "inEcm":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    :goto_0
    return-void

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastAcknowledgedSmsFingerprint:[B

    .line 666
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method
