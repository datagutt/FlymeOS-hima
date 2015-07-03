.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CdmaSMSDispatcher"

.field private static final VDBG:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "usageMonitor"    # Lcom/android/internal/telephony/SmsUsageMonitor;
    .param p3, "imsSMSDispatcher"    # Lcom/android/internal/telephony/ImsSMSDispatcher;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 112
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method private htcHandleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 10
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v9, -0x1

    .line 195
    const-string v6, "CdmaSMSDispatcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ack message messageRef >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v4, -0x1

    .line 197
    .local v4, "pos":I
    const/4 v5, 0x0

    .line 198
    .local v5, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 199
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    check-cast v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 200
    .restart local v5    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v6, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v6, v7, :cond_2

    .line 201
    move v4, v2

    .line 207
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v6, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 209
    const-string v6, "format"

    const-string v7, "3gpp2"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    if-le v4, v9, :cond_3

    .line 212
    iget-object v3, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 214
    .local v3, "intent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :goto_1
    if-le v4, v9, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 221
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-static {v6, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 222
    return-void

    .line 198
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .restart local v1    # "fillIn":Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-static {v6, v7, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V

    goto :goto_1

    .line 215
    .restart local v3    # "intent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private isImsCdmaMo(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 8
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 680
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportImsSms()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 712
    :cond_0
    :goto_0
    return v2

    .line 684
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v2

    .line 685
    .local v2, "isIms":Z
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendSms(), IMS Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    .line 688
    .local v0, "currentDataNetwork":I
    const/16 v5, 0xe

    if-eq v0, v5, :cond_2

    const/16 v5, 0xd

    if-ne v0, v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    const/4 v6, 0x7

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_3

    move v1, v4

    .line 694
    .local v1, "imsSmsDisabled":Z
    :goto_1
    if-eqz v1, :cond_4

    move v2, v3

    goto :goto_0

    .end local v1    # "imsSmsDisabled":Z
    :cond_3
    move v1, v3

    .line 688
    goto :goto_1

    .line 697
    .restart local v1    # "imsSmsDisabled":Z
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwLteRetryMechanism()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 704
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-eqz v5, :cond_0

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-ne v5, v4, :cond_5

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    if-eq v5, v4, :cond_0

    :cond_5
    move v2, v3

    .line 708
    goto :goto_0
.end method

.method private replaceMessageId([BI)[B
    .locals 11
    .param p1, "pdu"    # [B
    .param p2, "messageId"    # I

    .prologue
    const/4 v10, 0x0

    .line 724
    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-object p1

    .line 733
    :cond_1
    const/4 v1, 0x0

    .line 734
    .local v1, "bearerDataPosition":I
    const/4 v0, 0x0

    .line 736
    .local v0, "bearDataLength":I
    add-int/lit8 v1, v1, 0x4

    .line 737
    add-int/lit8 v1, v1, 0x4

    .line 738
    add-int/lit8 v1, v1, 0x4

    .line 739
    add-int/lit8 v1, v1, 0x4

    .line 740
    add-int/lit8 v1, v1, 0x1

    .line 741
    array-length v8, p1

    const/16 v9, 0x11

    if-le v8, v9, :cond_0

    .line 742
    const/16 v8, 0x10

    aget-byte v8, p1, v8

    add-int/lit8 v1, v8, 0x11

    .line 746
    add-int/lit8 v1, v1, 0x1

    .line 747
    add-int/lit8 v1, v1, 0x1

    .line 748
    add-int/lit8 v1, v1, 0x1

    .line 749
    add-int/lit8 v1, v1, 0x1

    .line 750
    array-length v8, p1

    if-lt v8, v1, :cond_0

    .line 751
    add-int/lit8 v8, v1, -0x1

    aget-byte v0, p1, v8

    .line 757
    move v2, v1

    .line 758
    .local v2, "currentPosition":I
    aget-byte v4, p1, v2

    .line 761
    .local v4, "id":I
    :goto_1
    if-eqz v4, :cond_2

    .line 763
    array-length v8, p1

    add-int/lit8 v9, v2, 0x2

    if-lt v8, v9, :cond_0

    .line 767
    add-int/lit8 v2, v2, 0x1

    aget-byte v8, p1, v2

    and-int/lit16 v5, v8, 0xff

    .line 770
    .local v5, "length":I
    array-length v8, p1

    add-int v9, v2, v5

    add-int/lit8 v9, v9, 0x1

    if-le v8, v9, :cond_0

    .line 774
    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v8

    .line 775
    aget-byte v4, p1, v2

    goto :goto_1

    .line 778
    .end local v5    # "length":I
    :cond_2
    if-nez v4, :cond_0

    .line 782
    array-length v8, p1

    add-int/lit8 v9, v2, 0x2

    if-lt v8, v9, :cond_0

    .line 786
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v5, v8, 0xff

    .line 789
    .restart local v5    # "length":I
    array-length v8, p1

    add-int v9, v2, v5

    add-int/lit8 v9, v9, 0x1

    if-le v8, v9, :cond_0

    .line 792
    add-int/lit8 v8, v5, 0x2

    new-array v6, v8, [B

    .line 795
    .local v6, "messageIdentifier":[B
    array-length v8, v6

    invoke-static {p1, v2, v6, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 798
    new-instance v7, Lcom/android/internal/util/BitwiseOutputStream;

    array-length v8, v6

    invoke-direct {v7, v8}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 800
    .local v7, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v8, 0x8

    const/4 v9, 0x0

    :try_start_0
    aget-byte v9, v6, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 801
    const/16 v8, 0x8

    const/4 v9, 0x1

    aget-byte v9, v6, v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 802
    const/4 v8, 0x4

    const/4 v9, 0x2

    aget-byte v9, v6, v9

    shr-int/lit8 v9, v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 803
    const/16 v8, 0x8

    shr-int/lit8 v9, p2, 0x8

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 804
    const/16 v8, 0x8

    invoke-virtual {v7, v8, p2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 805
    const/4 v8, 0x4

    const/4 v9, 0x4

    aget-byte v9, v6, v9

    and-int/lit8 v9, v9, 0xf

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v6

    .line 812
    array-length v8, v6

    invoke-static {v6, v10, p1, v2, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto/16 :goto_0

    .line 806
    :catch_0
    move-exception v3

    .line 807
    .local v3, "e":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    goto/16 :goto_0
.end method


# virtual methods
.method public calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p1, "messageBody"    # Ljava/lang/CharSequence;
    .param p2, "use7bitOnly"    # Z

    .prologue
    .line 577
    invoke-static {p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 131
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "CdmaSMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "3gpp2"

    return-object v0
.end method

.method handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 8
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 166
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isPendingMsgRepoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->htcHandleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ack message messageRef >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 173
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 174
    .local v4, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pending messageRef >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    if-ne v5, v6, :cond_2

    .line 177
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateSentMessageStatus(Landroid/content/Context;I)V

    .line 182
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 183
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 184
    .local v1, "fillIn":Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 185
    const-string v5, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v5

    goto :goto_0

    .line 172
    .end local v1    # "fillIn":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/app/PendingIntent;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected handleStatusReport(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 153
    instance-of v0, p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v0, :cond_0

    .line 155
    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 159
    :goto_0
    return-void

    .line 157
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const-string v0, "CdmaSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport() called for object type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 373
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This method must be called only on ImsSMSDispatcher"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 18
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 229
    if-eqz p6, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .local v9, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 232
    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v11

    .line 233
    .local v11, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v10 .. v16}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v17

    .line 235
    .local v17, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 236
    return-void

    .line 229
    .end local v9    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v11    # "map":Ljava/util/HashMap;
    .end local v17    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public sendMultipartData(Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 29
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v22, 0x0

    .line 252
    .local v22, "bFirstSms":Z
    const/16 v23, 0x0

    .line 253
    .local v23, "bLastSms":Z
    if-eqz p7, :cond_0

    .line 254
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 255
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 258
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v27, v0

    .line 259
    .local v27, "refNumber":I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 262
    .local v26, "msgCount":I
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 263
    .local v17, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v18, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 264
    .local v18, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 265
    new-instance v24, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 266
    .local v24, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 267
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, v24

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 268
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 269
    const/4 v2, 0x1

    move-object/from16 v0, v24

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 270
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 271
    .local v5, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v24

    iput-object v0, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 273
    const/4 v14, 0x0

    .line 274
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v25

    if-le v2, v0, :cond_1

    .line 275
    move-object/from16 v0, p5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 278
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_1
    const/4 v15, 0x0

    .line 279
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v25

    if-le v2, v0, :cond_2

    .line 280
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 283
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_2
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v15, :cond_3

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p3

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 286
    .local v11, "pdus":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 287
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-object/from16 v20, v5

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v28

    .line 291
    .local v28, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-eqz p7, :cond_a

    .line 292
    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    .line 293
    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_4

    .line 294
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 318
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 264
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 283
    .end local v11    # "pdus":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 295
    .restart local v11    # "pdus":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    if-nez v25, :cond_5

    .line 296
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 297
    :cond_5
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_6

    .line 298
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 300
    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 301
    :cond_7
    if-nez v25, :cond_8

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    .line 302
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 303
    :cond_8
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_9

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_9

    .line 304
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 306
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 308
    :cond_a
    if-nez v25, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_b

    .line 309
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 310
    :cond_b
    if-nez v25, :cond_c

    .line 311
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 312
    :cond_c
    add-int/lit8 v2, v26, -0x1

    move/from16 v0, v25

    if-ne v0, v2, :cond_d

    .line 313
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_2

    .line 315
    :cond_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto/16 :goto_2

    .line 320
    .end local v5    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v11    # "pdus":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v24    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v28    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_e
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 381
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 382
    return-void
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 39
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v29, 0x0

    .line 395
    .local v29, "intent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 396
    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "intent":Landroid/app/PendingIntent;
    check-cast v29, Landroid/app/PendingIntent;

    .line 398
    .restart local v29    # "intent":Landroid/app/PendingIntent;
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "packageName":Ljava/lang/String;
    if-nez p6, :cond_4

    .line 401
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v11, v0, v5, v6}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getMultipartMessageText(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v10, 0x1

    :goto_0
    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 422
    :cond_1
    :goto_1
    const/16 v32, -0x1

    .line 423
    .local v32, "nli":I
    const/16 v33, 0x0

    .line 424
    .local v33, "priority":I
    const/4 v4, 0x0

    .line 427
    .local v4, "callback":Ljava/lang/String;
    if-eqz p8, :cond_2

    .line 428
    const-string v5, "NLI"

    const/4 v6, -0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v32

    .line 429
    const-string v5, "PRIORITY"

    const/4 v6, 0x0

    move-object/from16 v0, p8

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v33

    .line 430
    const-string v5, "CALLBACK"

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 434
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v34, v0

    .line 435
    .local v34, "refNumber":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v31

    .line 436
    .local v31, "msgCount":I
    const/16 v27, 0x0

    .line 437
    .local v27, "encoding":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v23, v0

    .line 442
    .local v23, "concatedDate":I
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v35, "sb":Ljava/lang/StringBuilder;
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_5

    .line 444
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 402
    .end local v4    # "callback":Ljava/lang/String;
    .end local v23    # "concatedDate":I
    .end local v27    # "encoding":I
    .end local v28    # "i":I
    .end local v31    # "msgCount":I
    .end local v32    # "nli":I
    .end local v33    # "priority":I
    .end local v34    # "refNumber":I
    .end local v35    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 410
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v6, v7, v1, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 446
    .restart local v4    # "callback":Ljava/lang/String;
    .restart local v23    # "concatedDate":I
    .restart local v27    # "encoding":I
    .restart local v28    # "i":I
    .restart local v31    # "msgCount":I
    .restart local v32    # "nli":I
    .restart local v33    # "priority":I
    .restart local v34    # "refNumber":I
    .restart local v35    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v25

    .line 447
    .local v25, "details":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 v27, v0

    .line 462
    new-instance v17, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 463
    .local v17, "unsentPartCount":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v18, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 465
    .local v18, "anyPartFailed":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/16 v28, 0x0

    :goto_3
    move/from16 v0, v28

    move/from16 v1, v31

    if-ge v0, v1, :cond_12

    .line 466
    new-instance v22, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 467
    .local v22, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 468
    add-int/lit8 v5, v28, 0x1

    move-object/from16 v0, v22

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 469
    move/from16 v0, v31

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 470
    const/4 v5, 0x1

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 471
    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 472
    .local v20, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 475
    const/4 v5, -0x1

    move/from16 v0, v32

    if-eq v0, v5, :cond_7

    .line 476
    const/4 v5, 0x1

    new-array v0, v5, [B

    move-object/from16 v24, v0

    .line 477
    .local v24, "data":[B
    const/4 v5, 0x0

    move/from16 v0, v32

    int-to-byte v6, v0

    aput-byte v6, v24, v5

    .line 478
    new-instance v30, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct/range {v30 .. v30}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 480
    .local v30, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v5, 0xe

    move/from16 v0, v32

    if-eq v0, v5, :cond_6

    .line 481
    const/16 v5, 0x24

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 482
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 483
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, v32

    if-ne v0, v5, :cond_7

    .line 487
    new-instance v30, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .end local v30    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct/range {v30 .. v30}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 488
    .restart local v30    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v5, 0x25

    move-object/from16 v0, v30

    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 489
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 490
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v24    # "data":[B
    .end local v30    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_7
    const/4 v14, 0x0

    .line 496
    .local v14, "sentIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v28

    if-le v5, v0, :cond_8

    .line 497
    move-object/from16 v0, p4

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 500
    .restart local v14    # "sentIntent":Landroid/app/PendingIntent;
    :cond_8
    const/4 v15, 0x0

    .line 501
    .local v15, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v28

    if-le v5, v0, :cond_9

    .line 502
    move-object/from16 v0, p5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v15, Landroid/app/PendingIntent;

    .line 505
    .restart local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_9
    new-instance v38, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v38 .. v38}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 506
    .local v38, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 507
    move-object/from16 v0, v20

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 508
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_c

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isFollowCtEmsFormat()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 510
    const/4 v5, 0x2

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 517
    :goto_4
    const/4 v5, 0x1

    move-object/from16 v0, v38

    iput-boolean v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 523
    const/16 v36, 0x0

    .line 524
    .local v36, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v5

    float-to-double v6, v5

    const-wide/high16 v8, 0x401c000000000000L    # 7.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_e

    .line 529
    if-eqz v15, :cond_d

    add-int/lit8 v5, v31, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_d

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v0, v1, v5, v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduWithConfig(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/app/PendingIntent;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v36

    .line 537
    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v13

    .line 538
    .local v13, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x0

    move-object/from16 v12, p0

    move-object/from16 v19, p6

    invoke-virtual/range {v12 .. v21}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v37

    .line 544
    .local v37, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    if-nez v28, :cond_10

    .line 545
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    .line 552
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 555
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwRetryDialog()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 557
    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    const/16 v5, 0xf

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0x1770

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 559
    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mWaitSendObj:Ljava/lang/Object;

    const-wide/16 v8, 0x2710

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 561
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :cond_a
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_3

    .line 512
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v36    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_b
    const/16 v5, 0x9

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_4

    .line 515
    :cond_c
    const/4 v5, 0x4

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto/16 :goto_4

    .line 529
    .restart local v36    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    .line 532
    :cond_e
    if-eqz v15, :cond_f

    add-int/lit8 v5, v31, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_f

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v33

    invoke-static {v0, v1, v5, v2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v36

    goto :goto_6

    :cond_f
    const/4 v5, 0x0

    goto :goto_9

    .line 546
    .restart local v13    # "map":Ljava/util/HashMap;
    .restart local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_10
    const/4 v5, 0x1

    move/from16 v0, v31

    if-le v0, v5, :cond_11

    add-int/lit8 v5, v31, -0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_11

    .line 547
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_7

    .line 549
    :cond_11
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->setLinkControl(ZZ)V

    goto :goto_7

    .line 561
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 563
    :catch_0
    move-exception v26

    .line 564
    .local v26, "e":Ljava/lang/Exception;
    const-string v5, "CdmaSMSDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait sent exception >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 570
    .end local v13    # "map":Ljava/util/HashMap;
    .end local v14    # "sentIntent":Landroid/app/PendingIntent;
    .end local v15    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v20    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v22    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v36    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v37    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v38    # "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_12
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .locals 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "encoding"    # I
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p11, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 824
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 825
    .local v16, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 826
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 827
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_0

    .line 828
    const/16 v4, 0x9

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 832
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, v16

    iput-boolean v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 838
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v6, 0x0

    const-string v7, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4, v6, v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .line 841
    .local v14, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v5

    .line 843
    .local v5, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p4

    invoke-virtual/range {v4 .. v13}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v15

    .line 845
    .local v15, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 846
    return-void

    .line 830
    .end local v5    # "map":Ljava/util/HashMap;
    .end local v14    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v15    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x4

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 838
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected sendNewSubmitPduForDataSms(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 21
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # I
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "lastPart"    # Z
    .param p9, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p10, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 869
    new-instance v18, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 870
    .local v18, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    move/from16 v0, p3

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 871
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 872
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 874
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 876
    new-instance v20, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 877
    .local v20, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 878
    const/4 v2, 0x0

    move-object/from16 v0, v20

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 879
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 880
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object/from16 v0, v20

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 882
    if-eqz p7, :cond_0

    if-eqz p8, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 885
    .local v7, "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v9

    .line 886
    .local v9, "map":Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    if-nez p8, :cond_1

    const/16 v17, 0x1

    :goto_1
    move-object/from16 v8, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v16, p5

    invoke-virtual/range {v8 .. v17}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 888
    .local v19, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 889
    return-void

    .line 882
    .end local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v9    # "map":Ljava/util/HashMap;
    .end local v19    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 886
    .restart local v7    # "submitPdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v9    # "map":Ljava/util/HashMap;
    :cond_1
    const/16 v17, 0x0

    goto :goto_1
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v5, 0x0

    .line 584
    iget-object v11, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 587
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "pdu"

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v12, v0

    check-cast v12, [B

    .line 589
    .local v12, "pdu":[B
    const-string v0, "CdmaSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSms:  isIms()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mImsRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mMessageRef="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SS="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMessageIdMechanism()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 600
    iget v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    and-int/lit16 v0, v0, 0xff

    invoke-direct {p0, v12, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->replaceMessageId([BI)[B

    move-result-object v12

    .line 606
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SMSDispatcherReceiver;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 609
    .local v4, "resultReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.provider.Telephony.SMS_SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 611
    .local v9, "carrierPackage":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 612
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getCarrierAppPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v0, "pdu"

    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 614
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 617
    .local v10, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const-string v0, "concat.refNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    const-string v0, "concat.seqNumber"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    const-string v0, "concat.msgCount"

    iget v2, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    .end local v10    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_1
    const/high16 v0, 0x8000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 622
    const-string v0, "CdmaSMSDispatcher"

    const-string v2, "Sending SMS by carrier app."

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v6, 0x0

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 629
    :goto_0
    return-void

    .line 627
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method protected sendSmsByPstn(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 641
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 643
    .local v3, "ss":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIms()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_1

    .line 644
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mNotInServiceFailTimestamp:J

    .line 645
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNotInServiceError(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v4, p1}, Lcom/htc/internal/telephony/HtcMoSmsController;->checkInForSendOrWait(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v0

    .line 654
    .local v0, "allowSending":Z
    if-eqz v0, :cond_0

    .line 658
    const/4 v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 659
    .local v2, "reply":Landroid/os/Message;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string v5, "pdu"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v1, v4

    check-cast v1, [B

    .line 665
    .local v1, "pdu":[B
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isImsCdmaMo(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 666
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    iget v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    invoke-interface {v4, v1, v5, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BIILandroid/os/Message;)V

    .line 669
    iget v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    goto :goto_0

    .line 671
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendStatusReportMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 1
    .param p1, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 148
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 149
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v2, 0x0

    .line 849
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->onFailed(Landroid/content/Context;II)V

    .line 857
    :goto_0
    return-void

    .line 856
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "scAddr"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageUri"    # Landroid/net/Uri;
    .param p7, "callingPkg"    # Ljava/lang/String;
    .param p8, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 328
    const-string v2, "CdmaSMSDispatcher"

    const-string v4, "Enter cdmaSMSdispatcher sendText"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v10, 0x0

    .line 330
    .local v10, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_2

    .line 335
    if-eqz p5, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    .line 341
    :goto_1
    if-eqz v10, :cond_6

    .line 347
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getAppPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v9

    .line 349
    .local v9, "packageName":Ljava/lang/String;
    if-nez p6, :cond_5

    .line 350
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, v2, v4}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()J

    move-result-wide v4

    if-eqz p5, :cond_4

    const/4 v8, 0x1

    :goto_2
    move-object v3, p0

    move-object v6, p1

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->writeOutboxMessage(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    .line 361
    :cond_0
    :goto_3
    invoke-virtual {p0, p1, p2, p3, v10}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v3

    .line 362
    .local v3, "map":Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/net/Uri;Z)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v11

    .line 364
    .local v11, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 368
    .end local v3    # "map":Ljava/util/HashMap;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    return-void

    .line 335
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 338
    :cond_2
    if-eqz p5, :cond_3

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v10

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_5

    .line 351
    .restart local v9    # "packageName":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 359
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getSubId()J

    move-result-wide v4

    move-object/from16 v0, p6

    invoke-virtual {p0, v4, v5, v0, v9}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->moveToOutbox(JLandroid/net/Uri;Ljava/lang/String;)V

    goto :goto_3

    .line 366
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_6
    const-string v2, "CdmaSMSDispatcher"

    const-string v4, "CdmaSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method protected updateSmsSendStatus(IZ)V
    .locals 2
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 635
    const-string v0, "CdmaSMSDispatcher"

    const-string v1, "updateSmsSendStatus should never be called from here!"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method
