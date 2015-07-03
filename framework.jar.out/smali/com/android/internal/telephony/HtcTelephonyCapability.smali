.class public Lcom/android/internal/telephony/HtcTelephonyCapability;
.super Ljava/lang/Object;
.source "HtcTelephonyCapability.java"


# static fields
.field public static BUILT_ACCOUNT_CAPABILITIES:[I = null

.field public static final BUILT_ACCOUNT_FEATURE_FLAG_ICC_FOR_DATA_ONLY:I = -0x80000000

.field public static final BUILT_ACCOUNT_MAIN_FLAG_NV:I = 0x2

.field public static final BUILT_ACCOUNT_MAIN_FLAG_RUIM:I = 0x4

.field public static final BUILT_ACCOUNT_MAIN_FLAG_UICC:I = 0x10

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM:I = 0x1

.field public static final BUILT_ACCOUNT_MAIN_FLAG_USIM_RUIM:I = 0x8

.field public static final BUILT_DATA_CAPABILITIES:I

.field public static final BUILT_DATA_MAIN_FLAG_DEFAULT:I = 0x1

.field public static final BUILT_DATA_MAIN_FLAG_MM:I = 0x2

.field public static final BUILT_PHONE_CAPABILITIES:I

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_DUAL_STAND_BY:I = 0x40000000

.field public static final BUILT_PHONE_FEATURE_FLAG_DUAL_MODE_SINGLE_STAND_BY:I = 0x20000000

.field public static final BUILT_PHONE_FEATURE_FLAG_WORLD_PHONE:I = -0x80000000

.field public static final BUILT_PHONE_MAIN_FLAG_CDMA:I = 0x2

.field public static final BUILT_PHONE_MAIN_FLAG_GSM:I = 0x1

.field public static final BUILT_PHONE_MAIN_FLAG_GSM1:I = 0x4

.field public static final BUILT_RAT_CAPABILITIES:I

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_CDMA:I = 0x2

.field public static final BUILT_RAT_MAIN_FLAG_LTE_BOUND_UMTS:I = 0x1

.field public static final BUILT_RIL_CAPABILITIES:I

.field public static final BUILT_RIL_MAIN_FLAG_AT_BASED:I = 0x1

.field public static final BUILT_RIL_MAIN_FLAG_QMI:I = 0x2

.field public static final BUILT_SMS_CAPABILITIES:I

.field public static final BUILT_TABLET_CAPABILITIES:I

.field public static final BUILT_TABLET_FEATURE_PHONE_ENABLED:I = -0x80000000

.field public static final BUILT_TABLET_FEATURE_WIFI_ONLY:I = 0x40000000

.field private static final M7_WITH_LTE:Z

.field private static final PROP_KEY_BUILD_PROJECT:Ljava/lang/String; = "ro.build.project"

.field private static final PROP_KEY_PHONE_FUNCTION:Ljava/lang/String; = "ro.phone.function"

.field private static final PROP_KEY_WORLD_PHONE_UI_ENABLED:Ljava/lang/String; = "persist.radio.worldphone"

.field private static final TAG:Ljava/lang/String; = "HtcTelephonyCapability"

.field private static sAccAccountMainFlag:I

.field private static sDefaultNetworkMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    const-string v3, "build_account_main_flag"

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    const-string/jumbo v1, "ro.build.project"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "M7_UL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->M7_WITH_LTE:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltPhoneCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltTabletCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_TABLET_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltAccountCapabilites()[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_ACCOUNT_CAPABILITIES:[I

    sput v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_DATA_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltSmsCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_SMS_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRilCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RIL_CAPABILITIES:I

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getBuiltRatCapabilities()I

    move-result v1

    sput v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_RAT_CAPABILITIES:I

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBuiltAccountCapabilites()[I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    if-ne v2, v5, :cond_1

    new-array v0, v5, [I

    aput v4, v0, v4

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcTelephonyCapability;->getCdmaAccountFlagByConfig()I

    move-result v1

    aget v2, v0, v4

    or-int/2addr v2, v1

    aput v2, v0, v4

    :cond_0
    return-object v0

    :cond_1
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    if-ne v2, v6, :cond_2

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    aget v2, v0, v5

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    goto :goto_0

    :cond_2
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    new-array v0, v5, [I

    aput v4, v0, v4

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto :goto_0

    :cond_3
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    new-array v0, v5, [I

    aput v4, v0, v4

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    new-array v0, v6, [I

    fill-array-data v0, :array_1

    aget v2, v0, v5

    const v3, -0x7ffffff0

    or-int/2addr v2, v3

    aput v2, v0, v5

    goto :goto_0

    :cond_5
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    aget v2, v0, v5

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    goto :goto_0

    :cond_6
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    new-array v0, v6, [I

    fill-array-data v0, :array_3

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    aget v2, v0, v5

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    goto :goto_0

    :cond_7
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    new-array v0, v5, [I

    aput v4, v0, v4

    goto :goto_0

    :cond_8
    sget v2, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-array v0, v5, [I

    aput v4, v0, v4

    aget v2, v0, v4

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v4

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v5, [I

    aput v4, v0, v4

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    aget v2, v0, v5

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v5, [I

    aput v4, v0, v4

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static final getBuiltPhoneCapabilities()I
    .locals 10

    const/high16 v9, -0x80000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "build_main_phone_type_GSM"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "build_main_phone_type_CDMA"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "build_main_phone_type_SubGSM"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    const-string v5, "HtcTelephonyCapability"

    const-string/jumbo v6, "traditional single GSM/CDMA/World-phone"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    or-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string/jumbo v6, "radio_type"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string/jumbo v6, "radio_type"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    :cond_4
    const-string/jumbo v5, "persist.radio.worldphone"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-ne v5, v8, :cond_5

    or-int/2addr v0, v9

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v5

    const-string v6, "build_phone_feature_stand_by"

    invoke-static {v5, v6, v7}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_7

    const/high16 v5, 0x40000000    # 2.0f

    or-int/2addr v0, v5

    :goto_2
    return v0

    :pswitch_1
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_2
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_6
    sget v5, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    packed-switch v5, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    :pswitch_4
    or-int/2addr v0, v9

    goto :goto_1

    :cond_7
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const/high16 v5, 0x20000000

    or-int/2addr v0, v5

    goto :goto_2

    :cond_8
    const-string v5, "HtcTelephonyCapability"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The project is not dual project , phone_feature_type_stand_by = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static final getBuiltRatCapabilities()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string/jumbo v4, "radio_type"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v3

    const-string/jumbo v4, "support_lte"

    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/ACCCustomizationReader;->readBoolean(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Z)Z

    move-result v0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_2
    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_4
    if-eqz v0, :cond_0

    or-int/lit8 v1, v1, 0x2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private static final getBuiltRilCapabilities()I
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getRilReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string/jumbo v1, "support_ril_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/ACCCustomizationReader;->readInteger(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static final getBuiltSmsCapabilities()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final getBuiltTabletCapabilities()I
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "ro.phone.function"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public static getCapabilityLength([I)I
    .locals 1

    if-eqz p0, :cond_0

    array-length v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCdmaAccountFlagByConfig()I
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v0, 0x0

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    const-string v1, "HtcTelephonyCapability"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCdmaAccountFlagByConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    if-eq v1, v3, :cond_2

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sAccAccountMainFlag:I

    if-ne v1, v4, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    if-eq v1, v3, :cond_6

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    if-eq v1, v4, :cond_8

    sget v1, Lcom/android/internal/telephony/HtcTelephonyCapability;->sDefaultNetworkMode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :cond_8
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static isCapabilitiesEnabled(II)Z
    .locals 1

    and-int v0, p1, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabledInMultiCapabilities(I[I)Z
    .locals 5

    if-eqz p1, :cond_1

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcTelephonyCapability;->isCapabilitiesEnabled(II)Z

    move-result v4

    if-eqz v4, :cond_0

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
