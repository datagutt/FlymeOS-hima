.class public Lcom/android/internal/telephony/HtcBuildUtils;
.super Ljava/lang/Object;
.source "HtcBuildUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    }
.end annotation


# static fields
.field public static final CDMA_EHRPD_CONFIG:Z

.field private static CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum; = null

.field private static final DBG:Z = true

.field private static final DBG_DETAIL:Z = false

.field private static final DISPLAY_ICCID_LEN:I = 0x8

.field private static final DISPLAY_LINE1_NUMBER_LEN:I = 0x4

.field private static final DISPLAY_LINE1_NUMBER_LEN2:I = 0x8

.field private static final DISPLAY_MCCMNC_LEN:I = 0x6

.field public static final DetectVMbyCarrierIdFromNV:Z

.field public static final FEATURE_CT_CUSTOMIZATION:Z

.field public static GENERIC_WPHONE_CONFIG:Z = false

.field private static GLOBAL_ROAMING_CONFIG:Z = false

.field private static HTC_SENSE_VERSION:F = 0.0f

.field public static final HTC_SENSE_VERSION_1_5:F = 1.5f

.field public static final HTC_SENSE_VERSION_1_6:F = 1.6f

.field public static final HTC_SENSE_VERSION_2_0:F = 2.0f

.field public static final HTC_SENSE_VERSION_2_1:F = 2.1f

.field public static final HTC_SENSE_VERSION_3_0:F = 3.0f

.field public static final HTC_SENSE_VERSION_3_5:F = 3.5f

.field public static final HTC_SENSE_VERSION_5_0:F = 5.0f

.field public static final HTC_SENSE_VERSION_6_0:F = 6.0f

.field public static final HTC_SENSE_VERSION_7_0:F = 7.0f

.field public static final HUTCHISON_TEL:Ljava/lang/String; = "45404"

.field public static final IS_CHNIA:Z

.field public static final IS_CMCC:Z

.field private static final IS_DEBUG:Z

.field public static KDDI_CONFIG:Z = false

.field static final M7_WITH_LTE:Z

.field private static final PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String; = "ro.cdma.home.operator.numeric"

.field private static final PROP_KEY_BUILD_PROJECT:Ljava/lang/String; = "ro.build.project"

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_SPCS_ROAMING_GUARD_ENABLED:Ljava/lang/String; = "ro.chameleon.MenuDisplay.enable"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field private static QCT_8960_INTERFACE:Z = false

.field public static QCT_MM_CONFIG:Z = false

.field private static ROAMING_ENHANCE_CONFIG:Z = false

.field public static SIMTYPE_CONFIG:Z = false

.field private static final SPRINT_CHAMELEON_NO_BRAND_CARRIER_ID:Ljava/lang/String; = "310000"

.field private static final SPRINT_CHAMELEON_NO_BRAND_CARRIER_ID_OLD:Ljava/lang/String; = "000000"

.field private static final SPRINT_CHAMELEON_NO_BRAND_OEM_NAME:Ljava/lang/String; = "HTC"

.field public static SPRINT_CONFIG:Z = false

.field private static final SPRINT_CUSTOMER_SERVICE_NUMBER:Ljava/lang/String; = "+18176984199"

.field private static final SPRINT_CUSTOMER_SERVICE_SHORT_CODE:Ljava/lang/String; = "*2"

.field private static final SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

.field public static SPRINT_WPHONE_CONFIG:Z = false

.field public static final SSCOMMAND_OVER_UT:Z

.field public static final SUPPORT_CT_4G_REQUIREMENT:Z

.field private static SUPPORT_CW:Z = false

.field public static final SUPPORT_VT:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcBuildUtils"

.field public static VERIZON_MECHA_CONFIG:Z = false

.field public static VERIZON_WPHONE_CONFIG:Z = false

.field private static final hiddenText:Ljava/lang/String; = "********************************"

.field private static mLTECapability:Z

.field private static final sCarrierId:Ljava/lang/String;

