.class public Lcom/sprint/net/cdma/EvdoInfo;
.super Ljava/lang/Object;
.source "EvdoInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/EvdoInfo$AuthState;,
        Lcom/sprint/net/cdma/EvdoInfo$SrvState;,
        Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/EvdoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "EvdoInfo"


# instance fields
.field mAuthState:[I

.field mCellLocationInfo:[I

.field mColorCode:[I

.field mContext:Landroid/content/Context;

.field mDbm:F

.field mEcio:F

.field mErrRate:[I

.field mPnEnergy:F

.field mRfBandInfo:[I

.field mSectorId:[I

.field mSinr:F

.field mSysInfo:[I

.field mTxRxInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/cdma/EvdoInfo$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/EvdoInfo$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/EvdoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EvdoInfo"

    const-string v1, "++EvdoInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getCellLocationInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getRfBandInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getErrRate()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getColorCode()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getSysInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getTxRxInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/EvdoInfo;->_getAuthState()V

    const-string v0, "EvdoInfo"

    const-string v1, "--EvdoInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mEcio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EvdoInfo: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/EvdoInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/EvdoInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EvdoInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method _getAuthState()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_AUTH_STATE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    if-nez v5, :cond_0

    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getAuthState: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getAuthState: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getCellLocationInfo()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_CELL_LOCATION_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getCellLocationInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getCellLocationInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getCellLocationInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getColorCode()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_COLOR_CODE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    if-nez v5, :cond_0

    const-string v5, "_getColorCode: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getColorCode: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getColorCode: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getErrRate()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_ERROR_RATE:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    if-nez v5, :cond_0

    const-string v5, "_getErrRate: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getErrRate: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getErrRate: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getRfBandInfo()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_RF_BAND_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getRfBandInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getRfBandInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getRfBandInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getSysInfo()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_SYS_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getSysInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getSysInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getSysInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getTxRxInfo()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v5, Lcom/sprint/net/MethodEnum;->GET_TX_RX_INFO:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v5}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "methodName"

    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "radio_technology"

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_EVDO_A:Lcom/sprint/net/HtcRadioTechnology;

    invoke-virtual {v6}, Lcom/sprint/net/HtcRadioTechnology;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "RIL"

    invoke-virtual {v1, v5, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getTxRxInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getSysInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActiveSet()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/net/cdma/ActiveSet;",
            ">;"
        }
    .end annotation

    const-string v0, "EvdoInfo"

    const-string v1, "getActiveSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthState()Lcom/sprint/net/cdma/EvdoInfo$AuthState;
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getAuthState "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;->AAA_STATUS_SUCCESS:Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;

    invoke-virtual {v1}, Lcom/sprint/net/cdma/EvdoInfo$AaaStatus;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->PASSED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sprint/net/cdma/EvdoInfo$AuthState;->FAILED:Lcom/sprint/net/cdma/EvdoInfo$AuthState;

    goto :goto_0
.end method

.method public getBandClass()I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandClass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getChannel()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getColorCode()J
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColorCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    aget v0, v0, v3

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMacIndex()I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getMacIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getNeighborSet()[I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getNeighborSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPacketError()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPacketError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPn()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPnEnergy()F
    .locals 3

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPnEnergy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    return v0
.end method

.method public getReceivePower()F
    .locals 3

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReceivePower "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    return v0
.end method

.method public getRequestedDrc()I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getRequestedDrc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getRlpNakAborts()I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getRlpNakAborts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getRlpRetransRate()I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getRlpRetransRate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getSectorId()[I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getSectorId"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSectorIdSubnetMask()I
    .locals 2

    const-string v0, "EvdoInfo"

    const-string v1, "getSectorIdSubnetMask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getSinr()F
    .locals 3

    const-string v0, "EvdoInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSinr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    aget v1, v1, v3

    sget-object v2, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/EvdoInfo$SrvState;

    invoke-virtual {v2}, Lcom/sprint/net/cdma/EvdoInfo$SrvState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    :goto_0
    const-string v1, "EvdoInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->SEARCHING:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->TRAFFIC:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->IDLE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPnEnergy(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    return-void
.end method

.method public setReceivePower(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    return-void
.end method

.method public setSinr(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mCellLocationInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mRfBandInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mErrRate:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mColorCode:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mPnEnergy:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mEcio:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mDbm:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSinr:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mSysInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mTxRxInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/EvdoInfo;->mAuthState:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeToParcel: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/EvdoInfo;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
