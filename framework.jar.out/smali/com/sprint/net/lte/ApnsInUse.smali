.class public Lcom/sprint/net/lte/ApnsInUse;
.super Ljava/lang/Object;
.source "ApnsInUse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/lte/ApnsInUse;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LteApnsInUse"


# instance fields
.field public fullName:Ljava/lang/String;

.field public ipv4:Ljava/net/InetAddress;

.field public ipv6:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/lte/ApnsInUse$1;

    invoke-direct {v0}, Lcom/sprint/net/lte/ApnsInUse$1;-><init>()V

    sput-object v0, Lcom/sprint/net/lte/ApnsInUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/lte/ApnsInUse$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/lte/ApnsInUse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv4:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/sprint/net/lte/ApnsInUse;->ipv6:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
