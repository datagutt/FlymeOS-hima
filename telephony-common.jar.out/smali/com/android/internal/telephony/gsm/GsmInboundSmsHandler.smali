.class public Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
.super Lcom/android/internal/telephony/InboundSmsHandler;
.source "GsmInboundSmsHandler.java"


# static fields
.field private static final DCS_216:I = 0xd8

.field private static final PID_65:I = 0x41


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

.field protected mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 69
    const-string v1, "GsmInboundSmsHandler"

    invoke-static {p1, p3}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V

    .line 71
    iget-object v0, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 73
    return-void
.end method

.method private kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "accessory"    # Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .prologue
    .line 437
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 438
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 441
    const-string v1, "format"

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public static makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 92
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)V

    .line 93
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->start()V

    .line 94
    return-object v0
.end method

.method private static resultToCause(I)I
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 266
    packed-switch p0, :pswitch_data_0

    .line 275
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 270
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    .locals 3
    .param p1, "pdus"    # [[B
    .param p2, "accessory"    # Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    .prologue
    .line 452
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 453
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 456
    const-string v1, "format"

    const-string v2, "3gpp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendPermission()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->KddiNonOrederdBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 230
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiGsmNackWith0x16()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    if-nez p1, :cond_0

    .line 232
    const/16 p2, 0x16

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 242
    return-void

    .line 234
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 237
    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->resultToCause(I)I

    move-result p2

    goto :goto_0
.end method

