.class public Lcom/android/internal/telephony/cdma/HtcCdmaModifier;
.super Ljava/lang/Object;
.source "HtcCdmaModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;
    }
.end annotation


# static fields
.field private static final ADC_LIST_FLAG:Ljava/lang/String; = "cdma_adc_list"

.field private static final ADC_LIST_FLAG_CHAMELEON:Ljava/lang/String; = "cdma_adc_list_chameleon"

.field private static final ADC_STRING_TOKEN:C = ';'

.field private static final BOM_LENGTH:I = 0x3

.field private static final CARRIERID_CSPIRE:I = 0xd

.field private static final CARRIER_ID_ATTRIBUTE:Ljava/lang/String; = "id"

.field private static final CARRIER_INFO_FILE_NAME:Ljava/lang/String; = "carrier-info.xml"

.field private static final CARRIER_INFO_FILE_PATH:Ljava/lang/String; = "/system/customize/resource/"

.field private static final CARRIER_MCC_ATTRIBUTE:Ljava/lang/String; = "mcc"

.field private static final CARRIER_MNC_ATTRIBUTE:Ljava/lang/String; = "mnc"

.field private static final CARRIER_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field private static final CARRIER_TAG:Ljava/lang/String; = "carrier"

.field private static final CARRIER_UPDATE_VM_ATTRIBUTE:Ljava/lang/String; = "updateVmAfterOtasp"

.field private static final CARRIER_VM_ATTRIBUTE:Ljava/lang/String; = "vm"

