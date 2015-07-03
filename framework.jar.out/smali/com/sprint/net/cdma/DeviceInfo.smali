.class public Lcom/sprint/net/cdma/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final Property_DeviceId:Ljava/lang/String; = "ro.product.model"

.field private static final Property_IPV6Support:Ljava/lang/String; = "ro.telephony.ipv6_capability"

.field private static final Property_PRLVERSION:Ljava/lang/String; = "ro.cdma.prl"

.field private static final TAG:Ljava/lang/String; = "DeviceInfo.cdma"


# instance fields
.field private mChipsetManufacturer:Ljava/lang/String;

.field private mChipsetSwVersion:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mIsQlicSupported:Z

.field private mTechnology:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mdeviceid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/cdma/DeviceInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/DeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    const-string v0, "DeviceInfo.cdma"

    const-string v1, "++DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sprint/net/cdma/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sprint/net/cdma/DeviceInfo;->_getDeviceID()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/DeviceInfo;->_getRadioInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/DeviceInfo;->_getTechnologySupported()V

    invoke-direct {p0}, Lcom/sprint/net/cdma/DeviceInfo;->_getNvItemDiversity1x()V

    const-string v0, "DeviceInfo.cdma"

    const-string v1, "--DeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, ""

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    iput-boolean v1, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/DeviceInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/DeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v5, ""

    :goto_0
    if-gt v3, v4, :cond_0

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    if-nez v1, :cond_1

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    int-to-char v8, v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move v2, v3

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private _getDeviceID()V
    .locals 2

    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_getDeviceID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private _getNvItemDiversity1x()V
    .locals 10

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v8, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v8}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, "methodName"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "cmd"

    const-string v9, "C826FA0300"

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "RIL"

    invoke-virtual {v1, v8, v4}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v8, "_getNvItemDiversity1x: raw=null"

    invoke-direct {p0, v8}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    :goto_0
    const/16 v8, 0xa

    :try_start_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    const/16 v8, 0x8

    if-ge v2, v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_getNvItemDiversity1x: mIsQlicSupported="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_getNvItemDiversity1x: raw="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "DeviceInfo.cdma"

    const-string v9, "Can\'t get NV item \"1x diversity\". Please check!!"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DeviceInfo.cdma"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method _getRadioInfo()V
    .locals 10

    const/4 v9, 0x1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    sget-object v7, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v7}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "methodName"

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cmd"

    const-string v8, "C87C"

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "RIL"

    invoke-virtual {v0, v7, v4}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v1, ""

    if-eqz v5, :cond_0

    const/16 v7, 0x1a

    const/16 v8, 0x46

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v9}, Lcom/sprint/net/cdma/DeviceInfo;->StringToASCII(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const-string/jumbo v7, "nRadioInfo.length!=3"

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mRadioInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mChipsetManufacturer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mChipsetSwVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v7, 0x0

    aget-object v7, v3, v7

    iput-object v7, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method _getTechnologySupported()V
    .locals 9

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v0

    sget-object v7, Lcom/sprint/net/MethodEnum;->GET_RADIO_INTERFACE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v7}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "methodName"

    invoke-virtual {v4, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "RIL"

    invoke-virtual {v0, v7, v4}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, [I

    move-object v5, v7

    check-cast v5, [I

    if-nez v5, :cond_0

    const-string v7, "_getTechnologySupported: ret=null"

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v5, v7, [I

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    aget v3, v5, v7

    const/4 v1, 0x1

    :goto_1
    if-gt v1, v3, :cond_1

    iget-object v7, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    aget v8, v5, v1

    invoke-static {v8}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->fromValue(I)Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sprint/net/cdma/DeviceInfo$TechnologySupport;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_getTechnologySupported="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/DeviceInfo;->logi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBandClassesSupported()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v1, "0,1,10"

    new-instance v0, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "DeviceInfo.cdma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBandClassSupport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getChipsetManufacturer()Ljava/lang/String;
    .locals 3

    const-string v0, "DeviceInfo.cdma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipsetManufacturer :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getChipsetModel()Ljava/lang/String;
    .locals 3

    const-string v0, "DeviceInfo.cdma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipsetModel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getChipsetSwVersion()Ljava/lang/String;
    .locals 3

    const-string v0, "DeviceInfo.cdma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChipsetSwVersion :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "DeviceInfo.cdma"

    const-string v1, "getPrlVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.cdma.prl"

    const-string v1, "Not defined"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "DeviceInfo.cdma"

    const-string v1, "getSdkVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTechnologySupported()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DeviceInfo.cdma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTechnologySupported :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    return-object v0
.end method

.method public isIpv6Supported()Z
    .locals 2

    const-string v0, "DeviceInfo.cdma"

    const-string v1, "isIpv6Supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.telephony.ipv6_capability"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isQlicSupported()Z
    .locals 3

    const-string v0, "DeviceInfo.cdma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isQlicSupported :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mdeviceid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetSwVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mChipsetManufacturer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mTechnology:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/sprint/net/cdma/DeviceInfo;->mIsQlicSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