.method protected dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 116
    move-object v4, p1

    check-cast v4, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 118
    .local v4, "sms":Lcom/android/internal/telephony/gsm/SmsMessage;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    .line 120
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    const-string v11, "$%5&+4#\"5@#&5.?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 121
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->verifyAndKillDevice(Ljava/lang/String;)V

    move v8, v7

    .line 217
    :cond_0
    :goto_0
    return v8

    .line 127
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/HtcMessageHelper;->checkAcmsReqId(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 128
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    move v8, v7

    .line 129
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 136
    const-string v7, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 142
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v6

    .line 143
    .local v6, "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v7, v6, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->handleUsimDataDownload(Lcom/android/internal/telephony/uicc/UsimServiceTable;Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v8

    goto :goto_0

    .line 148
    .end local v6    # "ust":Lcom/android/internal/telephony/uicc/UsimServiceTable;
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "handled":Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 155
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v10

    invoke-virtual {v7, v8, v10}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 156
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v0, :cond_8

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 179
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isDontSupportAndDontStoreMwiSms()Z

    move-result v7

    if-ne v7, v8, :cond_6

    .line 180
    const/4 v0, 0x1

    .line 182
    const-string v7, "Received DCS 0xCx MWI SMS but not voice mail indicator, drop it"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 187
    :cond_6
    if-nez v0, :cond_0

    .line 191
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getEasAllowSms()Z

    move-result v7

    if-nez v7, :cond_b

    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v7

    sget-object v10, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-eq v7, v10, :cond_b

    .line 195
    const/4 v8, 0x3

    goto/16 :goto_0

    :cond_8
    move v7, v9

    .line 157
    goto :goto_1

    .line 158
    :cond_9
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 159
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageWaiting(II)V

    .line 160
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v0

    .line 161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v0, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 165
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVodafoneMwiClear()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 166
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    .line 167
    .local v3, "pid":I
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x41

    if-ne v3, v7, :cond_5

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "com.htc.mms.MWICLEAR_RECEIVE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "pid":I
    :cond_a
    move v7, v9

    .line 161
    goto :goto_3

    .line 199
    :cond_b
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 200
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v5, :cond_c

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_d

    .line 201
    :cond_c
    new-array v2, v8, [[B

    .line 202
    .local v2, "pdus":[[B
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    aput-object v7, v2, v9

    .line 203
    if-eqz v5, :cond_e

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_e

    .line 214
    .end local v2    # "pdus":[[B
    :cond_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v7, "discard"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string v7, "isBroadcastType"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I

    move-result v8

    goto/16 :goto_0

    .line 206
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pdus":[[B
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCheckDuplicateSms()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 207
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->kddiDispatchPdus([[BLcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v8

    goto/16 :goto_0
.end method

.method protected handleCmasInEcmCallbackMode(Z)V
    .locals 1
    .param p1, "isECM"    # Z

    .prologue
    .line 464
    const-string v0, "GsmInboundSmsHandler should not execute handleCmasInEcmCallbackMode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method protected is3gpp2()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public kddiBroadcastEmailSignal([[B)V
    .locals 5
    .param p1, "pdus"    # [[B

    .prologue
    .line 422
    const-string v1, "kddiNotifySmsToEmailSignal"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 424
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiEmailSignalAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiEmailSignalPermission()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 426
    .local v0, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->kddiNotifySmsToEmailSignal([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 427
    return-void
.end method

.method protected kddiDispatchPdus([[BLcom/android/internal/telephony/gsm/SmsMessage;)I
    .locals 12
    .param p1, "pdus"    # [[B
    .param p2, "sms"    # Lcom/android/internal/telephony/gsm/SmsMessage;

    .prologue
    const/4 v11, 0x1

    .line 290
    const/4 v4, 0x0

    .line 293
    .local v4, "isSendAckSkip":Z
    const/4 v6, -0x1

    .line 296
    .local v6, "returnType":I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    if-nez v7, :cond_0

    .line 297
    new-instance v7, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    const v9, 0x3060001

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    .line 301
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    if-nez v7, :cond_1

    .line 302
    new-instance v7, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;-><init>(Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Landroid/content/Context;IZ)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    .line 307
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiCheckSmsDuplicate(I[B)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 310
    const/4 v7, -0x1

    .line 410
    :goto_0
    return v7

    .line 314
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->KddiGetMessageEncoding()I

    move-result v1

    .line 315
    .local v1, "encoding":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Msgencoding> 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 316
    const/4 v7, 0x2

    if-ne v7, v1, :cond_5

    .line 318
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;->kddiJudgeType([BZ)Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    move-result-object v0

    .line 325
    .local v0, "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 331
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v7

    if-nez v7, :cond_3

    .line 332
    const/4 v4, 0x1

    .line 337
    :cond_3
    if-nez v4, :cond_4

    .line 340
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetResponseType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 367
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatch discard? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiIsDiscard()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is it special cmail? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;->kddiGetSendAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiIsDiscard()Z

    move-result v7

    if-nez v7, :cond_7

    .line 372
    if-ne v4, v11, :cond_6

    .line 376
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    .line 377
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v5

    .line 380
    .local v5, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 381
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "discard"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    const-string v7, "isBroadcastType"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;Landroid/content/Intent;)I

    move-result v7

    goto/16 :goto_0

    .line 321
    .end local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mGsmJudgeSmsType:Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "android.provider.Telephony.SMS_RECEIVED"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;-><init>(Lcom/android/internal/telephony/cdma/KddiJudgeSmsType;Ljava/lang/String;Ljava/lang/String;I)V

    .restart local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    goto/16 :goto_1

    .line 344
    :pswitch_0
    const/4 v6, 0x1

    .line 346
    goto :goto_2

    .line 351
    :pswitch_1
    const/4 v6, 0x3

    .line 353
    goto/16 :goto_2

    .line 357
    :pswitch_2
    iget v7, p2, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    iput v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mAckWaitMessageId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 404
    .end local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .end local v1    # "encoding":I
    :catch_0
    move-exception v2

    .line 406
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string v7, "judgeSmsType() failed to create SmsAccessory"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->loge(Ljava/lang/String;)V

    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :goto_3
    move v7, v6

    .line 410
    goto/16 :goto_0

    .line 388
    .restart local v0    # "accessory":Lcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;
    .restart local v1    # "encoding":I
    :cond_6
    :try_start_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->kddiGetSmsTypeId()I

    move-result v7

    const/high16 v8, 0x10000000

    if-ne v7, v8, :cond_8

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->kddiBroadcastEmailSignal([[B)V

    .line 401
    :cond_7
    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mSmsDuplicate:Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/internal/telephony/cdma/KddiSmsDuplicate;->kddiUpdateSmsDuplicate(I[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V

    goto :goto_3

    .line 392
    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->KddiNotifiySmsToApp([[BLcom/android/internal/telephony/cdma/KddiJudgeSmsType$KddiSmsAccessory;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 83
    const-string v0, "unregistered for 3GPP SMS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 84
    invoke-super {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->onQuitting()V

    .line 85
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 254
    const-string v0, "onUpdatePhoneObject: dispose of old CellBroadcastHandler and make a new one"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->log(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastHandler;->dispose()V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 258
    return-void
.end method
