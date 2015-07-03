.class public Landroid/telephony/HtcCmasMessage;
.super Ljava/lang/Object;
.source "HtcCmasMessage.java"


# static fields
.field public static final CERTAINTY_LIKELY:I = 0x1

.field public static final CERTAINTY_OBSERVED:I = 0x0

.field public static final FORMAT_CDMA:I = 0x2

.field public static final FORMAT_GSM:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SMS"

.field public static final SEVERITY_EXTREME:I = 0x0

.field public static final SEVERITY_SEVERE:I = 0x1

.field public static final URGENCY_EXPECTED:I = 0x1

.field public static final URGENCY_IMMEDIATE:I


# instance fields
.field protected alertHandling:I

.field protected alertText:[B

.field protected alertTextStr:Ljava/lang/String;

.field protected category:I

.field protected certainty:I

.field protected charSetEncoding:I

.field protected charSetEncodingSet:Z

.field protected cmasFormat:I

.field protected cmasId:I

.field protected cmasType:I

.field protected expiredMillis:J

.field protected gs:I

.field protected language:I

.field protected mPdu:[B

.field protected messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field protected msgId:I

.field protected pageCount:I

.field protected pageSeg:I

.field protected protocolVersion:I

.field protected responseType:I

.field protected severity:I

.field protected sn:I

.field protected urgency:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 84
    iput-boolean v1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 92
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 94
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 96
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 98
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 100
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 104
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 106
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 108
    iput v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 124
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 143
    iput v1, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return-void
.end method

.method public static getCmaeCategory(II)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # I
    .param p1, "cateId"    # I

    .prologue
    .line 290
    packed-switch p0, :pswitch_data_0

    .line 295
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 292
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeCategory(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeCertainty(I)Ljava/lang/String;
    .locals 2
    .param p0, "cerId"    # I

    .prologue
    .line 348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 349
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 355
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 351
    :pswitch_0
    const v1, 0x3070152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 353
    :pswitch_1
    const v1, 0x3070153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeResponseType(II)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # I
    .param p1, "respId"    # I

    .prologue
    .line 305
    packed-switch p0, :pswitch_data_0

    .line 310
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCmaeResponseType(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static getCmaeSeverity(I)Ljava/lang/String;
    .locals 2
    .param p0, "sevId"    # I

    .prologue
    .line 318
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 319
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 325
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 321
    :pswitch_0
    const v1, 0x307014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 323
    :pswitch_1
    const v1, 0x307014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmaeUrgency(I)Ljava/lang/String;
    .locals 2
    .param p0, "urgId"    # I

    .prologue
    .line 333
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 334
    .local v0, "r":Landroid/content/res/Resources;
    packed-switch p0, :pswitch_data_0

    .line 340
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 336
    :pswitch_0
    const v1, 0x3070150

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 338
    :pswitch_1
    const v1, 0x3070151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCmasMessage(I[B)Landroid/telephony/HtcCmasMessage;
    .locals 1
    .param p0, "format"    # I
    .param p1, "pdu"    # [B

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCmasMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;-><init>()V

    .line 165
    .local v0, "gsmCmas":Lcom/android/internal/telephony/gsm/GsmCmasMessage;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCmasMessage;->parseGsmPdu([B)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getGsmAllCmasChannelCount()I
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x3

    .line 253
    .local v0, "count":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCmasExerciseAlert()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    const/4 v0, 0x4

    .line 260
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCmasSecondaryLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    mul-int/lit8 v0, v0, 0x2

    .line 264
    :cond_0
    return v0

    .line 256
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getGsmAllCmasChannelListStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCmasExerciseAlert()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380,4381,4383,4384,4385,4386,4387,4388,4389,4390,4391,4392,4393,4394"

    .line 240
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "4370,4371,4372,4373,4374,4375,4376,4377,4378,4379,4380,4383,4384,4385,4386,4387,4388,4389,4390,4391,4392,4393"

    goto :goto_0
.end method

.method public static getGsmCmasChannelList(I)[I
    .locals 4
    .param p0, "c_type"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 173
    packed-switch p0, :pswitch_data_0

    .line 199
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 175
    :pswitch_1
    new-array v0, v0, [I

    const/16 v1, 0x1112

    aput v1, v0, v2

    goto :goto_0

    .line 177
    :pswitch_2
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 179
    :pswitch_3
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    goto :goto_0

    .line 181
    :pswitch_4
    new-array v0, v0, [I

    const/16 v1, 0x111b

    aput v1, v0, v2

    goto :goto_0

    .line 183
    :pswitch_5
    new-array v0, v0, [I

    const/16 v1, 0x111c

    aput v1, v0, v2

    goto :goto_0

    .line 185
    :pswitch_6
    new-array v0, v0, [I

    const/16 v1, 0x111d

    aput v1, v0, v2

    goto :goto_0

    .line 187
    :pswitch_7
    new-array v0, v0, [I

    const/16 v1, 0x111f

    aput v1, v0, v2

    goto :goto_0

    .line 189
    :pswitch_8
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    goto :goto_0

    .line 191
    :pswitch_9
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    goto :goto_0

    .line 193
    :pswitch_a
    new-array v0, v0, [I

    const/16 v1, 0x1128

    aput v1, v0, v2

    goto :goto_0

    .line 195
    :pswitch_b
    new-array v0, v0, [I

    const/16 v1, 0x1129

    aput v1, v0, v2

    goto :goto_0

    .line 197
    :pswitch_c
    new-array v0, v0, [I

    const/16 v1, 0x112a

    aput v1, v0, v2

    goto :goto_0

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 177
    :array_0
    .array-data 4
        0x1113
        0x1114
    .end array-data

    .line 179
    :array_1
    .array-data 4
        0x1115
        0x1116
        0x1117
        0x1118
        0x1119
        0x111a
    .end array-data

    .line 189
    :array_2
    .array-data 4
        0x1120
        0x1121
    .end array-data

    .line 191
    :array_3
    .array-data 4
        0x1122
        0x1123
        0x1124
        0x1125
        0x1126
        0x1127
    .end array-data
.end method

.method public static getGsmCmasChannelListStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "c_type"    # I

    .prologue
    .line 203
    packed-switch p0, :pswitch_data_0

    .line 231
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 205
    :pswitch_1
    const-string v0, "4370"

    goto :goto_0

    .line 208
    :pswitch_2
    const-string v0, "4371-4372"

    goto :goto_0

    .line 210
    :pswitch_3
    const-string v0, "4373-4378"

    goto :goto_0

    .line 213
    :pswitch_4
    const-string v0, "4379"

    goto :goto_0

    .line 215
    :pswitch_5
    const-string v0, "4380"

    goto :goto_0

    .line 217
    :pswitch_6
    const-string v0, "4381"

    goto :goto_0

    .line 219
    :pswitch_7
    const-string v0, "4383"

    goto :goto_0

    .line 221
    :pswitch_8
    const-string v0, "4384-4385"

    goto :goto_0

    .line 223
    :pswitch_9
    const-string v0, "4386-4391"

    goto :goto_0

    .line 225
    :pswitch_a
    const-string v0, "4392"

    goto :goto_0

    .line 227
    :pswitch_b
    const-string v0, "4393"

    goto :goto_0

    .line 229
    :pswitch_c
    const-string v0, "4394"

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static isGsmCmas(I)Z
    .locals 9
    .param p0, "msgId"    # I

    .prologue
    .line 269
    invoke-static {}, Landroid/telephony/HtcCmasMessage;->getGsmAllCmasChannelListStr()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "cmasListStr":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "cmasList":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "targetCmasId":Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 273
    .local v1, "cmasId":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 274
    const/4 v7, 0x1

    .line 278
    .end local v1    # "cmasId":Ljava/lang/String;
    :goto_1
    return v7

    .line 272
    .restart local v1    # "cmasId":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "cmasId":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getAlertHandling()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    return v0
.end method

.method public getAlertText()[B
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    return-object v0
.end method

.method public getAlertTextStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->category:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    return v0
.end method

.method public getCharSetEncoding()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    return v0
.end method

.method public getCmasFormat()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    return v0
.end method

.method public getCmasId()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    return v0
.end method

.method public getCmasType()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->cmasType:I

    return v0
.end method

.method public getExpiredMillis()J
    .locals 2

    .prologue
    .line 579
    iget-wide v0, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    return-wide v0
.end method

.method public getGs()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    return v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    return v0
.end method

.method public getPageSeg()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    return v0
.end method

.method public getResponseType()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    return v0
.end method

.method public getSn()I
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    return v0
.end method

.method public isCharSetEncodingSet()Z
    .locals 1

    .prologue
    .line 411
    iget-boolean v0, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    return v0
.end method

.method public parseGsmPdu([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 157
    return-void
.end method

.method public setAlertHandling(I)V
    .locals 0
    .param p1, "alertHandling"    # I

    .prologue
    .line 556
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->alertHandling:I

    .line 557
    return-void
.end method

.method public setAlertText([B)V
    .locals 0
    .param p1, "alertText"    # [B

    .prologue
    .line 435
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertText:[B

    .line 436
    return-void
.end method

.method public setAlertTextStr(Ljava/lang/String;)V
    .locals 0
    .param p1, "alertTextStr"    # Ljava/lang/String;

    .prologue
    .line 449
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->alertTextStr:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setCategory(I)V
    .locals 0
    .param p1, "category"    # I

    .prologue
    .line 464
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->category:I

    .line 465
    return-void
.end method

.method public setCertainty(I)V
    .locals 0
    .param p1, "certainty"    # I

    .prologue
    .line 524
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->certainty:I

    .line 525
    return-void
.end method

.method public setCharSetEncoding(I)V
    .locals 0
    .param p1, "charSetEncoding"    # I

    .prologue
    .line 403
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncoding:I

    .line 404
    return-void
.end method

.method public setCharSetEncodingSet(Z)V
    .locals 0
    .param p1, "charSetEncodingSet"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/telephony/HtcCmasMessage;->charSetEncodingSet:Z

    .line 420
    return-void
.end method

.method public setCmasFormat(I)V
    .locals 0
    .param p1, "cmasFormat"    # I

    .prologue
    .line 371
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasFormat:I

    .line 372
    return-void
.end method

.method public setCmasId(I)V
    .locals 0
    .param p1, "cmasId"    # I

    .prologue
    .line 540
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->cmasId:I

    .line 541
    return-void
.end method

.method public setExpiredMillis(J)V
    .locals 1
    .param p1, "expiredMillis"    # J

    .prologue
    .line 587
    iput-wide p1, p0, Landroid/telephony/HtcCmasMessage;->expiredMillis:J

    .line 588
    return-void
.end method

.method public setGs(I)V
    .locals 0
    .param p1, "gs"    # I

    .prologue
    .line 619
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->gs:I

    .line 620
    return-void
.end method

.method public setLanguage(I)V
    .locals 0
    .param p1, "language"    # I

    .prologue
    .line 572
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->language:I

    .line 573
    return-void
.end method

.method public setMessageClass(Landroid/telephony/SmsMessage$MessageClass;)V
    .locals 0
    .param p1, "messageClass"    # Landroid/telephony/SmsMessage$MessageClass;

    .prologue
    .line 650
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    .line 651
    return-void
.end method

.method public setMsgId(I)V
    .locals 0
    .param p1, "msgId"    # I

    .prologue
    .line 634
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->msgId:I

    .line 635
    return-void
.end method

.method public setPageCount(I)V
    .locals 0
    .param p1, "pageCount"    # I

    .prologue
    .line 682
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageCount:I

    .line 683
    return-void
.end method

.method public setPageSeg(I)V
    .locals 0
    .param p1, "pageSeg"    # I

    .prologue
    .line 666
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->pageSeg:I

    .line 667
    return-void
.end method

.method public setProtocolVersion(I)V
    .locals 0
    .param p1, "protocolVersion"    # I

    .prologue
    .line 387
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->protocolVersion:I

    .line 388
    return-void
.end method

.method public setResponseType(I)V
    .locals 0
    .param p1, "responseType"    # I

    .prologue
    .line 479
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->responseType:I

    .line 480
    return-void
.end method

.method public setSeverity(I)V
    .locals 0
    .param p1, "severity"    # I

    .prologue
    .line 494
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->severity:I

    .line 495
    return-void
.end method

.method public setSn(I)V
    .locals 0
    .param p1, "sn"    # I

    .prologue
    .line 603
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->sn:I

    .line 604
    return-void
.end method

.method public setUrgency(I)V
    .locals 0
    .param p1, "urgency"    # I

    .prologue
    .line 509
    iput p1, p0, Landroid/telephony/HtcCmasMessage;->urgency:I

    .line 510
    return-void
.end method

.method public setmPdu([B)V
    .locals 0
    .param p1, "mPdu"    # [B

    .prologue
    .line 697
    iput-object p1, p0, Landroid/telephony/HtcCmasMessage;->mPdu:[B

    .line 698
    return-void
.end method