.field private static final CallernumberOverwrittenPathes:[Ljava/lang/String;

.field private static final DBG:Z

.field private static final MAX_CARRIER_INFO_FILE_SIZE:J = 0x19000L

.field private static final MAX_CARRIER_RECORDS_COUNT:I = 0x3e8

.field private static final MDN_TOKEN:Ljava/lang/String; = "mdn"

.field public static final PROPERTY_CARRIER_ID_FOR_ACG:Ljava/lang/String; = "persist.radio.acg_carrier"

.field private static final ROOT_TAG:Ljava/lang/String; = "carriers"

.field private static final SDBG:Z = false

.field private static final TAG:Ljava/lang/String; = "HtcCdmaModifier"

.field private static final mAdcMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

.field private static mCarrierMap:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mEmergencyDisplay_Sprint:Ljava/lang/String; = "9-1-1 Emergency"

.field private static final sEmergencyDisplay:Ljava/lang/String; = "9-1-1 Emergency"


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v5

    const-string v1, "cdma_adc_list"

    if-eqz v5, :cond_0

    const-string v1, "cdma_adc_list_chameleon"

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Lcom/android/internal/telephony/ACCCustomizationReader;->readStringArray(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v10, v2

    if-lez v10, :cond_3

    move-object v3, v2

    array-length v6, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v3, v4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    const/16 v10, 0x3b

    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-lez v9, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v10, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v10, "HtcCdmaModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal adc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v10, "HtcCdmaModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "empty or null adc: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-boolean v10, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->loadCarrierInfoData()V

    :cond_4
    const/16 v10, 0x14

    new-array v10, v10, [[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput-object v14, v12, v13

    aput-object v12, v10, v11

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    const/16 v10, 0x14

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/carrier/Customization/ADC/First"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "/carrier/Customization/ADC/Second"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "/carrier/Customization/ADC/Third"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "/carrier/Customization/ADC/Fourth"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "/carrier/Customization/ADC/Fifth"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const-string v12, "/carrier/Customization/ADC/Sixth"

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "/carrier/Customization/ADC/Seventh"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    const-string v12, "/carrier/Customization/ADC/Eighth"

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "/carrier/Customization/ADC/Eigth"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    const-string v12, "/carrier/Customization/ADC/Ninth"

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "/carrier/Customization/ADC/Tenth"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    const-string v12, "/carrier/Customization/ADC/Eleventh"

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "/carrier/Customization/ADC/Elevnth"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    const-string v12, "/carrier/Customization/ADC/Twelfth"

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string v12, "/carrier/Customization/ADC/Thirteenth"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    const-string v12, "/carrier/Customization/ADC/Fourteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string v12, "/carrier/Customization/ADC/Fifteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    const-string v12, "/carrier/Customization/ADC/Sixteenth"

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string v12, "/carrier/Customization/ADC/Seventeenth"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    const-string v12, "/carrier/Customization/ADC/Eighteenth"

    aput-object v12, v10, v11

    sput-object v10, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getACGServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0xd

    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcCdmaModifier"

    const-string v2, "getACGServiceName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.radio.acg_carrier"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getOperatorByCarrierId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "HtcCdmaModifier"

    const-string v2, "getACGServiceName append carrier name for C Spire Wireless"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static getCellSouthCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getCellSouthCallerName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMccByNVvalue(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getMcc()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMccMncByCarrierId(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMccByNVvalue(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMncByNVvalue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getMnc()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    const-string v0, "00"

    :cond_1
    return-object v0

    :cond_2
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOperatorByCarrierId(I)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getOverwriteCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getOverwriteCallEndName should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOverwriteRoamingCallEndName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcCdmaModifier"

    const-string v1, "getOverwriteRoamingCallEndName should not be called"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_2

    const-string v0, "911"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "411"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "*4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "Roaming"

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string v3, "getServiceName should not be called"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    const-string v2, "*9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string v1, "Correo de voz"

    goto :goto_0

    :cond_3
    const-string v2, "*5"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "Consulta de Saldo"

    goto :goto_0

    :cond_4
    const-string v2, "*1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Emergencia"

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    const-string v2, "*21"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Recarga Prepago"

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const-string v2, "*611"

    invoke-virtual {p0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "Atenci\u00f3n al Cliente"

    goto :goto_0
.end method

.method public static getVoiceMailNumberByCarrierId(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v2

    const-string v3, "cdma_vm_number"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/ACCCustomizationReader;->readString(Lcom/htc/customization/HtcCustomizationReader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    sget-boolean v2, Lcom/android/internal/telephony/HtcBuildUtils;->DetectVMbyCarrierIdFromNV:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->getVoicemailNumber()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mdn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isN11Number(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUpdateVmNumberAfterProvisionByCarrierId(I)Z
    .locals 4

    const/4 v0, 0x1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;->isUpdateVmNumberAfterProvision()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "HtcCdmaModifier"

    const-string v3, "carrier data not loaded or is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadCarrierInfoData()V
    .locals 28

    const-wide/16 v22, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    new-instance v8, Ljava/io/File;

    const-string v3, "/system/customize/resource/"

    const-string v4, "carrier-info.xml"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v16

    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info.xml exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v12, :cond_11

    const-wide/32 v4, 0x19000

    cmp-long v3, v16, v4

    if-gtz v3, :cond_11

    const/4 v13, 0x0

    const/16 v24, 0x0

    :try_start_0
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v20, Ljava/io/PushbackInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v15, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v15, v3, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/io/PushbackInputStream;->read()I

    move-result v9

    const/16 v3, 0x3c

    if-ne v9, v3, :cond_8

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_2
    new-instance v14, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, "carriers"

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 v10, 0x0

    :cond_3
    :goto_1
    const/16 v3, 0x3e8

    if-ge v10, v3, :cond_4

    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface/range {v24 .. v24}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_9

    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "HtcCdmaModifier"

    const-string v4, "end parsing carrier-info.xml"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v3, 0x3e8

    if-ne v10, v3, :cond_5

    const-string v3, "HtcCdmaModifier"

    const-string v4, "carrier count may exceed limitation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    if-eqz v14, :cond_6

    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    :goto_2
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v14

    :cond_7
    :goto_3
    return-void

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_9
    :try_start_3
    const-string v3, "carrier"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    const-string v4, "id"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/4 v3, 0x0

    const-string/jumbo v4, "updateVmAfterOtasp"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    new-instance v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;

    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    move-object/from16 v0, v24

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "mcc"

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string/jumbo v6, "mnc"

    move-object/from16 v0, v24

    invoke-interface {v0, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v25, "vm"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cdma/HtcCdmaModifier$CarrierInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCarrierMap:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_a
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catch_0
    move-exception v11

    move-object v13, v14

    :goto_4
    :try_start_4
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info xml file not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v13, :cond_b

    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_b
    :goto_5
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v11

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_2
    move-exception v11

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_3
    move-exception v11

    :goto_6
    :try_start_6
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xmlPullParser.setInput exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v13, :cond_c

    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :cond_c
    :goto_7
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_4
    move-exception v11

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_5
    move-exception v11

    :goto_8
    :try_start_8
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XmlUtils.beginDocument exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v13, :cond_d

    :try_start_9
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_d
    :goto_9
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_6
    move-exception v11

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_7
    move-exception v11

    :goto_a
    :try_start_a
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse carrier id failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v13, :cond_e

    :try_start_b
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :cond_e
    :goto_b
    sget-boolean v3, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadCarrierInfoData spent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_8
    move-exception v11

    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileReader.close exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :catchall_0
    move-exception v3

    :goto_c
    if-eqz v13, :cond_f

    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    :cond_f
    :goto_d
    sget-boolean v4, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v4, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v22, v4, v22

    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadCarrierInfoData spent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    throw v3

    :catch_9
    move-exception v11

    const-string v4, "HtcCdmaModifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileReader.close exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    if-nez v12, :cond_12

    const-string v3, "HtcCdmaModifier"

    const-string v4, "carrier-info.xml not exists"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_12
    const-string v3, "HtcCdmaModifier"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carrier-info.xml size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, the max limitation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v26, 0x19000

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_1
    move-exception v3

    move-object v13, v14

    goto/16 :goto_c

    :catch_a
    move-exception v11

    move-object v13, v14

    goto/16 :goto_a

    :catch_b
    move-exception v11

    move-object v13, v14

    goto/16 :goto_8

    :catch_c
    move-exception v11

    move-object v13, v14

    goto/16 :goto_6

    :catch_d
    move-exception v11

    goto/16 :goto_4

    :cond_13
    move-object v13, v14

    goto/16 :goto_3
.end method

.method public static loadChameleonADCData()V
    .locals 11

    sget-boolean v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcCdmaModifier"

    const-string v9, ">> Load Chameleon ADC codes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    :goto_0
    :try_start_0
    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    array-length v8, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v6, v8, :cond_4

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_1
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v5, Ljava/io/FileReader;

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->CallernumberOverwrittenPathes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget-object v8, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    aput-object v10, v8, v9

    sget-object v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v6

    aget-object v8, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v0, v10

    aput-object v10, v8, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    move-object v4, v5

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    sget-boolean v8, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v8, :cond_5

    const-string v8, "HtcCdmaModifier"

    const-string v9, "<< Load Chameleon ADC codes"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catch_2
    move-exception v3

    :goto_2
    :try_start_6
    const-string v8, "HtcCdmaModifier"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_3
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_6
    :goto_4
    :try_start_a
    throw v8

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_3

    :catchall_2
    move-exception v8

    move-object v4, v5

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_6
    move-exception v3

    move-object v4, v5

    move-object v1, v2

    goto :goto_2
.end method

.method public static overwriteCallerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p0, :cond_3

    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName return null because number is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSupportSprintChameleon()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    const-string/jumbo v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mCallernumberOverwritten_SprintChameleon:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v1, v2, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->mAdcMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_6
    sget-boolean v2, Lcom/android/internal/telephony/cdma/HtcCdmaModifier;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "HtcCdmaModifier"

    const-string/jumbo v3, "overwriteCallerName not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
