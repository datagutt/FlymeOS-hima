.class public Lcom/htc/app/admin/VpnConfigInfo;
.super Ljava/lang/Object;
.source "VpnConfigInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/app/admin/VpnConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x6

.field public static final TYPE_PPTP:I


# instance fields
.field private mConfigId:Ljava/lang/String;

.field private mDnsServers:Ljava/lang/String;

.field private mIpsecCaCert:Ljava/lang/String;

.field private mIpsecIdentifier:Ljava/lang/String;

.field private mIpsecSecret:Ljava/lang/String;

.field private mIpsecUserCert:Ljava/lang/String;

.field private mL2tpSecret:Ljava/lang/String;

.field private mMPPE:Z

.field private mPassword:Ljava/lang/String;

.field private mRoutes:Ljava/lang/String;

.field private mSearchDomains:Ljava/lang/String;

.field private mServerAddress:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mVpnName:Ljava/lang/String;

.field private mVpnType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/app/admin/VpnConfigInfo$1;

    invoke-direct {v0}, Lcom/htc/app/admin/VpnConfigInfo$1;-><init>()V

    sput-object v0, Lcom/htc/app/admin/VpnConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/htc/app/admin/VpnConfigInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/app/admin/VpnConfigInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/app/admin/VpnConfigInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getConfigId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsServers()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecCaCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIpsecUserCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    return-object v0
.end method

.method public getL2tpSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getPPPencryption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutes()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchDomains()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    return-object v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnType()I
    .locals 1

    iget v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    return v0
.end method

.method public gsetIPSecPreSharedkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    return-object v0
.end method

.method readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method public setConfigId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    return-void
.end method

.method public setDnsServers(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    return-void
.end method

.method public setIPSecPreSharedkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    return-void
.end method

.method public setIPSec_HybridRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method public setIPSec_XauthPSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    return-void
.end method

.method public setIPSec_XauthRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method public setIpsecCaCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method public setIpsecIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setIpsecUserCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    return-void
.end method

.method public setL2TP_IPSecPSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    return-void
.end method

.method public setL2TP_IPSecRSK_VPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    return-void
.end method

.method public setL2tpSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    return-void
.end method

.method public setPPPencryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    return-void
.end method

.method public setPPTP_VPN(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setRoutes(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    return-void
.end method

.method public setSearchDomains(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    return-void
.end method

.method public setVpnName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    return-void
.end method

.method public setVpnOption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    iput-object p2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    return-void
.end method

.method public setVpnType(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/htc/app/admin/VpnConfigInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " server="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " password="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dnsServers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " searchDomains="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " routes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mppe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " l2tpSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecIdentifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ipsecSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecUserCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ipsecCaCert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mConfigId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mVpnType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mDnsServers:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mSearchDomains:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mRoutes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mMPPE:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mL2tpSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecUserCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/app/admin/VpnConfigInfo;->mIpsecCaCert:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
