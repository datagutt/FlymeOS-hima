.class public Lcom/vzw/nfc/dos/FilterEntryDo;
.super Lcom/vzw/nfc/dos/VzwTlv;
.source "FilterEntryDo.java"


# static fields
.field public static final _TAG:I = 0xa1


# instance fields
.field private mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

.field private mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

.field private mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

.field private mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

.field private mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;


# direct methods
.method public constructor <init>(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;Lcom/vzw/nfc/dos/RoutingModeDo;Lcom/vzw/nfc/dos/FilterConditionTagDo;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0xa1

    invoke-direct {p0, v1, v0, v2, v2}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    iput-object p2, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    iput-object p1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    iput-object p4, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    iput-object p3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xa1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/vzw/nfc/dos/VzwTlv;-><init>([BIII)V

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    iput-object v1, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    return-void
.end method


# virtual methods
.method public getAidMaskDo()Lcom/vzw/nfc/dos/AidMaskDo;
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    return-object v0
.end method

.method public getAidRangeDo()Lcom/vzw/nfc/dos/AidRangeDo;
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    return-object v0
.end method

.method public getFilterConditionTagDo()Lcom/vzw/nfc/dos/FilterConditionTagDo;
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    return-object v0
.end method

.method public getRoutingModeDo()Lcom/vzw/nfc/dos/RoutingModeDo;
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    return-object v0
.end method

.method public getVzwArDo()Lcom/vzw/nfc/dos/VzwPermissionDo;
    .locals 1

    iget-object v0, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    return-object v0
.end method

.method public translate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vzw/nfc/dos/DoParserException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterEntryDo;->getRawData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterEntryDo;->getValueIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterEntryDo;->getValueLength()I

    move-result v3

    add-int/2addr v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_0

    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Not enough data for FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {v0, v1}, Lcom/vzw/nfc/dos/VzwTlv;->parse([BI)Lcom/vzw/nfc/dos/VzwTlv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xc3

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/AidMaskDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidMaskDo;->translate()V

    :goto_0
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v4

    add-int v1, v3, v4

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterEntryDo;->getValueIndex()I

    move-result v3

    invoke-virtual {p0}, Lcom/vzw/nfc/dos/FilterEntryDo;->getValueLength()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v3, v1, :cond_0

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidMaskDo:Lcom/vzw/nfc/dos/AidMaskDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidMaskDo;->getAidMask()[B

    move-result-object v3

    array-length v3, v3

    iget-object v4, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v4}, Lcom/vzw/nfc/dos/AidRangeDo;->getAidRange()[B

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_7

    :cond_1
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string/jumbo v4, "missing DO in FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xc2

    if-ne v3, v4, :cond_3

    new-instance v3, Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/AidRangeDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mAidRangeDo:Lcom/vzw/nfc/dos/AidRangeDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/AidRangeDo;->translate()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xb2

    if-ne v3, v4, :cond_4

    new-instance v3, Lcom/vzw/nfc/dos/RoutingModeDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/RoutingModeDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mRoutingModeDo:Lcom/vzw/nfc/dos/RoutingModeDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/RoutingModeDo;->translate()V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xd2

    if-ne v3, v4, :cond_5

    new-instance v3, Lcom/vzw/nfc/dos/FilterConditionTagDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/FilterConditionTagDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mFilterConditionTagDo:Lcom/vzw/nfc/dos/FilterConditionTagDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->translate()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getTag()I

    move-result v3

    const/16 v4, 0xe3

    if-ne v3, v4, :cond_6

    new-instance v3, Lcom/vzw/nfc/dos/VzwPermissionDo;

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/vzw/nfc/dos/VzwTlv;->getValueLength()I

    move-result v5

    invoke-direct {v3, v0, v4, v5}, Lcom/vzw/nfc/dos/VzwPermissionDo;-><init>([BII)V

    iput-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    iget-object v3, p0, Lcom/vzw/nfc/dos/FilterEntryDo;->mVzwArDo:Lcom/vzw/nfc/dos/VzwPermissionDo;

    invoke-virtual {v3}, Lcom/vzw/nfc/dos/VzwPermissionDo;->translate()V

    goto/16 :goto_0

    :cond_6
    new-instance v3, Lcom/vzw/nfc/dos/DoParserException;

    const-string v4, "Invalid DO in FILTER_ENTRY_DO!"

    invoke-direct {v3, v4}, Lcom/vzw/nfc/dos/DoParserException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    return-void
.end method
