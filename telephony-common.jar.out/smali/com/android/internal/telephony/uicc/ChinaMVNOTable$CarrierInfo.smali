.class public Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;
.super Ljava/lang/Object;
.source "ChinaMVNOTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/ChinaMVNOTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarrierInfo"
.end annotation


# instance fields
.field private mMccMncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOperator:Ljava/lang/String;

.field private mSpnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mMccMncList:Ljava/util/ArrayList;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mSpnList:Ljava/util/ArrayList;

    .line 367
    return-void
.end method


# virtual methods
.method public getMccMncList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mMccMncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSPNList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mSpnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setMccMncList([Ljava/lang/String;)V
    .locals 3
    .param p1, "mccmnclist"    # [Ljava/lang/String;

    .prologue
    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 337
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "mccmnc_trim":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mMccMncList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    .end local v1    # "mccmnc_trim":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    :cond_1
    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mOperator:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public setSPNList([Ljava/lang/String;)V
    .locals 3
    .param p1, "spnlist"    # [Ljava/lang/String;

    .prologue
    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 348
    aget-object v2, p1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "spn_trim":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/ChinaMVNOTable$CarrierInfo;->mSpnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    .end local v1    # "spn_trim":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    return-void
.end method
