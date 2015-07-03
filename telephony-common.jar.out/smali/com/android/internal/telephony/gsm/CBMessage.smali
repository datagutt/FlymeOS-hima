.class public final Lcom/android/internal/telephony/gsm/CBMessage;
.super Ljava/lang/Object;
.source "CBMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/CBMessage$1;,
        Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
    }
.end annotation


# static fields
.field static final CBHEAD_LEN:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "Cell broadcast"

.field static final MAX_CHANNELS:I = 0x14

.field static final MAX_DATE_LEN:I = 0x5d


# instance fields
.field CBmessageBody:Ljava/lang/String;

.field protected cb_msg:[B

.field protected dcs:I

.field protected etwsDay:B

.field protected etwsDigitalSignature:[B

.field protected etwsEmergencyUserAlert:I

.field protected etwsHour:B

.field protected etwsMinute:B

.field protected etwsMonth:B

.field protected etwsPopup:I

.field protected etwsSecond:B

.field protected etwsTimeZone:B

.field protected etwsWarningType:I

.field protected etwsYear:B

.field protected gs:I

.field protected mDcs:Ljava/lang/String;

.field protected mEncodingType:I

.field protected mEncodingTypeSet:Z

.field protected mMsgId:Ljava/lang/String;

.field mPdu:[B

.field messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

.field protected mode:Z

.field protected msg_id:I

.field protected msg_len:I

.field protected page:I

.field protected pages:I

.field protected septetCount:I

.field protected sn:I

.field protected umtsMsgType:I

.field protected updatenum:I

.field userData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return-void
.end method

.method public static newFromCBM([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/CBMessage;
    .locals 6
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1-newFromCBM()-cb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/CBMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/CBMessage;-><init>()V

    .line 149
    .local v2, "msg":Lcom/android/internal/telephony/gsm/CBMessage;
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 150
    .local v1, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseEtwsCBPdu([B)V

    .line 162
    .end local v1    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/CBMessage;
    :goto_0
    return-object v2

    .line 153
    .restart local v1    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v2    # "msg":Lcom/android/internal/telephony/gsm/CBMessage;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseUmtsCBPdu([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v1    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/CBMessage;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v3, "Cell broadcast"

    const-string v4, "CB PDU parsing failed: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v2, 0x0

    goto :goto_0

    .line 158
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v2    # "msg":Lcom/android/internal/telephony/gsm/CBMessage;
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    aget-object v3, p0, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBPdu([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getCBChannel()V
    .locals 3

    .prologue
    .line 590
    const-string v1, "Cell broadcast"

    const-string v2, "getCBChannel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 593
    .local v0, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 594
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getCSCB()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    .end local v0    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 596
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCBMessageClass()Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    return-object v0
.end method

.method public getCb_msg()[B
    .locals 1

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getDcs()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    return v0
.end method

.method public getEtwsDay()B
    .locals 1

    .prologue
    .line 245
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDay:B

    return v0
.end method

.method public getEtwsDigitalSignature()[B
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDigitalSignature:[B

    return-object v0
.end method

.method public getEtwsHour()B
    .locals 1

    .prologue
    .line 249
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsHour:B

    return v0
.end method

.method public getEtwsMinute()B
    .locals 1

    .prologue
    .line 253
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMinute:B

    return v0
.end method

.method public getEtwsMonth()B
    .locals 1

    .prologue
    .line 241
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMonth:B

    return v0
.end method

.method public getEtwsSecond()B
    .locals 1

    .prologue
    .line 257
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsSecond:B

    return v0
.end method

.method public getEtwsTimeZone()B
    .locals 1

    .prologue
    .line 261
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsTimeZone:B

    return v0
.end method

.method public getEtwsYear()B
    .locals 1

    .prologue
    .line 237
    iget-byte v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsYear:B

    return v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/android/internal/telephony/gsm/CBMessage$1;->$SwitchMap$com$android$internal$telephony$gsm$CBMessage$CBMessageClass:[I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 628
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 620
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 622
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 624
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 626
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 618
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMsg_id()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    return v0
.end method

.method public getMsg_len()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 733
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    return v0
.end method

.method public getPages()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getRowData()[B
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    return-object v0
.end method

.method public getSeptetCount()I
    .locals 1

    .prologue
    .line 829
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    return v0
.end method

.method public getTotalPage()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    return v0
.end method

.method public getUpdatenum()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    return v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    return-object v0
.end method

.method public getmDcs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    return-object v0
.end method

.method public getmEncodingType()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    return v0
.end method

.method public getmMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    return-object v0
.end method

.method public isMode()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    return v0
.end method

.method public ismEncodingTypeSet()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    return v0
.end method

.method public parseCBPdu([B)V
    .locals 11
    .param p1, "pdu"    # [B

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 344
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 347
    .local v0, "size":I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 348
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 349
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 352
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 355
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    if-gez v3, :cond_0

    .line 359
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 362
    .local v1, "x":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    if-gez v3, :cond_1

    .line 363
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    add-int/lit16 v2, v3, 0x100

    .line 366
    .local v2, "y":I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 367
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 370
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 373
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "page:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 376
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total pages:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 379
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    invoke-static {p1, v3, v4, v6, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 380
    iput v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 381
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 382
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "septetCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBUserData()Ljava/lang/String;

    .line 385
    return-void

    .line 361
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    mul-int/lit16 v1, v3, 0x100

    .restart local v1    # "x":I
    goto/16 :goto_0

    .line 365
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v2, v3, v8

    .restart local v2    # "y":I
    goto/16 :goto_1
.end method

.method public parseCBUserData()Ljava/lang/String;
    .locals 19

    .prologue
    .line 426
    const/4 v12, 0x0

    .line 427
    .local v12, "hasMessageClass":Z
    const/16 v18, 0x0

    .line 428
    .local v18, "userDataCompressed":Z
    const/4 v10, 0x0

    .line 430
    .local v10, "encodingType":I
    const-string v3, "Cell broadcast"

    const-string v4, "3-parseCBUserData()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v14, 0x0

    .line 435
    .local v14, "offset":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xf0

    if-nez v3, :cond_2

    .line 436
    const/4 v10, 0x1

    .line 500
    :goto_0
    if-eqz v10, :cond_0

    .line 501
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 502
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 506
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    .line 507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    array-length v9, v3

    .line 509
    .local v9, "count":I
    packed-switch v10, :pswitch_data_0

    .line 533
    :goto_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CB message body (raw): \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 535
    .local v17, "temp":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 536
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CB message body length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-nez v12, :cond_d

    .line 538
    sget-object v3, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->UNKNOWN:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    .line 555
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    return-object v3

    .line 437
    .end local v9    # "count":I
    .end local v17    # "temp":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ne v3, v4, :cond_3

    .line 438
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 439
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x11

    if-ne v3, v4, :cond_4

    .line 440
    const/4 v10, 0x3

    .line 446
    const/4 v14, 0x2

    .line 447
    const/4 v3, 0x2

    new-array v2, v3, [B

    .line 448
    .local v2, "tmp":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getUserData()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    array-length v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 449
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v13

    .line 450
    .local v13, "languageEncoded":Ljava/lang/String;
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "languageEncoded:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    .end local v2    # "tmp":[B
    .end local v13    # "languageEncoded":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 453
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 454
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_6

    .line 455
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 456
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x6

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 458
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_7

    const/16 v18, 0x1

    .line 459
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_8

    const/4 v12, 0x1

    .line 461
    :goto_4
    if-eqz v18, :cond_9

    .line 462
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1- Unsupported CB data coding scheme (compression) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 458
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 459
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 465
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    shr-int/lit8 v3, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 467
    :pswitch_0
    const/4 v10, 0x1

    .line 468
    goto/16 :goto_0

    .line 471
    :pswitch_1
    const/4 v10, 0x3

    .line 472
    goto/16 :goto_0

    .line 476
    :pswitch_2
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2 - Unsupported CB data coding scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v10, 0x2

    goto/16 :goto_0

    .line 482
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_c

    .line 483
    const/4 v12, 0x1

    .line 484
    const/16 v18, 0x0

    .line 486
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_b

    .line 488
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 491
    :cond_b
    const/4 v10, 0x2

    goto/16 :goto_0

    .line 494
    :cond_c
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3 - Unsupported CB data coding scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 512
    .restart local v9    # "count":I
    :pswitch_3
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 513
    .local v16, "strResult":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 517
    .end local v16    # "strResult":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    goto/16 :goto_1

    .line 523
    :pswitch_5
    sub-int v3, v9, v14

    :try_start_0
    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v15, v3, 0x2

    .line 525
    .local v15, "reallCount":I
    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/CBMessage;->userData:[B

    const-string v5, "utf-16"

    invoke-direct {v3, v4, v14, v15, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 526
    .end local v15    # "reallCount":I
    :catch_0
    move-exception v11

    .line 527
    .local v11, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 528
    const-string v3, "Cell broadcast"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 540
    .end local v11    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local v17    # "temp":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    and-int/lit8 v3, v3, 0x3

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_2

    .line 542
    :pswitch_6
    sget-object v3, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_0:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 545
    :pswitch_7
    sget-object v3, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_1:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 548
    :pswitch_8
    sget-object v3, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_2:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 551
    :pswitch_9
    sget-object v3, Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;->CLASS_3:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/CBMessage;->messageClass:Lcom/android/internal/telephony/gsm/CBMessage$CBMessageClass;

    goto/16 :goto_2

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 465
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 540
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public parseEtwsCBPdu([B)V
    .locals 11
    .param p1, "pdu"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 173
    const-string v3, "Cell broadcast"

    const-string v4, "2-parseEtwsCBPdu()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    array-length v3, p1

    add-int/lit8 v0, v3, -0x6

    .line 176
    .local v0, "size":I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 177
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 178
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v3, v3, 0xc0

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 181
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gs:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v8

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 184
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatenum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    if-gez v3, :cond_1

    .line 188
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    add-int/lit16 v3, v3, 0x100

    mul-int/lit16 v1, v3, 0x100

    .line 191
    .local v1, "x":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    if-gez v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v9

    add-int/lit16 v2, v3, 0x100

    .line 195
    .local v2, "y":I
    :goto_1
    add-int v3, v1, v2

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 196
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit16 v3, v3, 0xfe

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsWarningType:I

    .line 200
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsWarningType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsWarningType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v10

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsEmergencyUserAlert:I

    .line 204
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsEmergencyUserAlert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsEmergencyUserAlert:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0x80

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsPopup:I

    .line 208
    const-string v3, "Cell broadcast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "etwsPopup:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsPopup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v0, :cond_0

    .line 214
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    invoke-static {v3, v4, v5, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 216
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v7

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsYear:B

    .line 217
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v8

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMonth:B

    .line 218
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v6

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDay:B

    .line 219
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v9

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsHour:B

    .line 220
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    aget-byte v3, v3, v10

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsMinute:B

    .line 221
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsSecond:B

    .line 222
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsTimeZone:B

    .line 223
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/CBMessage;->etwsDigitalSignature:[B

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x7

    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 227
    :cond_0
    iput v7, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 228
    iput v8, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 229
    iput v8, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 230
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 231
    iput v0, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 232
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 234
    return-void

    .line 190
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v3, v3, v6

    mul-int/lit16 v1, v3, 0x100

    .restart local v1    # "x":I
    goto/16 :goto_0

    .line 194
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    aget-byte v2, v3, v9

    .restart local v2    # "y":I
    goto/16 :goto_1
.end method

.method public parseUmtsCBPdu([B)V
    .locals 13
    .param p1, "pdu"    # [B

    .prologue
    .line 274
    const-string v9, "Cell broadcast"

    const-string v10, "2-parseUmtsCBPdu()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    array-length v9, p1

    add-int/lit8 v6, v9, -0x6

    .line 277
    .local v6, "size":I
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    .line 279
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->umtsMsgType:I

    .line 282
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    if-gez v9, :cond_0

    .line 283
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    add-int/lit16 v9, v9, 0x100

    mul-int/lit16 v7, v9, 0x100

    .line 286
    .local v7, "x":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    if-gez v9, :cond_1

    .line 287
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    add-int/lit16 v8, v9, 0x100

    .line 290
    .local v8, "y":I
    :goto_1
    add-int v9, v7, v8

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 291
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg_id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v11, 0x4

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 295
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v9, v9, 0xc0

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 298
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "gs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    and-int/lit8 v9, v9, 0xf

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 301
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updatenum:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x5

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 304
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dcs:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x6

    aget-byte v9, v9, v10

    and-int/lit16 v4, v9, 0xff

    .line 308
    .local v4, "numberOfPages":I
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number-of-Pages:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    array-length v9, p1

    add-int/lit8 v9, v9, -0x6

    add-int/lit8 v9, v9, -0x1

    new-array v0, v9, [B

    .line 311
    .local v0, "cbData":[B
    const/4 v9, 0x7

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {p1, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 313
    const/16 v9, 0x52

    new-array v3, v9, [B

    .line 314
    .local v3, "infoPage":[B
    const/4 v2, 0x0

    .line 315
    .local v2, "infoLength":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_2

    .line 317
    mul-int/lit8 v9, v1, 0x53

    const/4 v10, 0x0

    array-length v11, v3

    invoke-static {v0, v9, v3, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 318
    mul-int/lit8 v9, v1, 0x53

    array-length v10, v3

    add-int/2addr v9, v10

    aget-byte v9, v0, v9

    and-int/lit16 v2, v9, 0xff

    .line 319
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS-Message-Information-Page   "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CBS-Message-Information-Length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-array v9, v2, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 323
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v12, v12

    invoke-static {v3, v9, v10, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 324
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    array-length v9, v9

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 325
    mul-int/lit8 v9, v6, 0x8

    div-int/lit8 v9, v9, 0x7

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 326
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "septetCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v9, "Cell broadcast"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "msg_len:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->parseCBUserData()Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/CBMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 285
    .end local v0    # "cbData":[B
    .end local v1    # "i":I
    .end local v2    # "infoLength":I
    .end local v3    # "infoPage":[B
    .end local v4    # "numberOfPages":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    mul-int/lit16 v7, v9, 0x100

    .restart local v7    # "x":I
    goto/16 :goto_0

    .line 289
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mPdu:[B

    const/4 v10, 0x2

    aget-byte v8, v9, v10

    .restart local v8    # "y":I
    goto/16 :goto_1

    .line 332
    .restart local v0    # "cbData":[B
    .restart local v1    # "i":I
    .restart local v2    # "infoLength":I
    .restart local v3    # "infoPage":[B
    .restart local v4    # "numberOfPages":I
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->CBmessageBody:Ljava/lang/String;

    .line 336
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 337
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 338
    return-void
.end method

.method public setCB(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 606
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 607
    .local v0, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->setCBEntry(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    .end local v0    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/Boolean;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string v2, "Cell broadcast"

    const-string v3, "setCBChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 564
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/telephony/ISms;->setCSCB(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "Cell broadcast"

    const-string v3, "setCBChannel RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCBChannelExt(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/Boolean;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;
    .param p4, "phoneSlot"    # I

    .prologue
    .line 583
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setCBChannelExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCb_msg([B)V
    .locals 0
    .param p1, "cb_msg"    # [B

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->cb_msg:[B

    .line 822
    return-void
.end method

.method public setDcs(I)V
    .locals 0
    .param p1, "dcs"    # I

    .prologue
    .line 725
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->dcs:I

    .line 726
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .param p1, "gs"    # I

    .prologue
    .line 773
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->gs:I

    .line 774
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 645
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mode:Z

    .line 646
    return-void
.end method

.method public setMsg_id(I)V
    .locals 0
    .param p1, "msg_id"    # I

    .prologue
    .line 709
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_id:I

    .line 710
    return-void
.end method

.method public setMsg_len(I)V
    .locals 0
    .param p1, "msg_len"    # I

    .prologue
    .line 805
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->msg_len:I

    .line 806
    return-void
.end method

.method public setPage(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 741
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->page:I

    .line 742
    return-void
.end method

.method public setPages(I)V
    .locals 0
    .param p1, "pages"    # I

    .prologue
    .line 757
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->pages:I

    .line 758
    return-void
.end method

.method public setSeptetCount(I)V
    .locals 0
    .param p1, "septetCount"    # I

    .prologue
    .line 837
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->septetCount:I

    .line 838
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .param p1, "sn"    # I

    .prologue
    .line 693
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->sn:I

    .line 694
    return-void
.end method

.method public setUpdatenum(I)V
    .locals 0
    .param p1, "updatenum"    # I

    .prologue
    .line 789
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->updatenum:I

    .line 790
    return-void
.end method

.method public setmDcs(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDcs"    # Ljava/lang/String;

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mDcs:Ljava/lang/String;

    .line 678
    return-void
.end method

.method public setmEncodingType(I)V
    .locals 0
    .param p1, "mEncodingType"    # I

    .prologue
    .line 853
    iput p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingType:I

    .line 854
    return-void
.end method

.method public setmEncodingTypeSet(Z)V
    .locals 0
    .param p1, "mEncodingTypeSet"    # Z

    .prologue
    .line 869
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mEncodingTypeSet:Z

    .line 870
    return-void
.end method

.method public setmMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMsgId"    # Ljava/lang/String;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/CBMessage;->mMsgId:Ljava/lang/String;

    .line 662
    return-void
.end method
