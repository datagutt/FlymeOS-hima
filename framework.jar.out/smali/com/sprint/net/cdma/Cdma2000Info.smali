.class public Lcom/sprint/net/cdma/Cdma2000Info;
.super Ljava/lang/Object;
.source "Cdma2000Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/net/cdma/Cdma2000Info$SrvState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/net/cdma/Cdma2000Info;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Cdma2000Info"


# instance fields
.field bIsDayLightSavingsSet:Z

.field mCellLocationInfo:[I

.field mDbm:F

.field mEcio:F

.field mErrRate:[I

.field mPnEnergy:F

.field mRfBandInfo:[I

.field mSysInfo:[I

.field mTimeZoneOffset:I

.field mTxRxInfo:[I

.field msid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sprint/net/cdma/Cdma2000Info$1;

    invoke-direct {v0}, Lcom/sprint/net/cdma/Cdma2000Info$1;-><init>()V

    sput-object v0, Lcom/sprint/net/cdma/Cdma2000Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cdma2000Info"

    const-string v1, "++Cdma2000Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getCellLocationInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getRfBandInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getErrRate()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getTimeZoneDaylightSav()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getSysInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getTxRxInfo()V

    invoke-virtual {p0}, Lcom/sprint/net/cdma/Cdma2000Info;->_getSid()V

    const-string v0, "Cdma2000Info"

    const-string v1, "--Cdma2000Info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cdma2000Info: e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/net/cdma/Cdma2000Info$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sprint/net/cdma/Cdma2000Info;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cdma2000Info"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public LittleToBig(S)S
    .locals 2

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
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

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getCellLocationInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getCellLocationInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

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

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    if-nez v5, :cond_0

    const-string v5, "_getErrRate: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/4 v5, 0x5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getErrRate: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

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

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

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

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getRfBandInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getRfBandInfo: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getSid()V
    .locals 9

    const v7, 0x7fffffff

    :try_start_0
    iput v7, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    sget-object v7, Lcom/sprint/net/MethodEnum;->REQUEST_HTC_DM_CMD:Lcom/sprint/net/MethodEnum;

    invoke-virtual {v7}, Lcom/sprint/net/MethodEnum;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "methodName"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "cmd"

    const-string v8, "0C"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "RIL"

    invoke-virtual {v1, v7, v3}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_getSid, reseult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/16 v7, 0x4e

    const/16 v8, 0x52

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->LittleToBig(S)S

    move-result v7

    iput v7, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sid string:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v7, "_getSid, result is null"

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_getSid: e="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

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

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

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

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getSysInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

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

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
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

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method _getTimeZoneDaylightSav()V
    .locals 5

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0xea60

    div-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x3c

    iput v3, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_getTimeZoneDaylightSav: e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

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

    sget-object v6, Lcom/sprint/net/HtcRadioTechnology;->RADIO_TECH_1xRTT:Lcom/sprint/net/HtcRadioTechnology;

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

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    if-nez v5, :cond_0

    const-string v5, "_getTxRxInfo: ret=null"

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    iget-object v5, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

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

    iget-object v6, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_getTxRxInfo: e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

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

    const-string v0, "Cdma2000Info"

    const-string v1, "getActiveSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBandClass()I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBandClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getBaseStationID()I
    .locals 4

    const/4 v3, 0x2

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBaseStationID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getChannel()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getFrameError()I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFrameError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    aget v0, v0, v3

    return v0
.end method

.method public getLatitude()I
    .locals 4

    const/4 v3, 0x3

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getLongitude()I
    .locals 4

    const/4 v3, 0x4

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLongitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getNeighborSet()[I
    .locals 2

    const-string v0, "Cdma2000Info"

    const-string v1, "getNeighborSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNid()I
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPn()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getPnEnergy()F
    .locals 1

    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    return v0
.end method

.method public getProtocolRevision()I
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProtocolRevision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v0, v0, v3

    return v0
.end method

.method public getReceiveEcIo()F
    .locals 1

    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    return v0
.end method

.method public getReceivePower()F
    .locals 1

    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    return v0
.end method

.method public getServiceOption()I
    .locals 2

    const-string v0, "Cdma2000Info"

    const-string v1, "getServiceOption"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7fffffff

    return v0
.end method

.method public getSid()I
    .locals 2

    const-string v0, "Cdma2000Info"

    const-string v1, "getSid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    return v0
.end method

.method public getState()Lcom/sprint/net/cdma/CdmaState;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    aget v1, v1, v3

    sget-object v2, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->SYS_SRV_STATUS_PWR_SAVE:Lcom/sprint/net/cdma/Cdma2000Info$SrvState;

    invoke-virtual {v2}, Lcom/sprint/net/cdma/Cdma2000Info$SrvState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/sprint/net/cdma/CdmaState;

    sget-object v1, Lcom/sprint/net/cdma/CdmaState$State;->POWERSAVE:Lcom/sprint/net/cdma/CdmaState$State;

    invoke-direct {v0, v1}, Lcom/sprint/net/cdma/CdmaState;-><init>(Lcom/sprint/net/cdma/CdmaState$State;)V

    :goto_0
    const-string v1, "Cdma2000Info"

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
    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

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

.method public getTimeZoneOffset()I
    .locals 3

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeZoneOffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    return v0
.end method

.method public isDayLightSavingsSet()Z
    .locals 3

    const-string v0, "Cdma2000Info"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDayLightSavingsSet: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    return v0
.end method

.method public setPnEnergy(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    return-void
.end method

.method public setReceiveEcIo(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    return-void
.end method

.method public setReceivePower(F)V
    .locals 0

    iput p1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mCellLocationInfo:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mRfBandInfo:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mErrRate:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mPnEnergy:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mEcio:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mDbm:F

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    iget v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTimeZoneOffset:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v2, p0, Lcom/sprint/net/cdma/Cdma2000Info;->bIsDayLightSavingsSet:Z

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mSysInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->mTxRxInfo:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v1, p0, Lcom/sprint/net/cdma/Cdma2000Info;->msid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

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

    invoke-direct {p0, v1}, Lcom/sprint/net/cdma/Cdma2000Info;->logi(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
