.class public Lcom/android/internal/telephony/AnrRecord;
.super Ljava/lang/Object;
.source "AnrRecord.java"


# static fields
.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_ANR_NUMBER_LENGTH:I = 0xa

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final SDBG:Z


# instance fields
.field public mAdnRecordNumber:I

.field public mAdnSFI:I

.field public mAnrId:I

.field public mClearExt1Record:Z

.field public mExtRecord:I

.field public mNumber:Ljava/lang/String;

.field public mRecordNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 78
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "adnSFI"    # I
    .param p2, "recordNumber"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 105
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 107
    iput-object p3, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 91
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/AnrRecord;->parseRecord([B)V

    .line 92
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "isIAP"    # Z

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 97
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/AnrRecord;->parseRecord(I[BZ)V

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "record"    # [B

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/AnrRecord;-><init>(I[B)V

    .line 85
    return-void
.end method

.method private parseRecord(I[BZ)V
    .locals 5
    .param p1, "recordNumber"    # I
    .param p2, "record"    # [B
    .param p3, "AnrPresentInIAP"    # Z

    .prologue
    .line 440
    const-string v2, "GSM"

    const-string v3, "parseRecord()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "offset":I
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 447
    const/4 v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v0, v2, 0xff

    .line 450
    .local v0, "numberLength":I
    const/4 v2, 0x2

    invoke-static {p2, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 453
    const/16 v2, 0xe

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 455
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mExtRecord = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    if-eqz p3, :cond_1

    .line 459
    array-length v2, p2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 461
    const/16 v2, 0xf

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 463
    const/16 v2, 0x10

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    iput p1, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 3
    .param p1, "record"    # [B

    .prologue
    .line 485
    const/4 v1, 0x0

    .line 486
    .local v1, "offset":I
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 489
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 492
    .local v0, "numberLength":I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 495
    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 498
    const/16 v2, 0xf

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 501
    const/16 v2, 0x10

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 511
    return-void
.end method


# virtual methods
.method public appendExtNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public appendExtRecord([B)V
    .locals 4
    .param p1, "extRecord"    # [B

    .prologue
    const/4 v3, 0x2

    .line 126
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 136
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAnrString(Ljava/util/ArrayList;I)[B
    .locals 12
    .param p2, "recordSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;I)[B"
        }
    .end annotation

    .prologue
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v10, 0xff

    const/4 v9, 0x1

    .line 178
    new-array v5, p2, [B

    .line 181
    .local v5, "recordString":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 182
    const/4 v6, -0x1

    aput-byte v6, v5, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v6, :cond_b

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-ge v6, v10, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 189
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v11

    .line 191
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v4, 0x15

    .line 195
    .local v4, "maxAnrNumberLength":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v4, :cond_6

    .line 197
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 199
    .local v0, "bcdNumber":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 201
    if-eqz p1, :cond_1

    .line 202
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 203
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 204
    iput-boolean v9, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 247
    :cond_1
    :goto_2
    array-length v6, v0

    int-to-byte v6, v6

    aput-byte v6, v5, v9

    .line 250
    const/4 v6, 0x2

    array-length v7, v0

    invoke-static {v0, v11, v5, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 252
    iget-boolean v6, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    if-eq v6, v9, :cond_2

    .line 254
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-ge v6, v10, :cond_2

    .line 256
    const/16 v6, 0xe

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 262
    :cond_2
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-ge v6, v10, :cond_3

    .line 264
    const/16 v6, 0xf

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 268
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-ge v6, v10, :cond_4

    .line 270
    const/16 v6, 0x10

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 288
    .end local v0    # "bcdNumber":[B
    .end local v4    # "maxAnrNumberLength":I
    .end local v5    # "recordString":[B
    :cond_4
    :goto_3
    return-object v5

    .line 191
    .restart local v5    # "recordString":[B
    :cond_5
    const/16 v4, 0x14

    goto :goto_1

    .line 211
    .restart local v4    # "maxAnrNumberLength":I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 214
    .restart local v0    # "bcdNumber":[B
    if-eqz p1, :cond_a

    .line 215
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "ext1SubString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 217
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 219
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 220
    .local v1, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto :goto_2

    .line 225
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 227
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 228
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 229
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 230
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 231
    iget v6, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 237
    :cond_8
    if-nez v1, :cond_1

    move-object v5, v7

    .line 238
    goto :goto_3

    .line 227
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v2    # "ext1SubString":Ljava/lang/String;
    :cond_a
    move-object v5, v7

    .line 242
    goto :goto_3

    .line 277
    .end local v0    # "bcdNumber":[B
    .end local v4    # "maxAnrNumberLength":I
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 279
    if-eqz p1, :cond_4

    .line 280
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 281
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 282
    iput-boolean v9, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public buildAnrString(Ljava/util/ArrayList;IZ)[B
    .locals 9
    .param p2, "recordSize"    # I
    .param p3, "AnrPresentInIAP"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/HtcExt1Record;",
            ">;IZ)[B"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "ext1List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/HtcExt1Record;>;"
    const-string v6, "GSM"

    const-string v7, "buildAnrString()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-array v5, p2, [B

    .line 303
    .local v5, "recordString":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 304
    const/4 v6, -0x1

    aput-byte v6, v5, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_0
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    if-lez v6, :cond_b

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    .line 310
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 312
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const-string v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v4, 0x15

    .line 316
    .local v4, "maxAnrNumberLength":I
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v4, :cond_6

    .line 318
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 320
    .local v0, "bcdNumber":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 322
    if-eqz p1, :cond_1

    .line 323
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExtRecord_1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 325
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 326
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 372
    :cond_1
    :goto_2
    const/4 v6, 0x1

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 375
    const/4 v6, 0x0

    const/4 v7, 0x2

    array-length v8, v0

    invoke-static {v0, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 376
    iget-boolean v6, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    .line 378
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_2

    .line 380
    const/16 v6, 0xe

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 381
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "recordString[14] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xe

    aget-byte v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2
    const/4 v6, 0x1

    if-ne p3, v6, :cond_4

    const/16 v6, 0x11

    if-lt p2, v6, :cond_4

    .line 388
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_3

    .line 390
    const/16 v6, 0xf

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 394
    :cond_3
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    const/16 v7, 0xff

    if-ge v6, v7, :cond_4

    .line 396
    const/16 v6, 0x10

    iget v7, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 417
    .end local v0    # "bcdNumber":[B
    .end local v4    # "maxAnrNumberLength":I
    .end local v5    # "recordString":[B
    :cond_4
    :goto_3
    return-object v5

    .line 312
    .restart local v5    # "recordString":[B
    :cond_5
    const/16 v4, 0x14

    goto/16 :goto_1

    .line 333
    .restart local v4    # "maxAnrNumberLength":I
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    .restart local v0    # "bcdNumber":[B
    if-eqz p1, :cond_a

    .line 337
    iget-object v6, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "ext1SubString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 339
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExtRecord_2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 342
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 343
    .local v1, "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 348
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    :cond_7
    const/4 v1, 0x0

    .line 350
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 351
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 352
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    check-cast v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    .line 353
    .restart local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->buildExt1Record(Ljava/lang/String;)V

    .line 354
    iget v6, v1, Lcom/android/internal/telephony/uicc/HtcExt1Record;->mRecId:I

    iput v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 361
    :cond_8
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExtRecord_3 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez v1, :cond_1

    .line 363
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 350
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 367
    .end local v1    # "ext1Record":Lcom/android/internal/telephony/uicc/HtcExt1Record;
    .end local v2    # "ext1SubString":Ljava/lang/String;
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 404
    .end local v0    # "bcdNumber":[B
    .end local v4    # "maxAnrNumberLength":I
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/AnrRecord;->hasExtendedRecord()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 406
    if-eqz p1, :cond_4

    .line 407
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-lez v6, :cond_4

    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v6, v7, :cond_4

    .line 408
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExtRecord_4 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget v6, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/HtcExt1Record;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/HtcExt1Record;->clear()V

    .line 411
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    goto/16 :goto_3
.end method

.method public clear()V
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 166
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 167
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 168
    iput v0, p0, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 116
    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
