.class public final Lcom/vzw/nfc/AidFilter;
.super Ljava/lang/Object;
.source "AidFilter.java"


# static fields
.field private static mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

.field private static mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;


# instance fields
.field public final DEFAULT_ROUTE_LOCATION:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/vzw/nfc/AidFilter;->DEFAULT_ROUTE_LOCATION:I

    return-void
.end method

.method private getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/vzw/nfc/dos/AidMaskDo;->getAidMask()[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-byte v3, v1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    new-array v0, v2, [B

    invoke-virtual {p1}, Lcom/vzw/nfc/dos/AidRangeDo;->getAidRange()[B

    move-result-object v3

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getRoutingModeDo()Lcom/vzw/nfc/dos/RoutingModeDo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vzw/nfc/dos/RoutingModeDo;->getRoutingInfo()B

    move-result v5

    invoke-virtual {p1}, Lcom/vzw/nfc/dos/FilterEntryDo;->getFilterConditionTagDo()Lcom/vzw/nfc/dos/FilterConditionTagDo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vzw/nfc/dos/FilterConditionTagDo;->getFilterConditionTag()B

    move-result v6

    const/16 v7, -0xf

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    const-string v6, "AidFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPowerState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    if-eqz v5, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v3, v6, :cond_3

    :try_start_0
    sget-object v6, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    if-nez v6, :cond_2

    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v6

    sput-object v6, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    :cond_2
    sget-object v6, Lcom/vzw/nfc/AidFilter;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v6}, Lcom/nxp/nfc/INxpNfcAdapter;->getHtcDriverOption()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    and-int/lit8 v6, v5, 0x1

    shl-int/lit8 v6, v6, 0x2

    and-int/lit8 v7, v5, 0x2

    or-int/2addr v6, v7

    and-int/lit8 v7, v5, 0x4

    shr-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    or-int/lit16 v4, v6, 0x80

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "AidFilter"

    const-string v7, "getPowerState - failed to call getHtcDriverOption"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    sput-object v6, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    and-int/lit8 v6, v5, 0x2

    or-int/lit8 v6, v6, 0x4

    and-int/lit8 v7, v5, 0x4

    shr-int/lit8 v7, v7, 0x2

    or-int v4, v6, v7

    goto :goto_0
.end method

.method private static getServiceInterface()Lcom/nxp/nfc/INfcVzw;
    .locals 5

    const/4 v3, 0x0

    sget-object v4, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    if-eqz v4, :cond_1

    sget-object v3, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sput-object v3, Lcom/vzw/nfc/AidFilter;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    const-string/jumbo v4, "nfc"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNxpNfcAdapterInterface()Lcom/nxp/nfc/INxpNfcAdapter;

    move-result-object v3

    sput-object v3, Lcom/vzw/nfc/AidFilter;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    sget-object v3, Lcom/vzw/nfc/AidFilter;->mNxpNfcAdapter:Lcom/nxp/nfc/INxpNfcAdapter;

    invoke-interface {v3}, Lcom/nxp/nfc/INxpNfcAdapter;->getNfcVzwInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v3

    sput-object v3, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v3, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method private prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vzw/nfc/dos/ClfFilterDoList;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/vzw/nfc/dos/ClfFilterDoList;->getClfFilterDos()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vzw/nfc/dos/ClfFilterDo;

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidRangeDo()Lcom/vzw/nfc/dos/AidRangeDo;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getAidMaskDo()Lcom/vzw/nfc/dos/AidMaskDo;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/vzw/nfc/AidFilter;->getAid(Lcom/vzw/nfc/dos/AidRangeDo;Lcom/vzw/nfc/dos/AidMaskDo;)[B

    move-result-object v0

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vzw/nfc/AidFilter;->getPowerState(Lcom/vzw/nfc/dos/FilterEntryDo;)I

    move-result v5

    const-string v6, "AidFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareRouteInfo powerState "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/vzw/nfc/RouteEntry;

    const/4 v6, 0x2

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/ClfFilterDo;->getFilterEntryDo()Lcom/vzw/nfc/dos/FilterEntryDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/FilterEntryDo;->getVzwArDo()Lcom/vzw/nfc/dos/VzwPermissionDo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vzw/nfc/dos/VzwPermissionDo;->isVzwAllowed()Z

    move-result v7

    invoke-direct {v3, v0, v5, v6, v7}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disableFilterCondition(B)Z
    .locals 6

    const/4 v2, 0x1

    const/16 v4, -0xf

    if-ne v4, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/nxp/nfc/INfcVzw;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v4, "AidFilter"

    const-string v5, "disableFilterCondition - failed to call setScreenOffCondition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-object v4, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1
.end method

.method public enableFilterCondition(B)Z
    .locals 6

    const/4 v2, 0x1

    const/16 v4, -0xf

    if-ne v4, p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x3

    if-gt v1, v4, :cond_0

    :try_start_0
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/nxp/nfc/INfcVzw;->setScreenOffCondition(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v4, "AidFilter"

    const-string v5, "enableFilterCondition - failed to call setScreenOffCondition"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sput-object v4, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1
.end method

.method public setFilterList([B)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/vzw/nfc/dos/ClfFilterDoList;

    array-length v6, p1

    invoke-direct {v0, p1, v5, v6}, Lcom/vzw/nfc/dos/ClfFilterDoList;-><init>([BII)V

    :try_start_0
    invoke-virtual {v0}, Lcom/vzw/nfc/dos/ClfFilterDoList;->translate()V
    :try_end_0
    .catch Lcom/vzw/nfc/dos/DoParserException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v2}, Lcom/vzw/nfc/AidFilter;->prepareRouteInfo(Lcom/vzw/nfc/dos/ClfFilterDoList;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x3

    if-gt v3, v5, :cond_0

    :try_start_1
    invoke-static {}, Lcom/vzw/nfc/AidFilter;->getServiceInterface()Lcom/nxp/nfc/INfcVzw;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/vzw/nfc/RouteEntry;

    invoke-interface {v6, v5}, Lcom/nxp/nfc/INfcVzw;->setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    move v5, v4

    :goto_1
    return v5

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/vzw/nfc/dos/DoParserException;->printStackTrace()V

    const-string v6, "AidFilter"

    const-string/jumbo v7, "setFilterList - failed to translate"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "AidFilter"

    const-string/jumbo v6, "setFilterList - failed to call setVzwAidList"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    sput-object v5, Lcom/vzw/nfc/AidFilter;->mVzwNfcAdapter:Lcom/nxp/nfc/INfcVzw;

    const/4 v4, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1
.end method
