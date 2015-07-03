.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B

.field private static final VDBG:Z


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isCdmaFormat:Z

    .line 139
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 724
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x112007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 727
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    move-object v0, p0

    .line 730
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 736
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "msgBody"    # Ljava/lang/String;
    .param p1, "address"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .param p2, "callback"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .prologue
    .line 744
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 2
    .param p1, "dtmfDigit"    # B

    .prologue
    .line 1846
    packed-switch p1, :pswitch_data_0

    .line 1870
    const/16 v0, 0x20

    .line 1874
    .local v0, "asciiDigit":B
    :goto_0
    return v0

    .line 1848
    .end local v0    # "asciiDigit":B
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportConvertDTMF0ToASCII0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1849
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1851
    .end local v0    # "asciiDigit":B
    :cond_0
    const/16 v0, 0x44

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1854
    .end local v0    # "asciiDigit":B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1855
    .end local v0    # "asciiDigit":B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1856
    .end local v0    # "asciiDigit":B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1857
    .end local v0    # "asciiDigit":B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1858
    .end local v0    # "asciiDigit":B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1859
    .end local v0    # "asciiDigit":B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1860
    .end local v0    # "asciiDigit":B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1861
    .end local v0    # "asciiDigit":B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1862
    .end local v0    # "asciiDigit":B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1863
    .end local v0    # "asciiDigit":B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1864
    .end local v0    # "asciiDigit":B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1865
    .end local v0    # "asciiDigit":B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1866
    .end local v0    # "asciiDigit":B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1867
    .end local v0    # "asciiDigit":B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1868
    .end local v0    # "asciiDigit":B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0    # "asciiDigit":B
    goto :goto_0

    .line 1846
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 8
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 315
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 317
    .local v1, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    .line 320
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 321
    const-string v5, "createFromEfRecord"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CDMA index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    .line 331
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 355
    .end local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v1

    .line 334
    .restart local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_1
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    .line 339
    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 343
    .local v3, "size":I
    new-array v2, v3, [B

    .line 344
    .local v2, "pdu":[B
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 349
    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 352
    goto :goto_0

    .line 353
    .end local v1    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 354
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 355
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 150
    .local v2, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v2

    .line 152
    .restart local v2    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 154
    goto :goto_0

    .line 155
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 157
    goto :goto_0
.end method

.method private createPdu()V
    .locals 8

    .prologue
    .line 1799
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1800
    .local v3, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1801
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1802
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1805
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1806
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1807
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1809
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1810
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1811
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1812
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1813
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1814
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1816
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1818
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1819
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1820
    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 1822
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1823
    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1824
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 1834
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1838
    :goto_0
    return-void

    .line 1835
    :catch_0
    move-exception v4

    .line 1836
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static decodeRawDataAndGetSmsMessage(Lcom/android/internal/telephony/cdma/SmsMessage;[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 12
    .param p0, "msg"    # Lcom/android/internal/telephony/cdma/SmsMessage;
    .param p1, "pdu"    # [B

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "decodeResult":Z
    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;-><init>([B)V

    .line 374
    .local v2, "decoder":Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;
    :try_start_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->decodePdu()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 388
    :goto_0
    if-nez v2, :cond_2

    .line 389
    const/4 p0, 0x0

    .line 456
    .end local p0    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_1
    return-object p0

    .line 375
    .restart local p0    # "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    :catch_0
    move-exception v5

    .line 376
    .local v5, "r":Ljava/lang/RuntimeException;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    const-string v6, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error decoding incoming SMS runtime : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    const/4 v2, 0x0

    .line 378
    const/4 v1, 0x0

    .line 386
    goto :goto_0

    .line 379
    .end local v5    # "r":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v3

    .line 380
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_1

    const-string v6, "SmsMessage"

    const-string v9, "Error decoding incoming SMS"

    invoke-static {v6, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    const/4 v2, 0x0

    .line 385
    const/4 v1, 0x0

    goto :goto_0

    .line 392
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParameters:[Z

    aget-boolean v6, v6, v8

    if-ne v6, v8, :cond_3

    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    if-eqz v6, :cond_3

    .line 394
    iget-object v6, v2, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->TeleserviceParam_userDataHeader:[B

    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 400
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 402
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 403
    .local v4, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->messageType()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 404
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->teleserviceCategory()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 405
    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 406
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 407
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 408
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 409
    :cond_4
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 410
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    iput v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 411
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->replyOptionSeq()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 412
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->errorClass()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 413
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->causeCode()I

    move-result v6

    int-to-byte v6, v6

    iput-byte v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 414
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 415
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 421
    .end local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v4    # "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getOriginatingAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 422
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 423
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getPseudoSubject()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPseudoSubject:Ljava/lang/String;

    .line 427
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getTimestampMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 430
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 432
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBody()[B

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 433
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getNumberOfVoiceMail()I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_6

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsMwi:Z

    .line 437
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getDestinationAddress()Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mDestinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 438
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mDestinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v6, :cond_7

    :goto_3
    iput-boolean v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsOutGoingSms:Z

    .line 440
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->retrieveBodyEncoding()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->encodingType:I

    .line 444
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiUnicodeWemtByteCount()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 445
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    if-eqz v6, :cond_8

    .line 446
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v6, v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    :cond_6
    move v6, v8

    .line 433
    goto :goto_2

    :cond_7
    move v8, v7

    .line 438
    goto :goto_3

    .line 448
    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 452
    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaSmsDecoder;->getBearerData()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "peerAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Landroid/text/format/Time;

    .prologue
    .line 2201
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 9
    .param p0, "sOriginatorAddress"    # Ljava/lang/String;
    .param p1, "lTimeMilli"    # J
    .param p3, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p4, "bIs7Bit"    # Z
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1996
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 1997
    :cond_0
    const/4 v0, 0x0

    .line 2012
    :goto_0
    return-object v0

    .line 2001
    :cond_1
    const/4 v7, 0x0

    .line 2002
    .local v7, "callback":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2003
    .local v6, "priority":I
    const/4 v8, 0x0

    .line 2005
    .local v8, "messageId":I
    if-eqz p5, :cond_2

    .line 2006
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2007
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2008
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    :cond_2
    move-object v1, p0

    move-wide v2, p1

    move-object v5, p3

    .line 2012
    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 9
    .param p0, "sOriginatorAddress"    # Ljava/lang/String;
    .param p1, "lTimeMilli"    # J
    .param p3, "sMessage"    # Ljava/lang/String;
    .param p4, "bIs7Bit"    # Z
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1961
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 1983
    :cond_0
    :goto_0
    return-object v0

    .line 1965
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 1966
    .local v5, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1967
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1969
    const/4 v7, 0x0

    .line 1970
    .local v7, "callback":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1971
    .local v6, "priority":I
    const/4 v8, 0x0

    .line 1973
    .local v8, "messageId":I
    if-eqz p5, :cond_2

    .line 1974
    const-string v0, "CALLBACK"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1975
    const-string v0, "PRIORITY"

    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1976
    const-string v0, "MESSAGE_ID"

    invoke-virtual {p5, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    :cond_2
    move-object v1, p0

    move-wide v2, p1

    .line 1983
    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)[B
    .locals 9
    .param p0, "originatorAddress"    # Ljava/lang/String;
    .param p1, "timeMilli"    # J
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "callback"    # Ljava/lang/String;
    .param p6, "refNumber"    # I

    .prologue
    const/4 v0, 0x0

    .line 2262
    if-eqz p3, :cond_0

    if-nez p0, :cond_1

    .line 2270
    :cond_0
    :goto_0
    return-object v0

    .line 2266
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2267
    .local v4, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2268
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v1, p0

    move-wide v2, p1

    move v5, p4

    move-object v6, p5

    move v7, p6

    .line 2270
    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static getEncodeAddressBytes(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I
    .locals 1
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .prologue
    .line 2215
    const/4 v0, 0x0

    return v0
.end method

.method static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    .line 1534
    const-class v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v3

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1535
    .local v0, "msgId":I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1536
    .local v1, "nextMsgId":Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v2, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1538
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    :cond_0
    monitor-exit v3

    return v0

    .line 1534
    .end local v1    # "nextMsgId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z

    .prologue
    .line 600
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 605
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;
    .param p5, "lTimeMilli"    # J

    .prologue
    .line 611
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;
    .param p5, "lTimeMilli"    # J
    .param p7, "messageId"    # I

    .prologue
    .line 623
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    move/from16 v8, p7

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/SmsHeader;Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "statusReportRequested"    # Z

    .prologue
    const/4 v4, 0x0

    .line 570
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 572
    .local v0, "data":[B
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 573
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 574
    iput v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 575
    iput-boolean v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 577
    iput-object v1, p3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 579
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 580
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 581
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 582
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 583
    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 585
    const-string v3, ""

    invoke-static {p1, p5, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "destPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    const/4 v4, 0x0

    .line 547
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 548
    .local v0, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 549
    iput v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 550
    iput-boolean v4, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 552
    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 553
    .local v1, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 555
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 556
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 557
    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 558
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 559
    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 561
    const-string v3, ""

    invoke-static {p1, p4, v2, v4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    .line 494
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 506
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 507
    :cond_0
    const/4 v3, 0x0

    .line 522
    :goto_0
    return-object v3

    .line 510
    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 511
    .local v2, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 512
    iput-object p4, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "callback":Ljava/lang/String;
    const/4 v1, 0x0

    .line 517
    .local v1, "priority":I
    if-eqz p5, :cond_2

    .line 518
    const-string v3, "CALLBACK"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    const-string v3, "PRIORITY"

    const/4 v4, 0x0

    invoke-virtual {p5, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 522
    :cond_2
    invoke-static {p1, p3, v2, v1, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSubmitPduWithConfig(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/app/PendingIntent;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p2, "statusReportRequested"    # Z
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2436
    const/4 v2, 0x0

    .line 2437
    .local v2, "priority":I
    const/4 v0, 0x0

    .line 2438
    .local v0, "callBack":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 2439
    invoke-virtual {p3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2440
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    const-string v3, "PRIORITY"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2441
    const-string v3, "PRIORITY"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2442
    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get priority from sentIntent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "CALLBACK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2446
    const-string v3, "CALLBACK"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2450
    const-string v3, "SmsMessage"

    const-string v4, "Get callback number from sentIntent : (no security flag)"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0, p2, p1, v2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPduWithConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddr"    # Ljava/lang/String;
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2410
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2411
    :cond_0
    const/4 v1, 0x0

    .line 2417
    :goto_0
    return-object v1

    .line 2414
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2415
    .local v0, "uData":Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2416
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 2417
    invoke-static {p1, v0, p3, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPduWithConfig(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/app/PendingIntent;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 464
    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method private isKddiBcmsEmergencyMessage()Z
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v0, :sswitch_data_0

    .line 950
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 948
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 944
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8001 -> :sswitch_0
        0xc001 -> :sswitch_0
    .end sparse-switch
.end method

.method private kddiSetTimeStamp()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 784
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->shouldSetDeviceTimeInSmscTimestamp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v1, :cond_0

    .line 788
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 789
    .local v0, "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->setToNow()V

    .line 791
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 792
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 793
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set timeStamp> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    .end local v0    # "ts":Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    :cond_0
    return-void
.end method

.method protected static manageMalformedVMNSMS(I[B)I
    .locals 5
    .param p0, "id"    # I
    .param p1, "smsData"    # [B

    .prologue
    .line 1082
    const/4 v0, 0x0

    .line 1083
    .local v0, "foundMsgCount":Z
    array-length v1, p1

    .line 1084
    .local v1, "len":I
    const/4 v2, 0x0

    .line 1085
    .local v2, "tidx":I
    const/4 v3, 0x0

    .line 1088
    .local v3, "tvalue":I
    :goto_0
    add-int/lit8 v4, v1, -0x2

    if-ge v2, v4, :cond_1

    .line 1089
    aget-byte v3, p1, v2

    .line 1090
    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 1091
    const/16 v4, 0x1003

    .line 1098
    :goto_1
    return v4

    .line 1093
    :cond_0
    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v2

    .line 1094
    add-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    goto :goto_0

    .line 1098
    :cond_1
    const/16 v4, 0x1002

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 2242
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 2225
    const-string v0, "SmsMessage"

    const-string v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 2233
    const-string v0, "SmsMessage"

    const-string v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 12
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 167
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 168
    .local v7, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 169
    .local v5, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 170
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 177
    .local v8, "subaddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 183
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    iput-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    .line 184
    iget-boolean v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->isServicePresented:Z

    if-eqz v9, :cond_2

    .line 186
    iput v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 196
    :goto_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 198
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "teleService> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "messageType> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceCategory> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    .local v1, "addressDigitMode":I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 205
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 206
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 207
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 208
    .local v2, "count":B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 209
    new-array v4, v2, [B

    .line 211
    .local v4, "data":[B
    new-array v9, v2, [B

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    .line 214
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2
    if-ge v6, v2, :cond_4

    .line 215
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 218
    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->rawAddressBytes:[B

    aget-byte v10, v4, v6

    aput-byte v10, v9, v6

    .line 222
    if-nez v1, :cond_0

    .line 223
    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    .line 214
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v1    # "addressDigitMode":I
    .end local v2    # "count":B
    .end local v4    # "data":[B
    .end local v6    # "index":I
    :cond_1
    move v9, v11

    .line 183
    goto/16 :goto_0

    .line 189
    :cond_2
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_3

    .line 191
    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 193
    :cond_3
    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto/16 :goto_1

    .line 227
    .restart local v1    # "addressDigitMode":I
    .restart local v2    # "count":B
    .restart local v4    # "data":[B
    .restart local v6    # "index":I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 229
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 230
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    iput-byte v9, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 231
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 233
    if-gez v2, :cond_5

    .line 234
    const/4 v2, 0x0

    .line 239
    :cond_5
    new-array v4, v2, [B

    .line 241
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_6

    .line 242
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 241
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 245
    :cond_6
    iput-object v4, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    .line 255
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 256
    .local v3, "countInt":I
    if-gez v3, :cond_7

    .line 257
    const/4 v3, 0x0

    .line 260
    :cond_7
    new-array v4, v3, [B

    .line 261
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_8

    .line 262
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 265
    :cond_8
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 269
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 270
    iput-object v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 271
    iput-object v0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 274
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v10, 0x1003

    if-ne v9, v10, :cond_9

    .line 275
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iget-object v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->manageMalformedVMNSMS(I[B)I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 277
    :cond_9
    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 280
    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    .line 295
    const-string v9, "SmsMessage"

    const-string v10, "PDU> no security flag"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v7
.end method

.method private parsePdu([B)V
    .locals 10
    .param p1, "pdu"    # [B

    .prologue
    .line 1002
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1003
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1006
    .local v3, "dis":Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1007
    .local v4, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1010
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1011
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1012
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 1014
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1015
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1016
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1017
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1019
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    .line 1020
    .local v6, "length":I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1023
    array-length v7, p1

    if-le v6, v7, :cond_0

    .line 1024
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1052
    .end local v6    # "length":I
    :catch_0
    move-exception v5

    .line 1053
    .local v5, "ex":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 1029
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "length":I
    :cond_0
    :try_start_1
    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1030
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    .line 1032
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1034
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1035
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1036
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    .line 1039
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 1042
    .local v2, "bearerDataLength":I
    array-length v7, p1

    if-le v2, v7, :cond_2

    .line 1043
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1055
    .end local v2    # "bearerDataLength":I
    .end local v6    # "length":I
    :catch_1
    move-exception v5

    .line 1056
    .local v5, "ex":Ljava/lang/Exception;
    const-string v7, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1061
    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1062
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1063
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 1065
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 1068
    iget v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-nez v7, :cond_1

    .line 1069
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiSetTimeStamp()V

    .line 1073
    :cond_1
    return-void

    .line 1049
    .restart local v2    # "bearerDataLength":I
    .restart local v6    # "length":I
    :cond_2
    :try_start_2
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1050
    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    .line 1051
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parsePduFromEfRecord([B)V
    .locals 24
    .param p1, "pdu"    # [B

    .prologue
    .line 1106
    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1107
    .local v5, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1108
    .local v8, "dis":Ljava/io/DataInputStream;
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1109
    .local v9, "env":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 1110
    .local v2, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    .line 1113
    .local v17, "subAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1115
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/DataInputStream;->available()I

    move-result v21

    if-lez v21, :cond_9

    .line 1116
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readByte()B

    move-result v14

    .line 1117
    .local v14, "parameterId":I
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v15

    .line 1118
    .local v15, "parameterLen":I
    new-array v13, v15, [B

    .line 1120
    .local v13, "parameterData":[B
    packed-switch v14, :pswitch_data_0

    .line 1220
    new-instance v21, Ljava/lang/Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "unsupported parameterId ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :catch_0
    move-exception v10

    .line 1226
    .local v10, "ex":Ljava/lang/Exception;
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    .end local v10    # "ex":Ljava/lang/Exception;
    :goto_1
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1231
    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1232
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    .line 1233
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .line 1234
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    .line 1236
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms(Z)V

    .line 1237
    return-void

    .line 1127
    .restart local v13    # "parameterData":[B
    .restart local v14    # "parameterId":I
    .restart local v15    # "parameterLen":I
    :pswitch_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1128
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "teleservice = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :pswitch_1
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto/16 :goto_0

    .line 1139
    :pswitch_2
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1140
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1141
    .local v3, "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1142
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 1143
    const/4 v12, 0x0

    .line 1144
    .local v12, "numberType":I
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 1145
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 1146
    iput v12, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1148
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_1

    .line 1149
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 1152
    :cond_1
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1154
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v7, v0, [B

    .line 1155
    .local v7, "data":[B
    const/4 v4, 0x0

    .line 1157
    .local v4, "b":B
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 1159
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1160
    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    and-int/lit8 v21, v21, 0xf

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1163
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v7, v11

    .line 1159
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1165
    .end local v11    # "index":I
    :cond_2
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 1166
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 1167
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    .line 1168
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1169
    aput-byte v4, v7, v11

    .line 1167
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1172
    .end local v11    # "index":I
    :cond_3
    iget v0, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 1173
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v12, v0, :cond_5

    .line 1174
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is email id"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_4
    :goto_4
    iput-object v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1185
    const-string v21, "SmsMessage"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Originating Addr="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1176
    :cond_5
    const-string v21, "SmsMessage"

    const-string v22, "TODO: Originating Addr is data network address"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1179
    :cond_6
    const-string v21, "SmsMessage"

    const-string v22, "Originating Addr is of incorrect type"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1182
    :cond_7
    const-string v21, "SmsMessage"

    const-string v22, "Incorrect Digit mode"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1189
    .end local v3    # "addrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v4    # "b":B
    .end local v7    # "data":[B
    .end local v12    # "numberType":I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1190
    new-instance v18, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1191
    .local v18, "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    .line 1192
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput-byte v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    .line 1193
    const/16 v21, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v19

    .line 1194
    .local v19, "subAddrLen":I
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 1195
    .local v20, "subdata":[B
    const/4 v11, 0x0

    .restart local v11    # "index":I
    :goto_5
    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 1196
    const/16 v21, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-byte v4, v0

    .line 1198
    .restart local v4    # "b":B
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v21

    aput-byte v21, v20, v11

    .line 1195
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1200
    .end local v4    # "b":B
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_0

    .line 1203
    .end local v11    # "index":I
    .end local v18    # "subAddrBis":Lcom/android/internal/util/BitwiseInputStream;
    .end local v19    # "subAddrLen":I
    .end local v20    # "subdata":[B
    :pswitch_4
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1204
    new-instance v16, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1205
    .local v16, "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    move/from16 v0, v21

    iput v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    goto/16 :goto_0

    .line 1208
    .end local v16    # "replyOptBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_5
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1209
    new-instance v6, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v6, v13}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1210
    .local v6, "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    .line 1211
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    .line 1212
    iget-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1213
    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    move/from16 v0, v21

    iput-byte v0, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto/16 :goto_0

    .line 1216
    .end local v6    # "ccBis":Lcom/android/internal/util/BitwiseInputStream;
    :pswitch_6
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v13, v0, v15}, Ljava/io/DataInputStream;->read([BII)I

    .line 1217
    iput-object v13, v9, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    goto/16 :goto_0

    .line 1223
    .end local v13    # "parameterData":[B
    .end local v14    # "parameterId":I
    .end local v15    # "parameterLen":I
    :cond_9
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1224
    invoke-virtual {v8}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static privateGetDeliveryPdu(Ljava/lang/String;JZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 15
    .param p0, "sOriginatorAddress"    # Ljava/lang/String;
    .param p1, "lTimeMilli"    # J
    .param p3, "statusReportRequested"    # Z
    .param p4, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .param p7, "messageId"    # I

    .prologue
    .line 2039
    const/4 v11, 0x0

    invoke-static {p0, v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v8

    .line 2040
    .local v8, "origAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v8, :cond_0

    const/4 v9, 0x0

    .line 2141
    :goto_0
    return-object v9

    .line 2042
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2047
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v11, 0x1

    iput v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2053
    move/from16 v0, p7

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2057
    move/from16 v0, p3

    iput-boolean v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2058
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2059
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2060
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2062
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2065
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1

    .line 2066
    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-static {v0, v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v11

    iput-object v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2070
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHidePriorityIndicator()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2071
    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2082
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-eqz v11, :cond_2

    .line 2083
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    iput-object v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2084
    iget-object v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 2085
    iget-object v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 2089
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 2090
    .local v5, "encodedBearerData":[B
    const-string v11, "CDMA:SMS"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2091
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO (encoded) BearerData = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MO raw BearerData = \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_3
    if-nez v5, :cond_5

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2074
    .end local v5    # "encodedBearerData":[B
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2075
    move/from16 v0, p5

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto :goto_1

    .line 2096
    .restart local v5    # "encodedBearerData":[B
    :cond_5
    iget-boolean v11, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v11, :cond_6

    const/16 v10, 0x1005

    .line 2099
    .local v10, "teleservice":I
    :goto_2
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2100
    .local v6, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v11, 0x0

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2101
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2102
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2103
    const/4 v11, 0x1

    iput v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2104
    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2116
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v11, 0x64

    invoke-direct {v2, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2117
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2118
    .local v4, "dos":Ljava/io/DataOutputStream;
    iget v11, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2119
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2120
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2121
    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2122
    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2123
    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2124
    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2125
    iget v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2126
    iget-object v11, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v12, 0x0

    iget-object v13, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v13, v13

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2128
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2129
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2130
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2131
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->write(I)V

    .line 2132
    const/4 v11, 0x0

    array-length v12, v5

    invoke-virtual {v4, v5, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2133
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 2135
    new-instance v9, Landroid/telephony/SmsMessage$DeliveryPdu;

    invoke-direct {v9}, Landroid/telephony/SmsMessage$DeliveryPdu;-><init>()V

    .line 2136
    .local v9, "pdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iput-object v11, v9, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2138
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v9    # "pdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    :catch_0
    move-exception v7

    .line 2139
    .local v7, "ex":Ljava/io/IOException;
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "creating Delivery failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2096
    .end local v6    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v10    # "teleservice":I
    :cond_6
    const/16 v10, 0x1002

    goto/16 :goto_2
.end method

.method private static privateGetDeliveryPdu(Ljava/lang/String;JLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;I)[B
    .locals 13
    .param p0, "originatorAddress"    # Ljava/lang/String;
    .param p1, "timeMilli"    # J
    .param p3, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p4, "priority"    # I
    .param p5, "callback"    # Ljava/lang/String;
    .param p6, "refNumber"    # I

    .prologue
    .line 2280
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v8

    .line 2281
    .local v8, "origAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v8, :cond_0

    const/4 v10, 0x0

    .line 2365
    :goto_0
    return-object v10

    .line 2283
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2284
    .local v3, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v10, 0x1

    iput v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 2287
    move/from16 v0, p6

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 2289
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2290
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2291
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2292
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2294
    move-object/from16 v0, p3

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 2297
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 2298
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v10

    iput-object v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2302
    :cond_1
    const/4 v10, -0x1

    move/from16 v0, p4

    if-eq v0, v10, :cond_2

    .line 2303
    const/4 v10, 0x1

    iput-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2304
    move/from16 v0, p4

    iput v0, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2308
    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v10, p1, v10

    if-eqz v10, :cond_3

    .line 2309
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    iput-object v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2310
    iget-object v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v10, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 2311
    iget-object v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 2314
    :cond_3
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    .line 2319
    .local v5, "encodedBearerData":[B
    if-nez v5, :cond_4

    const/4 v10, 0x0

    goto :goto_0

    .line 2321
    :cond_4
    iget-boolean v10, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v10, :cond_5

    const/16 v9, 0x1005

    .line 2324
    .local v9, "teleservice":I
    :goto_1
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 2325
    .local v6, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 2326
    iput v9, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 2327
    iput-object v8, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2328
    const/4 v10, 0x1

    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 2329
    iput-object v5, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 2342
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v2, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2343
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2344
    .local v4, "dos":Ljava/io/DataOutputStream;
    iget v10, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2345
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2346
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2347
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2348
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2349
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2350
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2351
    iget v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2352
    iget-object v10, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v12, v12

    invoke-virtual {v4, v10, v11, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2354
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2355
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2356
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2357
    array-length v10, v5

    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write(I)V

    .line 2358
    const/4 v10, 0x0

    array-length v11, v5

    invoke-virtual {v4, v5, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 2359
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 2361
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    .line 2321
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v9    # "teleservice":I
    :cond_5
    const/16 v9, 0x1002

    goto :goto_1

    .line 2362
    .restart local v6    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v9    # "teleservice":I
    :catch_0
    move-exception v7

    .line 2363
    .local v7, "ex":Ljava/io/IOException;
    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "creating Delivery failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;

    .prologue
    .line 1552
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 1557
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;J)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 9
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;
    .param p5, "lTimeMilli"    # J

    .prologue
    .line 617
    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;ILjava/lang/String;JI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 21
    .param p0, "destAddrStr"    # Ljava/lang/String;
    .param p1, "statusReportRequested"    # Z
    .param p2, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p3, "priority"    # I
    .param p4, "callback"    # Ljava/lang/String;
    .param p5, "lTimeMilli"    # J
    .param p7, "messageId"    # I

    .prologue
    .line 1584
    const-string v18, "SmsMessage"

    const-string v19, "privateGetSubmitPdu"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    const/4 v4, 0x0

    .line 1590
    .local v4, "bNBPCD":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNbpcd()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1591
    const-string v18, "ril.cdmaphoneapp.nbpcd.support"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 1592
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Query NBPCD state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    :goto_0
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "NBPCD state: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v5, 0x0

    .line 1612
    .local v5, "bRemovePlus":Z
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_3

    .line 1613
    const-string v18, "SmsMessage"

    const-string v19, "before To NBPCD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1615
    .local v14, "outAddrStr":Ljava/lang/String;
    move-object/from16 v0, p0

    if-eq v14, v0, :cond_2

    .line 1616
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNbpcd()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1617
    const/4 v5, 0x1

    .line 1619
    :cond_1
    move-object/from16 p0, v14

    .line 1621
    :cond_2
    const-string v18, "SmsMessage"

    const-string v19, "after To NBPCD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1626
    .end local v14    # "outAddrStr":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportForceRemovePlusCode()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const/16 v18, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-nez v18, :cond_4

    .line 1628
    const/4 v5, 0x1

    .line 1631
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportReplacePlusWith010()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1632
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/HtcMessageHelper;->replacePlusWith010(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1639
    :cond_5
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v8

    .line 1641
    .local v8, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v8, :cond_8

    const/4 v15, 0x0

    .line 1790
    :goto_1
    return-object v15

    .line 1595
    .end local v5    # "bRemovePlus":Z
    .end local v8    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportForcePlusCodeWith011()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1597
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportReplacePlus1With1()Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "+1"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_7

    .line 1599
    const/16 v18, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1600
    .local v16, "substr":Ljava/lang/String;
    move-object/from16 p0, v16

    .line 1601
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "For MPCS final address: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1605
    .end local v16    # "substr":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1643
    .restart local v5    # "bRemovePlus":Z
    .restart local v8    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 1644
    .local v7, "bearerData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v18, 0x2

    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1649
    if-nez p7, :cond_13

    .line 1651
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMessageIdMechanism()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1652
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1671
    :goto_2
    move/from16 v0, p1

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1673
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHideReplyOption()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1674
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 1677
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 1678
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 1679
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 1681
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1684
    if-eqz p4, :cond_d

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_d

    .line 1685
    const/4 v5, 0x0

    .line 1686
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_c

    .line 1687
    const-string v18, "SmsMessage"

    const-string v19, "before callback To NBPCD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1689
    .restart local v14    # "outAddrStr":Ljava/lang/String;
    move-object/from16 v0, p4

    if-eq v14, v0, :cond_b

    .line 1690
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNbpcd()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1691
    const/4 v5, 0x1

    .line 1693
    :cond_a
    move-object/from16 p4, v14

    .line 1695
    :cond_b
    const-string v18, "SmsMessage"

    const-string v19, "after callback To NBPCD"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    .end local v14    # "outAddrStr":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p4

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1701
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHidePriorityIndicator()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1702
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1712
    :goto_3
    const-wide/16 v18, 0x0

    cmp-long v18, p5, v18

    if-eqz v18, :cond_e

    .line 1713
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1714
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1715
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 1716
    new-instance v18, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    move-object/from16 v0, v18

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 1717
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 1718
    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-object/from16 v18, v0

    invoke-static {}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->switchTimezone(Ljava/lang/String;)V

    .line 1724
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCDMAHideLanguageIndicator()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1725
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1733
    :cond_f
    :goto_4
    invoke-static {v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v10

    .line 1734
    .local v10, "encodedBearerData":[B
    const-string v18, "CDMA:SMS"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1735
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO (encoded) BearerData = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO raw BearerData = \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_10
    if-nez v10, :cond_16

    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1655
    .end local v10    # "encodedBearerData":[B
    :cond_11
    :try_start_0
    const-string v18, "isms"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v13

    .line 1656
    .local v13, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v13, :cond_12

    .line 1657
    invoke-interface {v13}, Lcom/android/internal/telephony/ISms;->getNextMessageIdInPreference()I

    move-result v18

    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1661
    .end local v13    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v12

    .line 1662
    .local v12, "ex":Landroid/os/RemoteException;
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_2

    .line 1659
    .end local v12    # "ex":Landroid/os/RemoteException;
    .restart local v13    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_12
    const/16 v18, 0x1

    :try_start_1
    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1667
    .end local v13    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_13
    move/from16 v0, p7

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    goto/16 :goto_2

    .line 1705
    :cond_14
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 1706
    move/from16 v0, p3

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    goto/16 :goto_3

    .line 1727
    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCtMoFormat()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1728
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 1729
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    goto/16 :goto_4

    .line 1741
    .restart local v10    # "encodedBearerData":[B
    :cond_16
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCtMoFormat()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1742
    const/16 v17, 0x1002

    .line 1747
    .local v17, "teleservice":I
    :goto_5
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 1748
    .local v11, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 1749
    move/from16 v0, v17

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 1750
    iput-object v8, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1751
    const/16 v18, 0x1

    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 1752
    iput-object v10, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 1764
    :try_start_2
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1765
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1766
    .local v9, "dos":Ljava/io/DataOutputStream;
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1767
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1768
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1769
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1770
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1771
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1772
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1773
    iget v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1774
    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v0, v8, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v9, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1776
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1777
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1778
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1779
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1780
    const/16 v18, 0x0

    array-length v0, v10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v10, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1781
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 1783
    new-instance v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 1784
    .local v15, "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 1785
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1787
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v15    # "pdu":Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception v12

    .line 1788
    .local v12, "ex":Ljava/io/IOException;
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "creating SubmitPdu failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1744
    .end local v11    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v12    # "ex":Ljava/io/IOException;
    .end local v17    # "teleservice":I
    :cond_17
    iget-boolean v0, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_18

    const/16 v17, 0x1005

    .restart local v17    # "teleservice":I
    :goto_6
    goto/16 :goto_5

    .end local v17    # "teleservice":I
    :cond_18
    const/16 v17, 0x1002

    goto :goto_6
.end method

.method private setCallbackNumber(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 9
    .param p1, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .prologue
    const/4 v8, 0x1

    .line 802
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiSetCallBackToTpoa()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 803
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_0

    .line 804
    const-string v5, "SmsMessage"

    const-string v6, "callback # >"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    :cond_0
    const/4 v2, 0x0

    .line 808
    .local v2, "bOtherService":Z
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v5, :cond_2

    .line 809
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v4, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 810
    .local v4, "userdata":Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-boolean v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-ne v5, v8, :cond_2

    .line 811
    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 816
    const/4 v2, 0x1

    .line 821
    .end local v4    # "userdata":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_5

    .line 822
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 823
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 851
    :cond_3
    :goto_0
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "change ori addr> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v2    # "bOtherService":Z
    :cond_4
    return-void

    .line 826
    .restart local v2    # "bOtherService":Z
    :cond_5
    iget-object v5, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_6

    if-ne v2, v8, :cond_3

    .line 829
    :cond_6
    const/16 v5, 0xc

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    .line 837
    .local v1, "addrResult":[B
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 839
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v1

    const-string v8, "SJIS"

    invoke-direct {v5, v1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 845
    iput-object v0, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0

    .line 840
    :catch_0
    move-exception v3

    .line 841
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SJIS decode fake address fail."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-string v5, ""

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 829
    :array_0
    .array-data 1
        -0x6bt
        0x73t
        -0x6at
        -0x42t
        -0x7et
        -0x38t
        -0x6ft
        -0x69t
        -0x70t
        0x4dt
        -0x72t
        -0x2et
    .end array-data
.end method

.method private static writePdu(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)[B
    .locals 1
    .param p0, "env"    # Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .prologue
    .line 2207
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method KddiGetMessageEncoding()I
    .locals 1

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    return v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    .line 1934
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    .line 1937
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getEncodedBearerData()[B
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1892
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1894
    .local v0, "output":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1895
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1896
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1897
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1899
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_0

    .line 1900
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1903
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    .line 1489
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1491
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 1924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 1946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    .line 632
    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public isAtMailMessage()Z
    .locals 2

    .prologue
    .line 2374
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v1, 0x1005

    if-ne v0, v1, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v1, 0xb84

    if-ne v0, v1, :cond_0

    .line 2378
    const/4 v0, 0x1

    .line 2382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCMAS()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 873
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 874
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 v2, 0x10ff

    if-gt v1, v2, :cond_0

    .line 879
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommercialKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 932
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 933
    const/4 v0, 0x0

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    .line 658
    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 972
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiBcmsEmergencyMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiProprietaryServiceCategory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    const/4 v0, 0x1

    .line 976
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKddiEarthquakeAlert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 897
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 898
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    sparse-switch v1, :sswitch_data_0

    .line 917
    :cond_0
    const/4 v0, 0x0

    :sswitch_0
    return v0

    .line 898
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x8001 -> :sswitch_0
        0x8021 -> :sswitch_0
        0x8022 -> :sswitch_0
        0x8026 -> :sswitch_0
        0xc001 -> :sswitch_0
        0xc021 -> :sswitch_0
        0xc022 -> :sswitch_0
        0xc026 -> :sswitch_0
    .end sparse-switch
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 2

    .prologue
    .line 985
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    .line 986
    .local v0, "category":I
    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/16 v1, 0x3f

    if-le v0, v1, :cond_2

    :cond_0
    const v1, 0x8001

    if-lt v0, v1, :cond_1

    const v1, 0x803f

    if-le v0, v1, :cond_2

    :cond_1
    const v1, 0xc001

    if-lt v0, v1, :cond_3

    const v1, 0xc03f

    if-gt v0, v1, :cond_3

    .line 990
    :cond_2
    const/4 v1, 0x1

    .line 992
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 648
    const-string v0, "SmsMessage"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    .line 709
    const-string v0, "SmsMessage"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kddiGetMessageId()I
    .locals 1

    .prologue
    .line 2153
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    return v0
.end method

.method public kddiGetSmsTypeId()I
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    return v0
.end method

.method public kddiHasSmsTypeId()Z
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 2189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method kddiIsDiscard()Z
    .locals 1

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    return v0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 13

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x2

    .line 1458
    const/4 v11, 0x0

    .line 1459
    .local v11, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiUnicodeWemtByteCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    .line 1465
    :goto_0
    if-nez v11, :cond_1

    .line 1466
    const-string v0, "SmsMessage"

    const-string v1, "BearerData.decode() returned null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_1
    return-object v9

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v11

    goto :goto_0

    .line 1470
    :cond_1
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1471
    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_2
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1475
    .local v12, "plmn":Ljava/lang/String;
    new-instance v4, Landroid/telephony/SmsCbLocation;

    invoke-direct {v4, v12}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 1477
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    new-instance v0, Landroid/telephony/SmsCbMessage;

    const/4 v2, 0x1

    iget v3, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v8, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iget-object v10, v11, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    move-object v9, v0

    goto :goto_1
.end method

.method protected parseSms()V
    .locals 1

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms(Z)V

    .line 1244
    return-void
.end method

.method protected parseSms(Z)V
    .locals 12
    .param p1, "isEfRecord"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1254
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v7, 0x40000

    if-ne v6, v7, :cond_1

    .line 1255
    new-instance v6, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1256
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v6, :cond_0

    .line 1257
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v7, v7, v11

    and-int/lit16 v7, v7, 0xff

    iput v7, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    if-ne v6, v10, :cond_b

    .line 1267
    const-string v6, "SmsMessage"

    const-string v7, "broadcast message. "

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    .line 1282
    :goto_1
    const-string v6, "CDMA:SMS"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1283
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MT raw BearerData = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v8, v8, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MT (decoded) BearerData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    .line 1289
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiSlamdownSms()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1290
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v6, :cond_3

    .line 1291
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v6, :cond_3

    .line 1293
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 1299
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v6, :cond_6

    .line 1300
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    .line 1301
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1302
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1305
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v6, :cond_5

    .line 1306
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getAlertTextStr()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1307
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    .line 1308
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1309
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getExpires()Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;->toMillis(Z)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/telephony/HtcCmasMessage;->setExpiredMillis(J)V

    .line 1311
    :cond_4
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set CMAS content> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expired time> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v8}, Landroid/telephony/HtcCmasMessage;->getExpiredMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :try_start_0
    const-string v6, "SmsMessage"

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mCmas:Landroid/telephony/HtcCmasMessage;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1323
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintReassembleSms()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v7, 0x1002

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v6, :cond_6

    .line 1325
    const/4 v3, 0x0

    .line 1327
    .local v3, "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/HtcMessageHelper;->getSprintReassembleSmsInformation(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1332
    :goto_3
    if-eqz v3, :cond_6

    .line 1333
    iput-boolean v10, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    .line 1335
    new-instance v2, Lcom/android/internal/util/BitwiseOutputStream;

    const/4 v6, 0x5

    invoke-direct {v2, v6}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1337
    .local v2, "headerStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v6, 0x8

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1338
    const/16 v6, 0x8

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1339
    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1341
    const/16 v6, 0x8

    iget v7, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->totalSegment:I

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1342
    const/16 v6, 0x8

    iget v7, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1348
    :goto_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    if-ne v6, v10, :cond_6

    .line 1349
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1351
    iget-object v6, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 1352
    iget v6, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    if-ne v6, v10, :cond_d

    .line 1353
    iget-object v6, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 1364
    .end local v2    # "headerStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v3    # "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :cond_6
    :goto_5
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v6, :cond_8

    .line 1365
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1366
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/HtcMessageHelper;->removePrefixZeroFromPhoneNumberIfNeed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1369
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 1370
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 1376
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwPlusPrependRule()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCtPrefixPlusSignToPhoneNumber()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1379
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v6, v6, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v6, v10, :cond_8

    .line 1380
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2b

    if-eq v6, v7, :cond_8

    .line 1381
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1392
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v6, :cond_e

    .line 1393
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 1397
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->shouldEnhanceCdmaTimestampWhileRoaming()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez p1, :cond_9

    .line 1399
    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    const-wide/32 v8, 0x1b77400

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 1400
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 1401
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    .line 1402
    .local v4, "rawOffset":I
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimeZone RAW Offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    .line 1404
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enhanced SMS SC Timestamp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    .end local v4    # "rawOffset":I
    .end local v5    # "tz":Ljava/util/TimeZone;
    :cond_9
    :goto_6
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_11

    .line 1423
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v6, :cond_10

    .line 1424
    const-string v7, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v6, :cond_f

    const-string v6, "also missing"

    :goto_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " userData)."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    iput v11, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1434
    :goto_8
    iget-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mDischargeTimeMillis:J

    .line 1441
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 1443
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    .line 1274
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiUnicodeWemtByteCount()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1275
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v6, v11, v7}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 1278
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    goto/16 :goto_1

    .line 1328
    .restart local v3    # "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :catch_0
    move-exception v1

    .line 1329
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1343
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "headerStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_1
    move-exception v0

    .line 1344
    .local v0, "ae":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {v0}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;->printStackTrace()V

    .line 1345
    iput-boolean v11, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->isSprintReassembleSms:Z

    goto/16 :goto_4

    .line 1355
    .end local v0    # "ae":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1409
    .end local v2    # "headerStream":Lcom/android/internal/util/BitwiseOutputStream;
    .end local v3    # "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    goto/16 :goto_6

    .line 1424
    :cond_f
    const-string v6, "does have"

    goto :goto_7

    .line 1429
    :cond_10
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    .line 1430
    iget v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_8

    .line 1436
    :cond_11
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v6, v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v6, v10, :cond_a

    .line 1437
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported message type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v8, v8, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1444
    :cond_12
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-eqz v6, :cond_0

    goto/16 :goto_0

    .line 1315
    :catch_2
    move-exception v6

    goto/16 :goto_2
.end method
