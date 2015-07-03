.class public Lcom/htc/service/DongleInfo;
.super Ljava/lang/Object;
.source "DongleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/service/DongleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LOCK_DISABLED:I = 0x0

.field public static final PATTERN_LOCK_ENABLED:I = 0x1

.field public static final PATTERN_LOCK_UNSUPPORT:I = 0x2

.field public static final STATE_CONFIGURED:I = 0x2

.field public static final STATE_PAIRED:I = 0x3

.field public static final STATE_UNCONFIGURED:I = 0x4

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_WPS:I = 0x1

.field public static final getStateName:[Ljava/lang/String;


# instance fields
.field public bssid:Ljava/lang/String;

.field public capabilities:J

.field public currentAph:Ljava/lang/String;

.field public inetAddress:Ljava/lang/String;

.field public isConnectable:Z

.field public isDiscoveredByWivu:Z

.field public lockStatus:Ljava/lang/String;

.field public lockType:I

.field public name:Ljava/lang/String;

.field public pairedApm:Ljava/lang/String;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public staBssid:Ljava/lang/String;

.field public status:I

.field public version:Ljava/lang/String;

.field public wifiQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WPS"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONFIGURED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PAIRED"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UNCONFIGURED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/service/DongleInfo;->getStateName:[Ljava/lang/String;

    new-instance v0, Lcom/htc/service/DongleInfo$1;

    invoke-direct {v0}, Lcom/htc/service/DongleInfo$1;-><init>()V

    sput-object v0, Lcom/htc/service/DongleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    iput p4, p0, Lcom/htc/service/DongleInfo;->status:I

    iput-boolean p5, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    iput-boolean p6, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    iput p4, p0, Lcom/htc/service/DongleInfo;->status:I

    iput-boolean p5, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    iput-boolean p6, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    iput-object p7, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilites()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    return-wide v0
.end method

.method public getCurrentAph()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConnectable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    return v0
.end method

.method public getIsDiscoveredByWivu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    return v0
.end method

.method public getLockStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLockType()I
    .locals 1

    iget v0, p0, Lcom/htc/service/DongleInfo;->lockType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPairedApm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Lcom/htc/service/DongleInfo;->rssi:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStaBssid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/htc/service/DongleInfo;->status:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiQuality()I
    .locals 1

    iget v0, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DongleInfo{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, isDiscoveredByWivu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isConnectable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, ip address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sta bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current aph = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paired apm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->rssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/service/DongleInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/htc/service/DongleInfo;->isConnectable:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->inetAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->staBssid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->currentAph:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->pairedApm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/htc/service/DongleInfo;->capabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/htc/service/DongleInfo;->rssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/htc/service/DongleInfo;->lockType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/service/DongleInfo;->lockStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/service/DongleInfo;->wifiQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
