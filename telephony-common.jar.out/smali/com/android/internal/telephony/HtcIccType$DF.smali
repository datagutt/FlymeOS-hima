.class public Lcom/android/internal/telephony/HtcIccType$DF;
.super Ljava/lang/Object;
.source "HtcIccType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIccType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DF"
.end annotation


# instance fields
.field public IMSI:Ljava/lang/String;

.field public MCCMNC:Ljava/lang/String;

.field public SPN:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/HtcIccType;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/HtcIccType;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccType$DF;->this$0:Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V
    .locals 1
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccType$DF;->this$0:Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V
    .locals 1
    .param p2, "s"    # Lcom/android/internal/telephony/HtcIccType$DF;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccType$DF;->this$0:Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iget-object v0, p2, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    .line 86
    iget-object v0, p2, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    .line 87
    iget-object v0, p2, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 52
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v2, "s":Lcom/android/internal/telephony/HtcIccType$DF;
    if-nez p1, :cond_1

    .line 61
    .end local v2    # "s":Lcom/android/internal/telephony/HtcIccType$DF;
    :cond_0
    :goto_0
    return v3

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 61
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Lcom/android/internal/telephony/HtcIccType$DF;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->access$000(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->access$000(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    # invokes: Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->access$000(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
