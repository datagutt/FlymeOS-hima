.class public Lcom/vzw/nfc/dos/AidMaskDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "AidMaskDo.java"


# static fields
.field public static final _TAG:I = 0xc3


# instance fields
.field private mAidMask:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xc3

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    iput-object v2, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    iput-object p1, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/16 v0, 0xc3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    return-void
.end method


# virtual methods
.method public getAidMask()[B
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    return-object v0
.end method

.method public translate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidMaskDo;->getRawData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidMaskDo;->getValueIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidMaskDo;->getValueLength()I

    move-result v2

    add-int/2addr v2, v1

    array-length v3, v0

    if-le v2, v3, :cond_0

    new-instance v2, Lcom/vzw/nfc/dos/DoParserException;

    const-string v3, "Not enough data for AID-MASK-DO!"

    invoke-direct {v2, v3}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidMaskDo;->getValueLength()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    iget-object v2, p0, Lcom/vzw/nfc/dos/AidMaskDo;->mAidMask:[B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/AidMaskDo;->getValueLength()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void
.end method
