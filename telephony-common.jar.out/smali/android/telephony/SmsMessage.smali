.class public Landroid/telephony/SmsMessage;
.super Ljava/lang/Object;
.source "SmsMessage.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsMessage$1;,
        Landroid/telephony/SmsMessage$NoEmsSupportConfig;,
        Landroid/telephony/SmsMessage$DeliveryPdu;,
        Landroid/telephony/SmsMessage$SubmitPdu;,
        Landroid/telephony/SmsMessage$MessageClass;
    }
.end annotation


# static fields
.field public static final ENCODING_16BIT:I = 0x3

.field public static final ENCODING_7BIT:I = 0x1

.field public static final ENCODING_8BIT:I = 0x2

.field public static final ENCODING_KSC5601:I = 0x4

.field public static final ENCODING_UNKNOWN:I = 0x0

.field public static final FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field private static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field public static final MAX_USER_DATA_BYTES:I = 0x8c

.field public static final MAX_USER_DATA_BYTES_FOR_CRICKET:I = 0x83

.field public static final MAX_USER_DATA_BYTES_WITH_CONC_AND_HEADER:I = 0x80

.field public static final MAX_USER_DATA_BYTES_WITH_HEADER:I = 0x86

.field public static final MAX_USER_DATA_SEPTETS:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_FOR_CRICKET:I = 0x96

.field public static final MAX_USER_DATA_SEPTETS_FOR_KT:I = 0x5a

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_GREEK_NLI_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_NLI_HEADER:I = 0x92

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_SPANISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_CONC_TURKISH_NLI_HEADER:I = 0x95

.field public static final MAX_USER_DATA_SEPTETS_WITH_GREEK_NLI_HEADER:I = 0xa0

.field public static final MAX_USER_DATA_SEPTETS_WITH_HEADER:I = 0x99

.field public static final MAX_USER_DATA_SEPTETS_WITH_NLI_HEADER:I = 0x98

.field public static final MAX_USER_DATA_SEPTETS_WITH_SPANISH_NLI_HEADER:I = 0x9b

.field public static final MAX_USER_DATA_SEPTETS_WITH_TURKISH_NLI_HEADER:I = 0x9b

.field private static final PCCW_MCCMNC:Ljava/lang/String; = "45429"

.field private static mIsNoEmsSupportConfigListLoaded:Z

.field private static mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

.field private static mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;


# instance fields
.field private mSubId:J

