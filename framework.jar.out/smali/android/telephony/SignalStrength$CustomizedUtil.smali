.class Landroid/telephony/SignalStrength$CustomizedUtil;
.super Ljava/lang/Object;
.source "SignalStrength.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedUtil"
.end annotation


# static fields
.field private static final READER_NAME_PHONE:Ljava/lang/String; = "phone"

.field static final SKU_APTG_TW:I = 0x4b

.field static final SKU_Bell_Mobility_WWE:I = 0x5

.field static final SKU_CELL_SOUTH:I = 0x5e

.field static final SKU_China_Telecom:I = 0x1b

.field static final SKU_China_Telecom_LAB:I = 0x1c

.field static final SKU_Cingular_USA:I = 0x7

.field static final SKU_Globalive_WWE:I = 0x1

.field static final SKU_H3G_AT:I = 0x28

.field static final SKU_H3G_ITA:I = 0x4c

.field static final SKU_H3G_SWE:I = 0x4d

.field static final SKU_H3G_UK:I = 0x29

.field static final SKU_HTCCN_CHS_CMCC:I = 0x1a

.field static final SKU_HTCCN_CHS_CU:I = 0x1d

.field static final SKU_KDDI_JP:I = 0x1f

.field static final SKU_MMR_WWE:I = 0x4

.field static final SKU_MetroPCS:I = 0x51

.field static final SKU_Optus_AU:I = 0x24

.field static final SKU_Rogers_WWE:I = 0x9

.field static final SKU_Sprint_WWE:I = 0xa

.field static final SKU_Sprint_WWE_Boost:I = 0x55

.field static final SKU_Sprint_WWE_VMUS:I = 0x62

.field static final SKU_TELUS_WWE:I = 0x26

.field static final SKU_TMOUS:I = 0xb

.field static final SKU_Telecom_NZ_WWE:I = 0x33

.field static final SKU_Telstra_WWE:I = 0x25

.field static final SKU_UTSTARCOM_WWE:I = 0xc

.field static final SKU_VERIZON_WWE:I = 0xd

.field static final SKU_Voda_Hutch_AU:I = 0x3c

.field static final SKU_Vodafone_FRA:I = 0x3f

.field static final SKU_Vodafone_NZ:I = 0x65

.field static final SKU_hTC_Asia_AUS:I = 0x20

.field static final SKU_hTC_Asia_HK_CHT:I = 0x46

.field static final SKU_hTC_Asia_India:I = 0x21

.field static final SKU_hTC_Asia_TW:I = 0x49

.field static final SKU_hTC_Asia_WWE:I = 0x23

.field private static mApplyNewVerizonSignalMappingScheme:Z

.field private static mApplyOldSignalMappingScheme:Z

.field private static mCid:Ljava/lang/String;

.field private static mSignalBarLevelCdma:I

.field private static mSignalBarLevelGsm:I

.field private static mSkuId:I

.field private static mVoLTEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x5

    const/4 v3, 0x0

    sget v1, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "initSignalBarLevel() reader is null, return default value 5"

    # invokes: Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/telephony/SignalStrength;->access$400(Ljava/lang/String;)V

    sput v2, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I

    sput v2, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I

    :cond_0
    const-string/jumbo v1, "signal_icon_level_gsm"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I

    const-string/jumbo v1, "signal_icon_level_cdma"

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mCid:Ljava/lang/String;

    const-string v1, "apply_old_signal_mapping"

    invoke-interface {v0, v1, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mApplyOldSignalMappingScheme:Z

    const-string v1, "apply_new_1x_evdo_signal_mapping"

    invoke-interface {v0, v1, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mApplyNewVerizonSignalMappingScheme:Z

    const-string/jumbo v1, "phone"

    const/4 v2, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/ACCCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "voLteEnabled"

    invoke-interface {v0, v1, v3}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mVoLTEnabled:Z

    :goto_0
    return-void

    :cond_1
    const-string v1, "initSignalBarLevel() phone reader is null, voLteEnabled set to false"

    # invokes: Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/telephony/SignalStrength;->access$400(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelGsm:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mSignalBarLevelCdma:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mVoLTEnabled:Z

    return v0
.end method

.method static varargs checkSkuId([I)Z
    .locals 5

    move-object v0, p0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    sget v4, Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static isATT()Z
    .locals 2

    const/4 v0, 0x7

    sget v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I

    if-eq v0, v1, :cond_0

    const-string v0, "CWS__001"

    sget-object v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isApplyOldSignalMappingScheme()Z
    .locals 1

    sget-boolean v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mApplyOldSignalMappingScheme:Z

    return v0
.end method

.method static isApplyVerizonNewSignalMappingScheme()Z
    .locals 1

    sget-boolean v0, Landroid/telephony/SignalStrength$CustomizedUtil;->mApplyNewVerizonSignalMappingScheme:Z

    return v0
.end method

.method static isAptgTw()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x4b

    aput v2, v0, v1

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0
.end method

.method static isAsia()Z
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x21
        0x23
        0x49
    .end array-data
.end method

.method static isAusNzSku()Z
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x20
        0x25
        0x3c
        0x24
        0x65
        0x33
    .end array-data
.end method

.method static isCU()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0
.end method

.method static isChinaTelecom()Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x1b
        0x1c
    .end array-data
.end method

.method static isH3G()Z
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0x28
        0x29
        0x4c
        0x4d
    .end array-data
.end method

.method static isKDDI()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0
.end method

.method static isMetroPCS()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput v2, v0, v1

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0
.end method

.method static isMmrWwe()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0
.end method

.method static isSprintBrand()Z
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/telephony/SignalStrength$CustomizedUtil;->checkSkuId([I)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 4
        0xa
        0x62
        0x55
    .end array-data
.end method

.method static isVerizon()Z
    .locals 2

    const/16 v0, 0xd

    sget v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mSkuId:I

    if-eq v0, v1, :cond_0

    const-string v0, "VZW__001"

    sget-object v1, Landroid/telephony/SignalStrength$CustomizedUtil;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
