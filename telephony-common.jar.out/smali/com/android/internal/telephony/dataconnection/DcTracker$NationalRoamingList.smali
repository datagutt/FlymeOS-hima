.class public Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;
.super Ljava/util/HashMap;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NationalRoamingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 14
    .param p1, "str"    # [Ljava/lang/String;

    .prologue
    .line 7555
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 7566
    if-eqz p1, :cond_1

    array-length v10, p1

    if-lez v10, :cond_1

    .line 7568
    :try_start_0
    const-string v10, "DCT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "national_roaming_mccmnc="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7570
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p1

    if-ge v3, v10, :cond_1

    .line 7571
    aget-object v9, p1, v3

    .line 7572
    .local v9, "subStr":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "format error: arr="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7592
    .end local v3    # "i":I
    .end local v9    # "subStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 7594
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "DCT"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NationalRoamingHashMap: parse fail, str="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7596
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7599
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 7575
    .restart local v3    # "i":I
    .restart local v9    # "subStr":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7576
    .local v0, "aSubStr":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x2

    if-le v10, v11, :cond_3

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "format error: item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 7577
    :cond_3
    const/4 v6, 0x0

    .local v6, "netMccMncList":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v0, v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 7578
    .local v8, "simMccMncList":[Ljava/lang/String;
    array-length v10, v0

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    .line 7579
    const/4 v10, 0x1

    aget-object v10, v0, v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 7582
    :cond_4
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_7

    aget-object v7, v1, v4

    .line 7583
    .local v7, "simMccMnc":Ljava/lang/String;
    if-eqz v7, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 7584
    if-nez v6, :cond_6

    .line 7585
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v7, v10}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7582
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7587
    :cond_6
    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 7570
    .end local v7    # "simMccMnc":Ljava/lang/String;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public prefixContains(Ljava/lang/String;)Z
    .locals 6
    .param p1, "mccmncFromIMSI"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 7614
    const/4 v1, 0x0

    .line 7616
    .local v1, "ret":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    .line 7619
    :cond_0
    const-string v3, "DCT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prefixContains: imsi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7633
    :goto_0
    return v2

    .line 7623
    :cond_1
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 7624
    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_1
    move v2, v1

    .line 7633
    goto :goto_0

    .line 7626
    :catch_0
    move-exception v0

    .line 7629
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DCT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prefixContains: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public prefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "mccmncFromIMSI"    # Ljava/lang/String;
    .param p2, "mccmncFromNet"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    .line 7637
    const/4 v5, 0x0

    .line 7639
    .local v5, "ret":Z
    const/4 v1, 0x0

    .line 7641
    .local v1, "custNetList":[Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_2

    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7663
    :catch_0
    move-exception v2

    .line 7666
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "DCT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prefixMatch: e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7668
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 7670
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v5

    .line 7642
    :cond_2
    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v7, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7644
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 7645
    .local v3, "mccFromIMSI":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7648
    .local v4, "mccFromNet":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7649
    const/4 v5, 0x1

    goto :goto_0

    .line 7652
    :cond_5
    invoke-super {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7653
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 7659
    :cond_6
    :goto_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7660
    :cond_7
    const/4 v5, 0x1

    goto :goto_0

    .line 7654
    :cond_8
    invoke-super {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7655
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 7603
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7604
    .local v2, "ret":Ljava/util/ArrayList;
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$NationalRoamingList;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7605
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7606
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7607
    .local v0, "entry":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7609
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
