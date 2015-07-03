.class final Lcom/android/internal/telephony/PhoneBookEntry$1;
.super Ljava/lang/Object;
.source "PhoneBookEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneBookEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/PhoneBookEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "adnumber1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "adnumber2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "email":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 98
    .local v6, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 99
    .local v7, "adType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 100
    .local v8, "hidden":I
    new-instance v0, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBookEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lcom/android/internal/telephony/PhoneBookEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneBookEntry$1;->newArray(I)[Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v0

    return-object v0
.end method