.field private static sCheckedQCTWifiIMSFlag:Z

.field private static sCheckedWifiIMSFlag:Z

.field private static final sIsNoBrandCarrier:Z

.field private static sSupportQCTWifiIMS:Z

.field private static sSupportTMOWifiIMS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x1e

    const/4 v7, 0x1

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1a

    if-eq v5, v8, :cond_0

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_8

    :cond_0
    move v5, v7

    :goto_0
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    sget-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    if-nez v5, :cond_1

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x19

    if-eq v5, v8, :cond_1

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_9

    :cond_1
    move v5, v7

    :goto_1
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CHNIA:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string/jumbo v8, "sense_version"

    const-string v9, "5.0"

    invoke-static {v5, v8, v9}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    sput v5, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string/jumbo v5, "ro.build.project"

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v5, "M7_UL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v7

    :goto_3
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->M7_WITH_LTE:Z

    invoke-static {v7}, Lcom/android/internal/telephony/HtcBuildUtils;->getRATByHtcTelephonyCapability(Z)I

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I

    move-result v8

    and-int/2addr v5, v8

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I

    move-result v8

    if-ne v5, v8, :cond_b

    move v5, v7

    :goto_4
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->CDMA_EHRPD_CONFIG:Z

    const-string/jumbo v5, "ro.telephony.debug"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG:Z

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1b

    if-eq v5, v8, :cond_2

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1c

    if-eq v5, v8, :cond_2

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    if-ne v5, v10, :cond_c

    :cond_2
    move v5, v7

    :goto_5
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0xa

    if-eq v5, v8, :cond_3

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x62

    if-eq v5, v8, :cond_3

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x55

    if-ne v5, v8, :cond_d

    :cond_3
    move v5, v7

    :goto_6
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_MECHA_CONFIG:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->UNKNOWN:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    :try_start_1
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v2

    const-string v5, "Android_Ril"

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string/jumbo v5, "support_cw"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    const-string v5, "global_roaming_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    const-string/jumbo v5, "roaming_enhance_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    const-string v5, "cdma_lte_mm_config"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_MM_CONFIG:Z

    const-string v5, "customize_cdma_lte_profile"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "qct_8960_interface"

    const/4 v8, 0x0

    invoke-interface {v3, v5, v8}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->values()[Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v5

    aget-object v5, v5, v4

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_7
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v5

    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG:Z

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x1f

    if-ne v5, v8, :cond_e

    move v5, v7

    :goto_8
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->KDDI_CONFIG:Z

    sput-boolean v6, Lcom/android/internal/telephony/HtcBuildUtils;->SIMTYPE_CONFIG:Z

    const-string/jumbo v5, "ro.cdma.home.operator.numeric"

    const-string v8, "310000"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    const-string v8, "310000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    const-string v8, "000000"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_5
    move v5, v7

    :goto_9
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->sIsNoBrandCarrier:Z

    new-array v5, v7, [Ljava/lang/String;

    const-string v8, "*2"

    aput-object v8, v5, v6

    sput-object v5, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x71

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x72

    if-eq v5, v8, :cond_6

    sget v5, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v8, 0x16

    if-ne v5, v8, :cond_10

    :cond_6
    move v5, v7

    :goto_a
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string/jumbo v8, "voLteEnabled"

    invoke-static {v5, v8, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isATTSku()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCMCCSku()Z

    move-result v5

    if-eqz v5, :cond_11

    :cond_7
    move v5, v7

    :goto_b
    sput-boolean v5, Lcom/android/internal/telephony/HtcBuildUtils;->SSCOMMAND_OVER_UT:Z

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string/jumbo v8, "support_lte"

    invoke-static {v5, v8, v6}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    :goto_c
    sput-boolean v7, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CT_4G_REQUIREMENT:Z

    return-void

    :cond_8
    move v5, v6

    goto/16 :goto_0

    :cond_9
    move v5, v6

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const/high16 v5, 0x3fc00000    # 1.5f

    sput v5, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F

    goto/16 :goto_2

    :cond_a
    move v5, v6

    goto/16 :goto_3

    :cond_b
    move v5, v6

    goto/16 :goto_4

    :cond_c
    move v5, v6

    goto/16 :goto_5

    :cond_d
    move v5, v6

    goto/16 :goto_6

    :catch_1
    move-exception v1

    const-string v5, "HtcBuildUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot read customization value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7

    :cond_e
    move v5, v6

    goto/16 :goto_8

    :cond_f
    move v5, v6

    goto/16 :goto_9

    :cond_10
    move v5, v6

    goto :goto_a

    :cond_11
    move v5, v6

    goto :goto_b

    :cond_12
    move v7, v6

    goto :goto_c
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA()I
    .locals 5

    :try_start_0
    const-string v3, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const-string v3, "HtcBuildUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static CKT_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CKT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CMCC_CONFIG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static CSPIRE_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->CSPIRE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CT_CONFIG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static CT_WORDING_CONFIG()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    return-object v0
.end method

.method public static GENERIC_VoIP_CONFIG()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static GENERIC_WPHONE_CONFIG()Z
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, -0x80000000

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "persist.radio.worldphone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final IS_DEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG:Z

    return v0
.end method

.method public static final IS_VM_OMADM()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->KDDI:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static KDDI_WORDING_CONFIG()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LRA_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static LTE_CONFIG()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    return v0
.end method

.method public static MPCS_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->MPCS:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static OM_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->OPEN_MOBILE:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static QCT_8960_Device_CONFIG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->QCT_8960_INTERFACE:Z

    return v0
.end method

.method public static QMI_CONFIG()Z
    .locals 2

    const/4 v0, 0x2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->SPRINT:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_LTE_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_LTE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SPRINT_ROAMING_ENHANCE_CONFIG()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.chameleon.MenuDisplay.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->ROAMING_ENHANCE_CONFIG:Z

    goto :goto_0
.end method

.method public static SPRINT_WPHONE_CONFIG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CONFIG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static STE_CONFIG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static SupportProvisionCheck()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_CONFIG()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static VERIZON_LTE_CONFIG()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->VERIZON:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CUSTOMIZE_LTE_CONFIG()Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;->LRA:Lcom/android/internal/telephony/HtcBuildUtils$LteConfigEnum;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static VERIZON_LTE_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LRA_LTE_CONFIG()Z

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

.method public static VERIZON_WPHONE_CONFIG()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final VZW_GLOBAL_ROAMING_CONFIG()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->GLOBAL_ROAMING_CONFIG:Z

    return v0
.end method

.method public static WPHONE_UI_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final appendfilePath()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static cdmaSetAudioModeBeforeRadioOperation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static cdmaWMIfromTraditionalWmInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static checkSprintChameleonNoBrandedOperator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->sIsNoBrandCarrier:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return HTC for no brand Chameleon device, carrier id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "HTC"

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "branded Chameleon device, carrier id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/HtcBuildUtils;->sCarrierId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final convertToCustomerServiceNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    const-string v1, "*2"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "+18176984199"

    const-string v1, "HtcBuildUtils"

    const-string v2, "convert to customer service number"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static final displayIccId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-string v2, "********************************"

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static final displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    const-string v3, "********************************"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "********************************"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static final displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber2BackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumber3BackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final displayPhoneNumberBackMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcBuildUtils;->displayLimitedNumberBackMask(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static dualGSMPhoneEnable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualGGPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGGGSwitchPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gsm.current.cg.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static dualPhoneEnable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualGCPhone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGGGSwitchPhone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "gsm.current.cg.mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableQCTWifiIms()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    if-eqz v3, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "TMOUS_IMS"

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "enable_new_wifi_ims"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    sput-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedQCTWifiIMSFlag:Z

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportQCTWifiIMS:Z

    goto :goto_0

    :cond_1
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableQCTWifiIms, reader is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableQCTWifiIms, manager is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final enableRUIMCard()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "radio_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static enableSeparateSingnalBar()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualPhoneEnable()Z

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

.method public static enableSimAuthentication()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final enableSkypeCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static enableTmoWifiIms()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    if-eqz v3, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "TMOUS_IMS"

    invoke-virtual {v0, v3, v4, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "enable_wifi_ims"

    invoke-interface {v1, v3, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    sput-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->sCheckedWifiIMSFlag:Z

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->sSupportTMOWifiIMS:Z

    goto :goto_0

    :cond_1
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableTmoWifiIms, reader is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "HtcBuildUtils"

    const-string v4, "enableTmoWifiIms, manager is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableVoRAIms()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final getCustomerServiceNumberShortCodes()[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportCustomerServiceShortCode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_CUSTOMER_SERVICE_SHORT_CODES:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getHtcSenseVersion()F
    .locals 1

    sget v0, Lcom/android/internal/telephony/HtcBuildUtils;->HTC_SENSE_VERSION:F

    return v0
.end method

.method public static getRATByHtcTelephonyCapability(Z)I
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "com.android.internal.telephony.HtcTelephonyCapability"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "BUILT_RAT_CAPABILITIES"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p0, :cond_0

    const-string v4, "HtcBuildUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRATByHtcTelephonyCapability:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    if-eqz p0, :cond_0

    const-string v4, "HtcBuildUtils"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAsiaCHSOpenChannel()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCWDataConnectionSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_CW:Z

    return v0
.end method

.method private static final isDualCGGGSwitchPhone()Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string/jumbo v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDualCGPhone()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string/jumbo v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isDualGCPhone()Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string/jumbo v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static final isDualGGPhone()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string/jumbo v3, "radio_type"

    invoke-static {v2, v3, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFollowSprintSpec()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isForceUpdateVoiceMailNumberAfterSimChangedSupported()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGetMccMncSpnFromCSIMSupported()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x49

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIccCardProxyEnabled()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "sim_card_proxy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNFCEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPhoneFeatureEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTabletPhoneEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isQCTwithSingleActive()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "is_qct_with_single_active"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isRemovedMFPath()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSingleModemDSDAdevice()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "single_modem_dsda_device"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final isSpecialNonEMS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCG2GGPhoneModeChange()Z
    .locals 5

    const/high16 v3, -0x80000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    const/high16 v3, 0x20000000

    sget v4, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSupportGlobalMode()Z
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isDualCGPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportGsmDataCodingSchemeInCdma()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportItsOn()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "has_its_on_ap"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiOtasp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportNoSimPowerOFF()Z
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportOperatorPreferredPLMN()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->isCTSku()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "support_lte"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportSimPhonebook()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "sim_phonebook"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSmartAutoForwarding()Z
    .locals 2

    const/high16 v0, 0x20000000

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintChameleon()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "cdma_telephony_chameleon"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportTDandWCDMAModeChange()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "support_td_w_modem_mode_change"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportThreeModemForTwoSlot()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "has_three_modems"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v2, "device_type"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTabletPhoneEnabled()Z
    .locals 2

    const-string/jumbo v0, "ro.phone.function"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isUICC()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVTEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVoLTEEnabled()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "voLteEnabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final isWorldPhoneEnabled()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string/jumbo v3, "radio_type"

    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static needregisterForManualState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static readLTECapbility()V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.device.capability"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    const-string v0, "HtcBuildUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLTECapability : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->mLTECapability:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static supportAdditionalNumbersInSim()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportAudioPathforTD()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "support_audio_path_for_td_modem"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final supportCustomerServiceShortCode()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportEMS()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static supportMeidSystemPropertyForDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static final supportRemoteSIMunlock()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportSIMPhonebookbyIccIO()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isIccCardProxyEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string/jumbo v2, "sim_phonebook_by_icc_io"

    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static supportSimHotSwapFeature()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "sim_hot_swap"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static supportUSSDVerification()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final supportVoiceSpeechCodec()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "support_voice_speech_codec"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
