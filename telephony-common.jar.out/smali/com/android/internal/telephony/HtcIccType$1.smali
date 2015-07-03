.class final Lcom/android/internal/telephony/HtcIccType$1;
.super Ljava/lang/Object;
.source "HtcIccType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HtcIccType;
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
        "Lcom/android/internal/telephony/HtcIccType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/HtcIccType;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 445
    new-instance v0, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/HtcIccType;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HtcIccType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/HtcIccType;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 452
    new-array v0, p1, [Lcom/android/internal/telephony/HtcIccType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HtcIccType$1;->newArray(I)[Lcom/android/internal/telephony/HtcIccType;

    move-result-object v0

    return-object v0
.end method
