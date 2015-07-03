.class public Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
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
    name = "DataRoamingSetting"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public area:Lcom/android/internal/telephony/MobileNetwork$Setting;

.field public generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

.field public national:Lcom/android/internal/telephony/MobileNetwork$Setting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 987
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    if-eqz p1, :cond_2

    .line 879
    instance-of v7, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    if-eqz v7, :cond_3

    move-object v6, p1

    .line 880
    check-cast v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .line 881
    .local v6, "v":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    iget-object v7, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v7, :cond_0

    .line 882
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 884
    :cond_0
    iget-object v7, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v7, :cond_1

    .line 885
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 887
    :cond_1
    iget-object v7, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v7, :cond_2

    .line 888
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v8, v6, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 964
    .end local v6    # "v":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .end local p1    # "o":Ljava/lang/Object;
    :cond_2
    :goto_0
    return-void

    .line 891
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_3
    instance-of v7, p1, Landroid/os/Parcel;

    if-eqz v7, :cond_4

    .line 892
    check-cast p1, Landroid/os/Parcel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, "parcelString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 894
    new-instance v7, Ljava/io/CharArrayReader;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-static {v7, p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    goto :goto_0

    .line 898
    .end local v5    # "parcelString":Ljava/lang/String;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    const/4 v2, 0x0

    .line 899
    .local v2, "matchAllFields":Z
    instance-of v7, p1, [Ljava/lang/Object;

    if-eqz v7, :cond_a

    .line 900
    const/4 v2, 0x1

    move-object v7, p1

    .line 901
    check-cast v7, [Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, [Ljava/lang/Object;

    .line 902
    .local v6, "v":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 903
    .local v1, "index":I
    if-eqz v2, :cond_6

    array-length v7, v6

    if-le v7, v1, :cond_6

    .line 904
    aget-object v7, v6, v1

    if-eqz v7, :cond_5

    .line 906
    :try_start_0
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    aget-object v8, v6, v1

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 913
    :cond_6
    if-eqz v2, :cond_8

    array-length v7, v6

    if-le v7, v1, :cond_8

    .line 914
    aget-object v7, v6, v1

    if-eqz v7, :cond_7

    .line 916
    :try_start_1
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    aget-object v8, v6, v1

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 921
    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 923
    :cond_8
    if-eqz v2, :cond_a

    array-length v7, v6

    if-le v7, v1, :cond_a

    .line 924
    aget-object v7, v6, v1

    if-eqz v7, :cond_9

    .line 926
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    aget-object v8, v6, v1

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 931
    :cond_9
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 934
    .end local v1    # "index":I
    .end local v6    # "v":[Ljava/lang/Object;
    :cond_a
    if-nez v2, :cond_2

    .line 935
    const/4 v3, 0x0

    .line 936
    .local v3, "matchAnyField":Z
    const/4 v4, 0x0

    .line 938
    .local v4, "n":Ljava/lang/Object;
    :try_start_3
    const-string v7, "generic"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v7}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 939
    const/4 v3, 0x1

    .line 940
    if-eqz v4, :cond_b

    .line 941
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 945
    .end local v4    # "n":Ljava/lang/Object;
    :cond_b
    :goto_4
    :try_start_4
    const-string v7, "national"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v7}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 946
    .restart local v4    # "n":Ljava/lang/Object;
    const/4 v3, 0x1

    .line 947
    if-eqz v4, :cond_c

    .line 948
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 952
    .end local v4    # "n":Ljava/lang/Object;
    :cond_c
    :goto_5
    :try_start_5
    const-string v7, "area"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v7}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 953
    .restart local v4    # "n":Ljava/lang/Object;
    const/4 v3, 0x1

    .line 954
    if-eqz v4, :cond_d

    .line 955
    new-instance v7, Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 958
    .end local v4    # "n":Ljava/lang/Object;
    :cond_d
    :goto_6
    if-nez v3, :cond_2

    .line 959
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 907
    .end local v3    # "matchAnyField":Z
    .restart local v1    # "index":I
    .restart local v6    # "v":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 908
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_1

    .line 917
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 918
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_2

    .line 927
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 928
    .restart local v0    # "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_3

    .line 957
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "index":I
    .end local v6    # "v":[Ljava/lang/Object;
    .restart local v3    # "matchAnyField":Z
    :catch_3
    move-exception v7

    goto :goto_6

    .line 950
    :catch_4
    move-exception v7

    goto :goto_5

    .line 943
    :catch_5
    move-exception v7

    goto :goto_4
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 867
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/CharArrayWriter;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 867
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->convertToObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1
    .param p0, "x0"    # Ljava/io/CharArrayReader;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 867
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 867
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->equals(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z

    move-result v0

    return v0
.end method

.method private static constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 3
    .param p0, "reader"    # Ljava/io/CharArrayReader;
    .param p1, "givenContainer"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 1035
    move-object v0, p1

    .line 1036
    .local v0, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-eqz p0, :cond_1

    .line 1038
    :try_start_0
    invoke-virtual {p0}, Ljava/io/CharArrayReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    if-nez v0, :cond_0

    .line 1040
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .end local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .local v1, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    move-object v0, v1

    .line 1042
    .end local v1    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .restart local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    :cond_0
    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1043
    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1044
    const/4 v2, 0x0

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->constructFromReader(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {p0, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$500(Ljava/io/CharArrayReader;Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :cond_1
    :goto_0
    return-object v0

    .line 1046
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private convertToObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1058
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/Object;

    .line 1059
    .local v0, "v":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_0

    .line 1060
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1062
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_1

    .line 1063
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1065
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 1066
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->convertToObject()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$600(Lcom/android/internal/telephony/MobileNetwork$Setting;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1068
    :cond_2
    return-object v0
.end method

.method private static equals(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Z
    .locals 3
    .param p0, "o1"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .param p1, "o2"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 1124
    const/4 v0, 0x1

    .line 1125
    .local v0, "result":Z
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    .line 1126
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_3

    .line 1127
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1128
    const/4 v0, 0x0

    .line 1136
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_5

    .line 1137
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1138
    const/4 v0, 0x0

    .line 1146
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_7

    .line 1147
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->equals(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$800(Lcom/android/internal/telephony/MobileNetwork$Setting;Lcom/android/internal/telephony/MobileNetwork$Setting;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1148
    const/4 v0, 0x0

    .line 1162
    :cond_2
    :goto_2
    return v0

    .line 1132
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_0

    .line 1133
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1142
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_1

    .line 1143
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1152
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 1153
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 1158
    :cond_9
    if-nez p0, :cond_a

    if-eqz p1, :cond_2

    .line 1159
    :cond_a
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/CharArrayWriter;
    .param p1, "setting"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    .line 1020
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 1021
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 1022
    iget-object v0, p1, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V
    invoke-static {p0, v0}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$400(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$Setting;)V

    .line 1024
    :cond_0
    return-void
.end method

.method private static invertUi(Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 3
    .param p0, "o"    # Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .prologue
    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    if-eqz p0, :cond_1

    .line 1081
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    .end local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>()V

    .line 1082
    .restart local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_3

    .line 1083
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1084
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->generic:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_2

    .line 1085
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_0

    .line 1086
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1088
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_1

    .line 1089
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1117
    :cond_1
    :goto_0
    return-object v0

    .line 1093
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1096
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_5

    .line 1097
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1098
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->national:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_4

    .line 1099
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_1

    .line 1100
    new-instance v1, Lcom/android/internal/telephony/MobileNetwork$Setting;

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/MobileNetwork$Setting;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    goto :goto_0

    .line 1104
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 1107
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-eqz v1, :cond_6

    .line 1108
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    # invokes: Lcom/android/internal/telephony/MobileNetwork$Setting;->invertUi(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;
    invoke-static {v1}, Lcom/android/internal/telephony/MobileNetwork$Setting;->access$700(Lcom/android/internal/telephony/MobileNetwork$Setting;)Lcom/android/internal/telephony/MobileNetwork$Setting;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    .line 1109
    iget-object v1, v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->area:Lcom/android/internal/telephony/MobileNetwork$Setting;

    if-nez v1, :cond_1

    .line 1110
    const/4 v0, 0x0

    goto :goto_0

    .line 1114
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 982
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1004
    if-eqz p1, :cond_0

    .line 1005
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 1006
    .local v0, "writer":Ljava/io/CharArrayWriter;
    invoke-static {v0, p0}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;->fillIntoWriter(Ljava/io/CharArrayWriter;Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;)V

    .line 1007
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1009
    .end local v0    # "writer":Ljava/io/CharArrayWriter;
    :cond_0
    return-void
.end method
