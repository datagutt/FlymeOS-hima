.class public Lcom/android/internal/telephony/MobileNetwork$Selection;
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
    name = "Selection"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/MobileNetwork$Selection;",
            ">;"
        }
    .end annotation
.end field

.field private static final seperator:Ljava/lang/String; = ","


# instance fields
.field public phoneType:Ljava/lang/Integer;

.field public slot:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Selection$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$Selection$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-eqz p1, :cond_0

    .line 75
    instance-of v4, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 76
    check-cast v4, Lcom/android/internal/telephony/MobileNetwork$Selection;

    iget-object v4, v4, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 77
    check-cast p1, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v4, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Landroid/os/Parcel;

    if-eqz v4, :cond_2

    .line 80
    check-cast p1, Landroid/os/Parcel;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    goto :goto_0

    .line 83
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 84
    .local v1, "matchAllFields":Z
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_6

    .line 85
    const/4 v1, 0x1

    move-object v4, p1

    .line 86
    check-cast v4, [Ljava/lang/Object;

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 87
    .local v3, "v":[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 88
    .local v0, "index":I
    if-eqz v1, :cond_4

    array-length v4, v3

    if-le v4, v0, :cond_4

    .line 89
    aget-object v4, v3, v0

    if-eqz v4, :cond_3

    .line 90
    aget-object v4, v3, v0

    instance-of v1, v4, Ljava/lang/Long;

    .line 91
    if-eqz v1, :cond_3

    .line 92
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    .line 95
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_4
    if-eqz v1, :cond_6

    array-length v4, v3

    if-le v4, v0, :cond_6

    .line 98
    aget-object v4, v3, v0

    if-eqz v4, :cond_5

    .line 99
    aget-object v4, v3, v0

    instance-of v1, v4, Ljava/lang/Integer;

    .line 100
    if-eqz v1, :cond_5

    .line 101
    aget-object v4, v3, v0

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    .line 104
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 107
    .end local v0    # "index":I
    .end local v3    # "v":[Ljava/lang/Object;
    :cond_6
    if-nez v1, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 110
    .local v2, "matchAnyField":Z
    :try_start_0
    const-string v4, "slot"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    const/4 v2, 0x1

    .line 114
    :goto_1
    :try_start_1
    const-string v4, "phoneType"

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->getFieldFromObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {p1, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iput-object v4, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    const/4 v2, 0x1

    .line 117
    :goto_2
    if-nez v2, :cond_0

    .line 118
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :catch_0
    move-exception v4

    goto :goto_2

    .line 112
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->convertToObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p1, "x1"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z

    move-result v0

    return v0
.end method

.method private static constructFromString(Ljava/lang/String;Lcom/android/internal/telephony/MobileNetwork$Selection;)Lcom/android/internal/telephony/MobileNetwork$Selection;
    .locals 3
    .param p0, "v"    # Ljava/lang/String;
    .param p1, "givenContainer"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 208
    move-object v0, p1

    .line 209
    .local v0, "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    if-eqz p0, :cond_1

    .line 210
    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$Selection;

    .end local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    invoke-direct {v0}, Lcom/android/internal/telephony/MobileNetwork$Selection;-><init>()V

    .line 213
    .restart local v0    # "result":Lcom/android/internal/telephony/MobileNetwork$Selection;
    :cond_0
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 218
    :goto_0
    const/4 v2, 0x1

    :try_start_1
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .end local v1    # "values":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 219
    .restart local v1    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1

    .line 216
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private convertToObject()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 256
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 257
    .local v0, "v":[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 258
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    aput-object v2, v0, v1

    .line 259
    return-object v0
.end method

.method private static equals(Lcom/android/internal/telephony/MobileNetwork$Selection;Lcom/android/internal/telephony/MobileNetwork$Selection;)Z
    .locals 5
    .param p0, "a"    # Lcom/android/internal/telephony/MobileNetwork$Selection;
    .param p1, "b"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "result":Z
    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p1}, Lcom/android/internal/telephony/MobileNetwork$Selection;->isNull()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v0, v2

    .line 246
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 230
    goto :goto_0

    .line 232
    :cond_4
    if-eqz p1, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    iget-object v4, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    # invokes: Lcom/android/internal/telephony/MobileNetwork;->matchLongValue(Ljava/lang/Long;Ljava/lang/Long;)Z
    invoke-static {v3, v4}, Lcom/android/internal/telephony/MobileNetwork;->access$100(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-nez v3, :cond_6

    .line 236
    iget-object v3, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    .line 238
    :cond_6
    iget-object v1, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 242
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;
    .locals 3
    .param p0, "selection"    # Lcom/android/internal/telephony/MobileNetwork$Selection;

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "result":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 196
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-object v2, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object v0
.end method

.method private isNull()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->slot:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/MobileNetwork$Selection;->phoneType:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-static {p0}, Lcom/android/internal/telephony/MobileNetwork$Selection;->fillIntoString(Lcom/android/internal/telephony/MobileNetwork$Selection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method
