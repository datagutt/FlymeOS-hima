.class public Lcom/android/internal/telephony/MobileNetwork$Menu;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menu"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$Menu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 647
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Menu$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$Menu$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    if-eqz p1, :cond_0

    .line 575
    instance-of v4, p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 576
    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Menu;

    iget-object v4, v4, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 577
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Menu;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v4, p1, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 579
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Landroid/os/Parcel;

    if-eqz v4, :cond_2

    move-object v4, p1

    .line 580
    check-cast v4, Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 581
    check-cast p1, Landroid/os/Parcel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    goto :goto_0

    .line 584
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 585
    .local v1, "matchAllFields":Z
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 586
    const/4 v1, 0x1

    move-object v4, p1

    .line 587
    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 588
    .local v3, "v":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 589
    .local v0, "index":I
    if-eqz v1, :cond_4

    array-length v4, v3

    if-le v4, v0, :cond_4

    .line 590
    aget-object v4, v3, v0

    if-eqz v4, :cond_3

    .line 591
    aget-object v4, v3, v0

    instance-of v1, v4, Ljava/lang/String;

    .line 592
    if-eqz v1, :cond_3

    .line 593
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    .line 596
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 598
    :cond_4
    if-eqz v1, :cond_6

    array-length v4, v3

    if-le v4, v0, :cond_6

    .line 599
    aget-object v4, v3, v0

    if-eqz v4, :cond_5

    .line 600
    aget-object v4, v3, v0

    instance-of v1, v4, Ljava/lang/String;

    .line 601
    if-eqz v1, :cond_5

    .line 602
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    .line 605
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 608
    .end local v0    # "index":I
    .end local v3    # "v":[Ljava/lang/Object;
    :cond_6
    if-nez v1, :cond_0

    .line 609
    const/4 v2, 0x0

    .line 611
    .local v2, "matchAnyField":Z
    :try_start_0
    const-string v4, "title"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 612
    const/4 v2, 0x1

    .line 615
    :goto_1
    :try_start_1
    const-string v4, "summary"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 616
    const/4 v2, 0x1

    .line 618
    :goto_2
    if-nez v2, :cond_0

    .line 619
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 617
    :catch_0
    move-exception v4

    goto :goto_2

    .line 613
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/MobileNetwork$Menu;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Menu;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Menu;->logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/MobileNetwork$Menu;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Menu;

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$Menu;->convertToObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private convertToObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 677
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 678
    .local v0, "v":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 679
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 680
    return-object v0
.end method

.method private logToStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    .local v0, "sbMenu":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 693
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 698
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 699
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    :cond_1
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 705
    :cond_2
    if-eqz p1, :cond_3

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$Menu;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    :cond_0
    return-void
.end method
