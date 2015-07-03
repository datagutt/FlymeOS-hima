.class Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;
.super Ljava/lang/Object;
.source "HtcCdmaCountry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SIDEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;",
        ">;"
    }
.end annotation


# instance fields
.field countryIso:Ljava/lang/String;

.field dstGmtOffeset:Ljava/lang/Integer;

.field gmtOffeset:Ljava/lang/Integer;

.field mccBegin:Ljava/lang/Integer;

.field mccEnd:Ljava/lang/Integer;

.field sidBegin:Ljava/lang/Integer;

.field sidEnd:Ljava/lang/Integer;


# direct methods
.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 8
    .param p1, "sidBegin"    # I
    .param p2, "sidEnd"    # Ljava/lang/Integer;
    .param p3, "iso"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 443
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 444
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "sidBegin"    # I
    .param p2, "sidEnd"    # Ljava/lang/Integer;
    .param p3, "iso"    # Ljava/lang/String;
    .param p4, "mccBegin"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    .line 447
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 448
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "sidBegin"    # I
    .param p2, "sidEnd"    # Ljava/lang/Integer;
    .param p3, "iso"    # Ljava/lang/String;
    .param p4, "mccBegin"    # Ljava/lang/Integer;
    .param p5, "mccEnd"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    .line 451
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 452
    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sidBegin"    # I
    .param p2, "sidEnd"    # Ljava/lang/Integer;
    .param p3, "iso"    # Ljava/lang/String;
    .param p4, "mccBegin"    # Ljava/lang/Integer;
    .param p5, "mccEnd"    # Ljava/lang/Integer;
    .param p6, "gmtOffeset"    # Ljava/lang/Integer;
    .param p7, "dstGmtOffeset"    # Ljava/lang/Integer;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 457
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 432
    check-cast p1, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->compareTo(Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;)I

    move-result v0

    return v0
.end method

.method getSidBegin()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getSidEnd()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method init(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "sidBegin"    # I
    .param p2, "sidEnd"    # Ljava/lang/Integer;
    .param p3, "iso"    # Ljava/lang/String;
    .param p4, "mccBegin"    # Ljava/lang/Integer;
    .param p5, "mccEnd"    # Ljava/lang/Integer;
    .param p6, "gmtOffeset"    # Ljava/lang/Integer;
    .param p7, "dstGmtOffeset"    # Ljava/lang/Integer;

    .prologue
    .line 461
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidBegin:Ljava/lang/Integer;

    .line 462
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->sidEnd:Ljava/lang/Integer;

    .line 463
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->countryIso:Ljava/lang/String;

    .line 464
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccBegin:Ljava/lang/Integer;

    .line 465
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->mccEnd:Ljava/lang/Integer;

    .line 466
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->gmtOffeset:Ljava/lang/Integer;

    .line 467
    iput-object p7, p0, Lcom/android/internal/telephony/cdma/HtcCdmaCountry$SIDEntry;->dstGmtOffeset:Ljava/lang/Integer;

    .line 468
    return-void
.end method
