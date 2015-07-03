.class public Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
.super Ljava/lang/Object;
.source "HtcCdmaNitz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/HtcCdmaNitz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "histNitz"
.end annotation


# instance fields
.field public modemTime:J

.field public nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field public nitz:Ljava/lang/String;

.field public previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

.field public receivedDate:Ljava/util/Date;

.field public receivedTime:J

.field public setupSysMsec:J

.field public setupTime:J

.field public setupType:Ljava/lang/Integer;

.field public setupZone:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJLjava/util/Date;)V
    .locals 0
    .param p1, "nitz"    # Ljava/lang/String;
    .param p2, "modemTime"    # J
    .param p4, "receivedTime"    # J
    .param p6, "receivedDate"    # Ljava/util/Date;

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nitz:Ljava/lang/String;

    .line 577
    iput-wide p2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->modemTime:J

    .line 578
    iput-wide p4, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedTime:J

    .line 579
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedDate:Ljava/util/Date;

    .line 580
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;
    .param p1, "x1"    # Z

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->toLog(Z)V

    return-void
.end method

.method private toLog(Z)V
    .locals 5
    .param p1, "longFormat"    # Z

    .prologue
    const/4 v4, 0x0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v0, "strBuf":Ljava/lang/StringBuilder;
    const-string v1, "NITZ-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v1

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedDate:Ljava/util/Date;

    # invokes: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->logShortDate(Ljava/util/Date;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$100(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 602
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->receivedTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->modemTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SQUARE_BRACKET:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$000()[C

    move-result-object v1

    const/4 v2, 0x1

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 607
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nitz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 610
    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    # getter for: Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->CHAR_SLASH:[C
    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaNitz;->access$200()[C

    move-result-object v1

    aget-char v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 615
    iget-wide v2, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->setupSysMsec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_0
    if-eqz p1, :cond_1

    .line 618
    const-string v1, " during "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->previousBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HtcCdmaNitz$histNitz;->nextBaseStation:Lcom/android/internal/telephony/cdma/HtcCdmaNitz$infoBaseStation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 623
    :cond_1
    const-string v1, "CDMA"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-void
.end method
