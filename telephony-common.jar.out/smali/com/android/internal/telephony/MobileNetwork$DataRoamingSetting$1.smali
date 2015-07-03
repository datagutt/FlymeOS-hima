.class final Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting$1;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
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
        "Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 992
    new-instance v0, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 997
    new-array v0, p1, [Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 987
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting$1;->newArray(I)[Lcom/android/internal/telephony/MobileNetwork$DataRoamingSetting;

    move-result-object v0

    return-object v0
.end method
