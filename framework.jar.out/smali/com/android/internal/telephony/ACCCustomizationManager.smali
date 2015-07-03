.class public Lcom/android/internal/telephony/ACCCustomizationManager;
.super Ljava/lang/Object;
.source "ACCCustomizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ACCCustomizationManager$SkuID;,
        Lcom/android/internal/telephony/ACCCustomizationManager$Region;
    }
.end annotation


# static fields
.field public static READER_NAME_PHONE:Ljava/lang/String;

.field public static READER_NAME_RIL:Ljava/lang/String;

.field public static READER_NAME_SYSTEM:Ljava/lang/String;

.field public static READER_NAME_TELEPHONY:Ljava/lang/String;

.field public static final REGION:I

.field public static final SKU_ID:I

.field private static mManager:Lcom/htc/customization/HtcCustomizationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    const-string/jumbo v0, "system"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_SYSTEM:Ljava/lang/String;

    const-string v0, "Android_Telephony"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_TELEPHONY:Ljava/lang/String;

    const-string v0, "Android_Ril"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    const-string v0, "Phone"

    sput-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->initSkuID()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->initRegion()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/ACCCustomizationManager;->REGION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_PHONE:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getRilReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_RIL:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getStatus()I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/customization/HtcCustomizationManager;->getStatus()I

    move-result v0

    return v0
.end method

.method public static getSystemReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_SYSTEM:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyReader()Lcom/htc/customization/HtcCustomizationReader;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    sget-object v1, Lcom/android/internal/telephony/ACCCustomizationManager;->READER_NAME_TELEPHONY:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    return-object v0
.end method

.method private static initRegion()I
    .locals 3

    const-string/jumbo v1, "region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static initSkuID()I
    .locals 3

    const-string/jumbo v1, "sku_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/customization/HtcCustomizationSystemReaderImpl;->readInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isATTSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCMCCSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCTSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCUSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaRegion()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->REGION:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTCLASku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLAESNTELCELSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNELLabSku()Z
    .locals 3

    invoke-static {}, Lcom/android/internal/telephony/ACCCustomizationManager;->getSystemReader()Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v0

    const-string v1, "for_nel"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSprintGroupSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0x62

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVerizonSku()Z
    .locals 2

    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readCID()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/ACCCustomizationManager;->mManager:Lcom/htc/customization/HtcCustomizationManager;

    invoke-virtual {v0}, Lcom/htc/customization/HtcCustomizationManager;->readCID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