.field public mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2022
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 2023
    const/4 v0, 0x0

    sput-boolean v0, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Landroid/telephony/SmsMessage;->getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 213
    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;)V
    .locals 2
    .param p1, "smb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/SmsMessage;->mSubId:J

    .line 216
    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 217
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)[I
    .locals 7
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    const/4 v6, 0x0

    .line 563
    const/4 v0, -0x1

    .line 564
    .local v0, "nli":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 565
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 566
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v0

    .line 568
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportDefaultTableNoNli()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {p0, v6, v6, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 570
    const/4 v0, -0x1

    .line 574
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    const/4 v0, -0x1

    .line 579
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)[I
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 599
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 602
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 603
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 604
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 605
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 606
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 607
    return-object v0

    .line 599
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZII)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I
    .param p3, "phoneType"    # I

    .prologue
    const/4 v4, 0x2

    .line 616
    if-ne v4, p3, :cond_0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 619
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 620
    .local v0, "ret":[I
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v3, v0, v2

    .line 621
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 622
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v2, v0, v4

    .line 623
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 624
    return-object v0

    .line 616
    .end local v0    # "ret":[I
    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/String;Z)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1063
    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLength(Ljava/lang/String;ZI)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 1068
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p0, "msgBody"    # Ljava/lang/String;
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-static {p1, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    invoke-static {p2, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 639
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 640
    .local v0, "ret":[I
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    aput v2, v0, v4

    .line 641
    const/4 v2, 0x1

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    aput v3, v0, v2

    .line 642
    const/4 v2, 0x2

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    aput v3, v0, v2

    .line 643
    const/4 v2, 0x3

    iget v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    aput v3, v0, v2

    .line 644
    .end local v0    # "ret":[I
    :goto_0
    return-object v0

    .line 636
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    .line 448
    invoke-static {}, Landroid/telephony/SmsMessage;->isCdmaVoice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 456
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 452
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 456
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "phoneType"    # I

    .prologue
    .line 479
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 480
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 491
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 485
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 491
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "index"    # I
    .param p1, "data"    # [B
    .param p2, "isCdmaFormat"    # Z

    .prologue
    .line 498
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 499
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 506
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    :goto_1
    return-object v1

    .line 502
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 506
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static createFromPdu([B)Landroid/telephony/SmsMessage;
    .locals 5
    .param p0, "pdu"    # [B

    .prologue
    const/4 v4, 0x2

    .line 253
    const/4 v2, 0x0

    .line 257
    .local v2, "message":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 258
    .local v0, "activePhone":I
    if-ne v4, v0, :cond_2

    const-string v1, "3gpp2"

    .line 261
    .local v1, "format":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-nez v3, :cond_1

    .line 265
    :cond_0
    if-ne v4, v0, :cond_3

    const-string v1, "3gpp"

    .line 267
    :goto_1
    invoke-static {p0, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 269
    :cond_1
    return-object v2

    .line 258
    .end local v1    # "format":Ljava/lang/String;
    :cond_2
    const-string v1, "3gpp"

    goto :goto_0

    .line 265
    .restart local v1    # "format":Ljava/lang/String;
    :cond_3
    const-string v1, "3gpp2"

    goto :goto_1
.end method

.method public static createFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "messageType"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "smsMsg":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .line 302
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    packed-switch p1, :pswitch_data_0

    .line 310
    invoke-static {p0}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v0

    .line 313
    :goto_0
    if-nez v0, :cond_0

    .line 314
    if-eqz v1, :cond_0

    .line 315
    new-instance v0, Landroid/telephony/SmsMessage;

    .end local v0    # "smsMsg":Landroid/telephony/SmsMessage;
    invoke-direct {v0, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .line 318
    .restart local v0    # "smsMsg":Landroid/telephony/SmsMessage;
    :cond_0
    return-object v0

    .line 304
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .line 305
    goto :goto_0

    .line 307
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 308
    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 4
    .param p0, "pdu"    # [B
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 285
    const-string v1, "3gpp2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 294
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_1
    return-object v1

    .line 287
    :cond_0
    const-string v1, "3gpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    .line 290
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFromPdu(): unsupported message format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static findAsciiSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 784
    .local v2, "size":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 785
    add-int/lit8 v0, v0, 0x1

    .line 786
    if-le v0, p2, :cond_0

    .line 790
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 784
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 790
    goto :goto_1
.end method

.method public static fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    const/16 v0, 0x80

    .line 996
    .local v0, "limit":I
    const/4 v3, 0x0

    .line 997
    .local v3, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 999
    .local v6, "textLen":I
    const/4 v4, 0x0

    .line 1001
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1002
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1003
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    .line 1028
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 1013
    .end local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    div-int v1, v6, v0

    .line 1015
    .local v1, "msgCount":I
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1016
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    if-ge v3, v6, :cond_1

    .line 1017
    const/4 v2, 0x0

    .line 1018
    .local v2, "nextPos":I
    sub-int v7, v6, v3

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int v2, v3, v7

    .line 1020
    if-le v2, v3, :cond_1

    if-le v2, v6, :cond_2

    .end local v2    # "nextPos":I
    :cond_1
    move-object v5, v4

    .line 1028
    .restart local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 1025
    .end local v5    # "result":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "nextPos":I
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    move v3, v2

    .line 1027
    goto :goto_1
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 808
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static fragmentText(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isCdma"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 824
    const/4 v0, -0x1

    .line 825
    .local v0, "nli":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 826
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 827
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v0

    .line 829
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportDefaultTableNoNli()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    invoke-static {p0, v6, v6, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 831
    const/4 v0, -0x1

    .line 835
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v2

    if-nez v2, :cond_1

    .line 836
    const/4 v0, -0x1

    .line 840
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static fragmentText(Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "isCdmaMo"    # Z
    .param p2, "nli"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    if-eqz p1, :cond_8

    const/4 v8, 0x0

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    :goto_0
    sput-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 854
    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "encoding detail>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintSegmentIndicator()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 861
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v0, 0x1

    .line 862
    .local v0, "bAscii":Z
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa0

    if-gt v8, v9, :cond_1

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x46

    if-le v8, v9, :cond_2

    .line 864
    :cond_1
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    .line 869
    .end local v0    # "bAscii":Z
    :cond_2
    if-eqz p1, :cond_a

    const/4 v8, 0x2

    :goto_2
    invoke-static {v8}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v8

    if-nez v8, :cond_e

    .line 872
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    .line 875
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 876
    const/16 v1, 0x83

    .line 942
    .local v1, "limit":I
    :cond_3
    :goto_3
    const/4 v2, 0x0

    .line 943
    .local v2, "newMsgBody":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 944
    .local v5, "r":Landroid/content/res/Resources;
    const v8, 0x112007b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 945
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 947
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 948
    move-object v2, p0

    .line 951
    :cond_5
    const/4 v4, 0x0

    .line 952
    .local v4, "pos":I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 953
    .local v7, "textLen":I
    new-instance v6, Ljava/util/ArrayList;

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 954
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    if-ge v4, v7, :cond_7

    .line 955
    const/4 v3, 0x0

    .line 957
    .local v3, "nextPos":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v8

    if-eqz v8, :cond_26

    .line 958
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    .line 980
    :goto_5
    if-le v3, v4, :cond_6

    if-le v3, v7, :cond_2e

    .line 981
    :cond_6
    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fragmentText failed ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    .end local v3    # "nextPos":I
    :cond_7
    return-object v6

    .line 850
    .end local v1    # "limit":I
    .end local v2    # "newMsgBody":Ljava/lang/String;
    .end local v4    # "pos":I
    .end local v5    # "r":Landroid/content/res/Resources;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "textLen":I
    :cond_8
    const/4 v8, 0x0

    invoke-static {p0, v8, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v8

    goto/16 :goto_0

    .line 861
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 869
    :cond_a
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 879
    :cond_b
    const/16 v1, 0x8c

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 882
    .end local v1    # "limit":I
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 883
    const/16 v1, 0x96

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 886
    .end local v1    # "limit":I
    :cond_d
    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 888
    .end local v1    # "limit":I
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 890
    const/16 v1, 0x50

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 892
    .end local v1    # "limit":I
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 893
    const/16 v1, 0x5a

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 895
    .end local v1    # "limit":I
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 896
    const/16 v1, 0x8c

    .restart local v1    # "limit":I
    goto/16 :goto_3

    .line 899
    .end local v1    # "limit":I
    :cond_11
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1a

    .line 900
    const/4 v8, 0x2

    if-ne p2, v8, :cond_14

    .line 901
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_13

    const/4 v8, -0x1

    if-ne p2, v8, :cond_12

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .line 914
    .restart local v1    # "limit":I
    :goto_6
    const/16 v8, 0x86

    if-ne v1, v8, :cond_3

    .line 921
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_3

    .line 922
    add-int/lit8 v1, v1, -0x2

    goto/16 :goto_3

    .line 901
    .end local v1    # "limit":I
    :cond_12
    const/16 v1, 0x95

    goto :goto_6

    :cond_13
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_6

    .line 903
    :cond_14
    const/4 v8, 0x1

    if-ne p2, v8, :cond_17

    .line 904
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_16

    const/4 v8, -0x1

    if-ne p2, v8, :cond_15

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .restart local v1    # "limit":I
    :goto_7
    goto :goto_6

    .end local v1    # "limit":I
    :cond_15
    const/16 v1, 0x95

    goto :goto_7

    :cond_16
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_7

    .line 907
    :cond_17
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_19

    const/4 v8, -0x1

    if-ne p2, v8, :cond_18

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v1

    .restart local v1    # "limit":I
    :goto_8
    goto :goto_6

    .end local v1    # "limit":I
    :cond_18
    const/16 v1, 0x92

    goto :goto_8

    :cond_19
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v1

    goto :goto_8

    .line 926
    :cond_1a
    const/4 v8, 0x2

    if-ne p2, v8, :cond_1d

    .line 927
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    const/4 v8, -0x1

    if-ne p2, v8, :cond_1b

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_9
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_1b
    const/16 v1, 0x9b

    goto :goto_9

    :cond_1c
    const/16 v1, 0x8c

    goto :goto_9

    .line 929
    :cond_1d
    const/4 v8, 0x1

    if-ne p2, v8, :cond_20

    .line 930
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1f

    const/4 v8, -0x1

    if-ne p2, v8, :cond_1e

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_a
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_1e
    const/16 v1, 0x9b

    goto :goto_a

    :cond_1f
    const/16 v1, 0x8c

    goto :goto_a

    .line 932
    :cond_20
    const/16 v8, 0xe

    if-ne p2, v8, :cond_23

    .line 933
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_22

    const/4 v8, -0x1

    if-ne p2, v8, :cond_21

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_b
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_21
    const/16 v1, 0xa0

    goto :goto_b

    :cond_22
    const/16 v1, 0x8c

    goto :goto_b

    .line 936
    :cond_23
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_25

    const/4 v8, -0x1

    if-ne p2, v8, :cond_24

    const/16 v1, 0xa0

    .restart local v1    # "limit":I
    :goto_c
    goto/16 :goto_3

    .end local v1    # "limit":I
    :cond_24
    const/16 v1, 0x98

    goto :goto_c

    :cond_25
    const/16 v1, 0x8c

    goto :goto_c

    .line 960
    .restart local v1    # "limit":I
    .restart local v2    # "newMsgBody":Ljava/lang/String;
    .restart local v3    # "nextPos":I
    .restart local v4    # "pos":I
    .restart local v5    # "r":Landroid/content/res/Resources;
    .restart local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "textLen":I
    :cond_26
    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2b

    .line 961
    if-eqz p1, :cond_27

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v8, v8, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_28

    :cond_27
    if-eqz p1, :cond_29

    const/4 v8, 0x2

    :goto_d
    invoke-static {v8}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v8

    if-nez v8, :cond_2a

    .line 965
    :cond_28
    sub-int v8, v7, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    goto/16 :goto_5

    .line 961
    :cond_29
    const/4 v8, 0x1

    goto :goto_d

    .line 968
    :cond_2a
    invoke-static {v2, v4, v1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v3

    goto/16 :goto_5

    .line 972
    :cond_2b
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 973
    const/16 v1, 0x50

    .line 978
    :cond_2c
    :goto_e
    div-int/lit8 v8, v1, 0x2

    sub-int v9, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v3, v4, v8

    goto/16 :goto_5

    .line 974
    :cond_2d
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 975
    const/16 v1, 0x5a

    goto :goto_e

    .line 985
    :cond_2e
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    move v4, v3

    .line 987
    goto/16 :goto_4
.end method

.method public static fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 731
    if-ne v9, p1, :cond_2

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    .line 740
    .local v4, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :goto_0
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v6, v8, :cond_4

    .line 741
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_3

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .line 748
    .local v0, "limit":I
    :goto_1
    const/4 v2, 0x0

    .line 749
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 750
    .local v5, "textLen":I
    new-instance v3, Ljava/util/ArrayList;

    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 751
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v5, :cond_1

    .line 752
    const/4 v1, 0x0

    .line 753
    .local v1, "nextPos":I
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_7

    .line 754
    if-ne p1, v9, :cond_6

    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v6, v8, :cond_6

    .line 756
    sub-int v6, v5, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    .line 764
    :goto_3
    if-le v1, v2, :cond_0

    if-le v1, v5, :cond_8

    .line 765
    :cond_0
    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fragmentText failed ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    .end local v1    # "nextPos":I
    :cond_1
    return-object v3

    .line 731
    .end local v0    # "limit":I
    .end local v2    # "pos":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v5    # "textLen":I
    :cond_2
    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v4

    goto :goto_0

    .line 741
    .restart local v4    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_3
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_1

    .line 744
    :cond_4
    iget v6, v4, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v6, v8, :cond_5

    const/16 v0, 0xa0

    .restart local v0    # "limit":I
    :goto_4
    goto :goto_1

    .end local v0    # "limit":I
    :cond_5
    const/16 v0, 0x8c

    goto :goto_4

    .line 759
    .restart local v0    # "limit":I
    .restart local v1    # "nextPos":I
    .restart local v2    # "pos":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "textLen":I
    :cond_6
    const/4 v6, -0x1

    invoke-static {p0, v2, v0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto :goto_3

    .line 762
    :cond_7
    div-int/lit8 v6, v0, 0x2

    sub-int v7, v5, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v1, v2, v6

    goto :goto_3

    .line 769
    :cond_8
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    move v2, v1

    .line 771
    goto/16 :goto_2
.end method

.method public static fragmentTextForCSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 16
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "sAddress"    # Ljava/lang/String;
    .param p2, "sCallback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "address":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v2, 0x0

    .line 652
    .local v2, "callback":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 653
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 654
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 655
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 657
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v13

    sput-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 663
    if-nez v1, :cond_4

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x5

    add-int/lit8 v14, v13, 0x2

    if-nez v2, :cond_5

    const/4 v13, 0x0

    :goto_1
    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x8

    add-int/lit8 v12, v13, 0x3

    .line 675
    .local v12, "totalBytes":I
    rsub-int v4, v12, 0xac

    .line 676
    .local v4, "maxBytes":I
    mul-int/lit8 v13, v4, 0x8

    div-int/lit8 v7, v13, 0x7

    .line 679
    .local v7, "maxSeptets":I
    move v5, v4

    .line 681
    .local v5, "maxConcatenatedBytes":I
    mul-int/lit8 v13, v5, 0x8

    div-int/lit8 v6, v13, 0x7

    .line 683
    .local v6, "maxConcatenatedSeptets":I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_7

    .line 684
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move v3, v6

    .line 691
    .local v3, "limit":I
    :goto_2
    const/4 v9, 0x0

    .line 692
    .local v9, "pos":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    .line 693
    .local v11, "textLen":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 694
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    if-ge v9, v11, :cond_3

    .line 695
    const/4 v8, 0x0

    .line 696
    .local v8, "nextPos":I
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    .line 697
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 699
    sub-int v13, v11, v9

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    .line 707
    :goto_4
    if-le v8, v9, :cond_2

    if-le v8, v11, :cond_b

    .line 708
    :cond_2
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "fragmentTextForCSIM failed ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " or "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " >= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v8    # "nextPos":I
    :cond_3
    return-object v10

    .line 663
    .end local v3    # "limit":I
    .end local v4    # "maxBytes":I
    .end local v5    # "maxConcatenatedBytes":I
    .end local v6    # "maxConcatenatedSeptets":I
    .end local v7    # "maxSeptets":I
    .end local v9    # "pos":I
    .end local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "textLen":I
    .end local v12    # "totalBytes":I
    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v13

    goto/16 :goto_1

    .restart local v4    # "maxBytes":I
    .restart local v5    # "maxConcatenatedBytes":I
    .restart local v6    # "maxConcatenatedSeptets":I
    .restart local v7    # "maxSeptets":I
    .restart local v12    # "totalBytes":I
    :cond_6
    move v3, v5

    .line 684
    goto :goto_2

    .line 687
    :cond_7
    sget-object v13, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v13, v13, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move v3, v7

    .restart local v3    # "limit":I
    :goto_5
    goto :goto_2

    .end local v3    # "limit":I
    :cond_8
    move v3, v4

    goto :goto_5

    .line 702
    .restart local v3    # "limit":I
    .restart local v8    # "nextPos":I
    .restart local v9    # "pos":I
    .restart local v10    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "textLen":I
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v9, v3}, Landroid/telephony/SmsMessage;->findAsciiSeptetLimitIndex(Ljava/lang/String;II)I

    move-result v8

    goto :goto_4

    .line 705
    :cond_a
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v11, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v8, v9, v13

    goto :goto_4

    .line 712
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    move v9, v8

    .line 714
    goto/16 :goto_3
.end method

.method private static fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
    .param p2, "phonetype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x8c

    const/4 v11, 0x2

    const/16 v0, 0xa0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1758
    if-ne v11, p2, :cond_5

    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    :goto_0
    sput-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 1762
    const-string v5, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encoding detail>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-static {p2}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1771
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v9, :cond_7

    .line 1773
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1774
    const/16 v0, 0x83

    .line 1835
    .local v0, "limit":I
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 1836
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1837
    .local v4, "textLen":I
    new-instance v3, Ljava/util/ArrayList;

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1838
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-ge v2, v4, :cond_4

    .line 1839
    const/4 v1, 0x0

    .line 1840
    .local v1, "nextPos":I
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_21

    .line 1841
    if-ne p2, v11, :cond_1

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-eq v5, v9, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v5

    if-nez v5, :cond_20

    .line 1843
    :cond_2
    sub-int v5, v4, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    .line 1858
    :goto_3
    if-le v1, v2, :cond_3

    if-le v1, v4, :cond_24

    .line 1859
    :cond_3
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fragmentText failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    .end local v1    # "nextPos":I
    :cond_4
    return-object v3

    .line 1758
    .end local v0    # "limit":I
    .end local v2    # "pos":I
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "textLen":I
    :cond_5
    const/4 v5, 0x0

    invoke-static {p0, v5, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    goto/16 :goto_0

    .line 1777
    :cond_6
    const/16 v0, 0x8c

    .restart local v0    # "limit":I
    goto :goto_1

    .line 1780
    .end local v0    # "limit":I
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1781
    const/16 v0, 0x96

    .restart local v0    # "limit":I
    goto :goto_1

    .line 1784
    .end local v0    # "limit":I
    :cond_8
    const/16 v0, 0xa0

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1786
    .end local v0    # "limit":I
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1788
    const/16 v0, 0x50

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1790
    .end local v0    # "limit":I
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1791
    const/16 v0, 0x5a

    .restart local v0    # "limit":I
    goto/16 :goto_1

    .line 1793
    .end local v0    # "limit":I
    :cond_b
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-le v5, v9, :cond_14

    .line 1794
    if-ne p1, v11, :cond_e

    .line 1795
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_d

    if-ne p1, v10, :cond_c

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .line 1807
    .restart local v0    # "limit":I
    :goto_4
    const/16 v5, 0x86

    if-ne v0, v5, :cond_0

    .line 1814
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_0

    .line 1815
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_1

    .line 1795
    .end local v0    # "limit":I
    :cond_c
    const/16 v0, 0x95

    goto :goto_4

    :cond_d
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_4

    .line 1797
    :cond_e
    if-ne p1, v9, :cond_11

    .line 1798
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_10

    if-ne p1, v10, :cond_f

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .restart local v0    # "limit":I
    :goto_5
    goto :goto_4

    .end local v0    # "limit":I
    :cond_f
    const/16 v0, 0x95

    goto :goto_5

    :cond_10
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_5

    .line 1801
    :cond_11
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_13

    if-ne p1, v10, :cond_12

    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataSeptetsWithHeader()I

    move-result v0

    .restart local v0    # "limit":I
    :goto_6
    goto :goto_4

    .end local v0    # "limit":I
    :cond_12
    const/16 v0, 0x92

    goto :goto_6

    :cond_13
    invoke-static {}, Landroid/telephony/SmsMessage;->getMaxUserDataBytesWithHeader()I

    move-result v0

    goto :goto_6

    .line 1819
    :cond_14
    if-ne p1, v11, :cond_17

    .line 1820
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_16

    if-ne p1, v10, :cond_15

    .restart local v0    # "limit":I
    :goto_7
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_15
    const/16 v0, 0x9b

    goto :goto_7

    :cond_16
    move v0, v6

    goto :goto_7

    .line 1822
    :cond_17
    if-ne p1, v9, :cond_1a

    .line 1823
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_19

    if-ne p1, v10, :cond_18

    .restart local v0    # "limit":I
    :goto_8
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_18
    const/16 v0, 0x9b

    goto :goto_8

    :cond_19
    move v0, v6

    goto :goto_8

    .line 1825
    :cond_1a
    const/16 v5, 0xe

    if-ne p1, v5, :cond_1d

    .line 1826
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_1c

    if-ne p1, v10, :cond_1b

    .restart local v0    # "limit":I
    :cond_1b
    :goto_9
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_1c
    move v0, v6

    goto :goto_9

    .line 1829
    :cond_1d
    sget-object v5, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v5, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v9, :cond_1f

    if-ne p1, v10, :cond_1e

    .restart local v0    # "limit":I
    :goto_a
    goto/16 :goto_1

    .end local v0    # "limit":I
    :cond_1e
    const/16 v0, 0x98

    goto :goto_a

    :cond_1f
    move v0, v6

    goto :goto_a

    .line 1846
    .restart local v0    # "limit":I
    .restart local v1    # "nextPos":I
    .restart local v2    # "pos":I
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "textLen":I
    :cond_20
    invoke-static {p0, v2, v0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;III)I

    move-result v1

    goto/16 :goto_3

    .line 1850
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSktUserData()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1851
    const/16 v0, 0x50

    .line 1856
    :cond_22
    :goto_b
    div-int/lit8 v5, v0, 0x2

    sub-int v6, v4, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v1, v2, v5

    goto/16 :goto_3

    .line 1852
    :cond_23
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKtUserData()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1853
    const/16 v0, 0x5a

    goto :goto_b

    .line 1863
    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    move v2, v1

    .line 1865
    goto/16 :goto_2
.end method

.method public static fragmentTextNliExt(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "nli"    # I
    .param p2, "phonetype"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1753
    invoke-static {p0, p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextHtcNli(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;I)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "peerAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "timeStamp"    # Landroid/text/format/Time;
    .param p4, "phoneType"    # I

    .prologue
    .line 463
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 464
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 470
    .local v0, "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 467
    .end local v0    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "pdu":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;
    .locals 3
    .param p0, "sOriginatorAddress"    # Ljava/lang/String;
    .param p1, "lTimeMilli"    # J
    .param p3, "sMessage"    # Ljava/lang/String;
    .param p4, "bIs7Bit"    # Z
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1601
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1602
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .line 1609
    .local v0, "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    :goto_0
    return-object v0

    .line 1605
    .end local v0    # "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v0

    .restart local v0    # "deliveruPdu":Landroid/telephony/SmsMessage$DeliveryPdu;
    goto :goto_0
.end method

.method public static getMaxUserDataBytesWithHeader()I
    .locals 1

    .prologue
    .line 1898
    const/16 v0, 0x86

    return v0
.end method

.method public static getMaxUserDataSeptetsWithHeader()I
    .locals 1

    .prologue
    .line 1916
    const/16 v0, 0x99

    return v0
.end method

.method public static final getNliFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1562
    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public static getPhoneType()I
    .locals 1

    .prologue
    .line 1265
    const/4 v0, -0x1

    return v0
.end method

.method private static final getSmsFacility()Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1

    .prologue
    .line 1690
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1691
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1693
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method private static final getSmsFacility(I)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 1
    .param p0, "phoneType"    # I

    .prologue
    .line 1740
    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    .line 1741
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .line 1743
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "originPort"    # I
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z
    .param p6, "phoneType"    # I

    .prologue
    .line 1208
    const/4 v1, 0x1

    if-ne v1, p6, :cond_0

    .line 1209
    invoke-static/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1216
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    return-object v1

    .line 1214
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 1134
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1142
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1138
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "phoneType"    # I

    .prologue
    .line 1226
    const/4 v1, 0x2

    if-ne v1, p4, :cond_0

    .line 1227
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1234
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1230
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 4
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    .line 1087
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    :goto_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1091
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdma getSubmitPdu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_1
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1088
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1093
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1095
    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm getSubmitPdu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "nli"    # I

    .prologue
    .line 1189
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1190
    if-eqz p4, :cond_0

    invoke-static {p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 1198
    .local v7, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_1
    new-instance v0, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v0, v7}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v0

    .line 1190
    .end local v7    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1194
    :cond_1
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v7

    .restart local v7    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    .line 1163
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1164
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1171
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1167
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 2
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # S
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z
    .param p5, "phoneType"    # I

    .prologue
    .line 1244
    const/4 v1, 0x2

    if-ne v1, p5, :cond_0

    .line 1245
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 1252
    .local v0, "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage$SubmitPdu;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage$SubmitPdu;-><init>(Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)V

    return-object v1

    .line 1248
    .end local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .restart local v0    # "spb":Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-static {}, Landroid/telephony/SmsMessage;->useCdmaFormatForMoSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 521
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;I)I
    .locals 1
    .param p0, "pdu"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 529
    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 530
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTPLayerLengthForPDU(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static hasEmsSupport()Z
    .locals 1

    .prologue
    .line 1959
    const/4 v0, 0x1

    return v0
.end method

.method public static htcCreateFromPdu([BI)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "pdu"    # [B
    .param p1, "phoneType"    # I

    .prologue
    .line 231
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 232
    const-string v0, "3gpp2"

    .line 237
    .local v0, "type":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v1

    return-object v1

    .line 234
    .end local v0    # "type":Ljava/lang/String;
    :cond_0
    const-string v0, "3gpp"

    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public static is7BitAfterFragmentText()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1034
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    if-nez v1, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    sget-object v1, Landroid/telephony/SmsMessage;->mTed:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v1, v0, :cond_0

    .line 1040
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCdmaVoice()Z
    .locals 2

    .prologue
    .line 1947
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1948
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoEmsSupportConfigListExisted()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 2026
    sget-boolean v4, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    if-nez v4, :cond_1

    .line 2027
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 2028
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_1

    .line 2029
    const v4, 0x1070038

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2031
    .local v1, "listArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 2032
    array-length v4, v1

    new-array v4, v4, [Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    sput-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .line 2033
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 2034
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    new-instance v5, Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    aget-object v6, v1, v0

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/telephony/SmsMessage$NoEmsSupportConfig;-><init>([Ljava/lang/String;)V

    aput-object v5, v4, v0

    .line 2033
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2037
    .end local v0    # "i":I
    :cond_0
    sput-boolean v3, Landroid/telephony/SmsMessage;->mIsNoEmsSupportConfigListLoaded:Z

    .line 2041
    .end local v1    # "listArray":[Ljava/lang/String;
    :cond_1
    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    if-eqz v4, :cond_2

    sget-object v4, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 2045
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static newFromCDS(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 388
    .local v0, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 389
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 394
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 391
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 402
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 403
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 408
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 405
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .line 336
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromCMT([Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "lines"    # [Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 344
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 345
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 350
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 347
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method protected static newFromCMTI(Ljava/lang/String;)Landroid/telephony/SmsMessage;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 359
    .local v0, "activePhone":I
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    .line 360
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    .line 365
    .local v1, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v2, Landroid/telephony/SmsMessage;

    invoke-direct {v2, v1}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v2

    .line 362
    .end local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v1

    .restart local v1    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "phoneType"    # I

    .prologue
    .line 373
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 374
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 379
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 376
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 415
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 418
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1
.end method

.method public static newFromParcel(Landroid/os/Parcel;I)Landroid/telephony/SmsMessage;
    .locals 2
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "phoneType"    # I

    .prologue
    .line 426
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 427
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v0

    .line 432
    .local v0, "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    new-instance v1, Landroid/telephony/SmsMessage;

    invoke-direct {v1, v0}, Landroid/telephony/SmsMessage;-><init>(Lcom/android/internal/telephony/SmsMessageBase;)V

    return-object v1

    .line 429
    .end local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;

    move-result-object v0

    .restart local v0    # "wrappedMessage":Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0
.end method

.method public static setPhoneType(I)V
    .locals 0
    .param p0, "phoneType"    # I

    .prologue
    .line 1260
    return-void
.end method

.method public static shouldAppendPageNumberAsPrefix()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1986
    invoke-static {}, Landroid/telephony/SmsMessage;->isNoEmsSupportConfigListExisted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2001
    .local v0, "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .local v2, "gid":Ljava/lang/String;
    .local v3, "i$":I
    .local v4, "len$":I
    .local v5, "simOperator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v6

    .line 1990
    .end local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    .end local v2    # "gid":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "simOperator":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v5

    .line 1991
    .restart local v5    # "simOperator":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    .line 1993
    .restart local v2    # "gid":Ljava/lang/String;
    sget-object v0, Landroid/telephony/SmsMessage;->mNoEmsSupportConfigList:[Landroid/telephony/SmsMessage$NoEmsSupportConfig;

    .restart local v0    # "arr$":[Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1994
    .local v1, "currentConfig":Landroid/telephony/SmsMessage$NoEmsSupportConfig;
    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mOperatorNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mGid1:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1998
    :cond_2
    iget-boolean v6, v1, Landroid/telephony/SmsMessage$NoEmsSupportConfig;->mIsPrefix:Z

    goto :goto_0

    .line 1993
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private static useCdmaFormatForMoSms()Z
    .locals 1

    .prologue
    .line 1937
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaMo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAbsoluteValidityPeriod()J
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getAbsoluteValidityPeriod()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCmasMessage()Lcom/android/internal/telephony/CmasMessage;
    .locals 1

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getCmasMessage()Lcom/android/internal/telephony/CmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDateOfReport()J
    .locals 2

    .prologue
    .line 1558
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDateOfReport()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getEmailFrom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getHtcCmasMessage()Landroid/telephony/HtcCmasMessage;

    move-result-object v0

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getIndexOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1475
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v0

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 2

    .prologue
    .line 1308
    sget-object v0, Landroid/telephony/SmsMessage$1;->$SwitchMap$com$android$internal$telephony$SmsConstants$MessageClass:[I

    iget-object v1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsConstants$MessageClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1313
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    .line 1309
    :pswitch_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1310
    :pswitch_1
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1311
    :pswitch_2
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1312
    :pswitch_3
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0

    .line 1308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMessageId()I
    .locals 2

    .prologue
    .line 1727
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMessageId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->kddiGetMessageId()I

    move-result v0

    .line 1730
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageId()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    return v0
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 1436
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPriority()I

    move-result v0

    return v0
.end method

.method public getPrivacyInd()I
    .locals 1

    .prologue
    .line 1674
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPrivacyInd()I

    move-result v0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getProtocolIdentifier()I

    move-result v0

    return v0
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawSmsc()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getRawSmsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCategory()I

    move-result v0

    return v0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatus()I

    move-result v0

    return v0
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getStatusOnSim()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1451
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getStatusOnIcc()I

    move-result v0

    return v0
.end method

.method public getSubId()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Landroid/telephony/SmsMessage;->mSubId:J

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getToaOfOriginatingAddress()I
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfOriginatingAddress()I

    move-result v0

    return v0
.end method

.method public getToaOfScAddress()I
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getToaOfScAddress()I

    move-result v0

    return v0
.end method

.method public getTpdu()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getTpdu()[B

    move-result-object v0

    return-object v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    return-object v0
.end method

.method public getdataCodingScheme()I
    .locals 1

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getdataCodingScheme()I

    move-result v0

    return v0
.end method

.method public getsinglesmsPhoneType()I
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getsinglesmsPhoneType()I

    move-result v0

    return v0
.end method

.method public isCMAS()Z
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCMAS()Z

    move-result v0

    return v0
.end method

.method public isCdmaFormat()Z
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isCphsMwiMessage()Z

    move-result v0

    return v0
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isEmail()Z

    move-result v0

    return v0
.end method

.method public isFromEVDO()Z
    .locals 1

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isFromEVDO()Z

    move-result v0

    return v0
.end method

.method public isKddiBCSMS()Z
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v0

    return v0
.end method

.method public isKddiProprietaryServiceCategory()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1713
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiProprietaryServiceCategory()Z

    move-result v0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWIClearMessage()Z

    move-result v0

    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMWISetMessage()Z

    move-result v0

    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isMwiDontStore()Z

    move-result v0

    return v0
.end method

.method public isOutGoingSms()Z
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isOutGoingSms()Z

    move-result v0

    return v0
.end method

.method public isReplace()Z
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplace()Z

    move-result v0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isReplyPathPresent()Z

    move-result v0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1538
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isStatusReportMessage()Z

    move-result v0

    return v0
.end method

.method public isUnsupportedMessage()Z
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->isUnsupportedMessage()Z

    move-result v0

    return v0
.end method

.method public setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V
    .locals 1
    .param p1, "cmas"    # Lcom/android/internal/telephony/CmasMessage;

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setCmasMessage(Lcom/android/internal/telephony/CmasMessage;)V

    .line 1659
    return-void
.end method

.method public setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V
    .locals 1
    .param p1, "cmas"    # Landroid/telephony/HtcCmasMessage;

    .prologue
    .line 1667
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setHtcCmasMessage(Landroid/telephony/HtcCmasMessage;)V

    .line 1668
    return-void
.end method

.method public setIndexOnIcc(I)V
    .locals 1
    .param p1, "nIndex"    # I

    .prologue
    .line 1492
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setIndexOnIcc(I)V

    .line 1493
    return-void
.end method

.method public setSubId(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 169
    iput-wide p1, p0, Landroid/telephony/SmsMessage;->mSubId:J

    .line 170
    return-void
.end method

.method public setsinglesmsPhoneType(I)V
    .locals 1
    .param p1, "phonetype"    # I

    .prologue
    .line 1875
    iget-object v0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsMessageBase;->setsinglesmsPhoneType(I)V

    .line 1876
    return-void
.end method
