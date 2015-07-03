.class public Lcom/vzw/nfc/dos/VzwTlv;
.super Ljava/lang/Object;
.source "VzwTlv.java"


# instance fields
.field private mRawData:[B

.field private mTag:I

.field private mValueIndex:I

.field private mValueLength:I


# direct methods
.method public constructor <init>([BIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iput v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    iput-object p1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    iput p2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    iput p3, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iput p4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    return-void
.end method

.method public static encodeLength(ILjava/io/ByteArrayOutputStream;)V
    .locals 1

    and-int/lit16 v0, p0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static parse([BI)Lcom/vzw/nfc/dos/VzwTlv;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string v5, "No data given!"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v0, p1

    const/4 v3, 0x0

    array-length v4, p0

    if-ge v0, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-byte v4, p0, v0

    and-int/lit16 v3, v4, 0xff

    array-length v4, p0

    if-ge v1, v4, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p0, v1

    and-int/lit16 v2, v4, 0xff

    new-instance v4, Lcom/vzw/nfc/dos/VzwTlv;

    invoke-direct {v4, p0, v3, v0, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    return-object v4

    :cond_2
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    const-string v5, "Index out of bound"

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    new-instance v4, Lcom/vzw/nfc/dos/DoParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range! [0..["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v4, p1, Lcom/vzw/nfc/dos/VzwTlv;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vzw/nfc/dos/VzwTlv;

    iget v4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    iget v5, v0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/vzw/nfc/dos/VzwTlv;->getValue()[B

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    and-int/2addr v1, v4

    :cond_0
    :goto_1
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    if-nez v3, :cond_0

    and-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getRawData()[B
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    return-object v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mTag:I

    return v0
.end method

.method public getValue()[B
    .locals 5

    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    new-array v0, v1, [B

    iget-object v1, p0, Lcom/vzw/nfc/dos/VzwTlv;->mRawData:[B

    iget v2, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public getValueIndex()I
    .locals 1

    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueIndex:I

    return v0
.end method

.method public getValueLength()I
    .locals 1

    iget v0, p0, Lcom/vzw/nfc/dos/VzwTlv;->mValueLength:I

    return v0
.end method

.method public translate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    return-void
.end method
