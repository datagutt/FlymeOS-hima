.class public Landroid/net/wifi/PPPOEConfig;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public MSS:I

.field public interf:Ljava/lang/String;

.field public lcp_echo_failure:I

.field public lcp_echo_interval:I

.field public mru:I

.field public mtu:I

.field public password:Ljava/lang/String;

.field public timeout:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/PPPOEConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x5d4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    const-string/jumbo v0, "wlan0"

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v1, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    const/16 v0, 0x3c

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    const/16 v0, 0x584

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->mru:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    iget v0, p1, Landroid/net/wifi/PPPOEConfig;->MSS:I

    iput v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<none>"

    const-string v2, " username: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", password: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", interf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", lcp_echo_interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", lcp_echo_failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", mtu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", mru: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", MSS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
