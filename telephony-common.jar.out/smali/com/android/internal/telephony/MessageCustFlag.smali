.class public Lcom/android/internal/telephony/MessageCustFlag;
.super Ljava/lang/Object;
.source "MessageCustFlag.java"


# static fields
.field private static final AP_NAME_ANDROID_MESSAGE:Ljava/lang/String; = "Message"

.field private static final AP_NAME_ANDROID_TELEPHONYMESSAGE:Ljava/lang/String; = "Android_TelephonyMessage"

.field private static final AP_NAME_PHONE_CONTACTS:Ljava/lang/String; = "Phone_Contacts"

.field private static final AP_NAME_SYSTEM:Ljava/lang/String; = "System"

.field private static final BELL_MOBILITY_WWE:I = 0x5

.field private static final BOOST_NETWORKCODE:Ljava/lang/String; = "311870"

.field private static final FLAG_HAS_ITS_ON_AP:Ljava/lang/String; = "has_its_on_ap"

.field private static final FLAG_SENSE_VERSION:Ljava/lang/String; = "sense_version"

.field private static final FLAG_SKU_ID:Ljava/lang/String; = "sku_id"

.field private static final FLAG_SUPPORT_LTE:Ljava/lang/String; = "support_lte"

.field protected static final MCCMNC_APTG:Ljava/lang/String; = "46605"

.field private static final MCCMNC_HUTCHISON_TEL:Ljava/lang/String; = "45404"

.field private static final RADIOTYPE_CDMA_LTE:I = 0x5

.field private static final RADIOTYPE_WORLDPHONE_LETBOUNDCDMA:I = 0x8

.field private static final SKU_ACG_US:I = 0x72

.field private static final SKU_APTG_TW:I = 0x4b

.field private static final SKU_BRIGHTSTAR_TELCEL_SPA:I = 0x10

.field private static final SKU_CELLSOUTH_WWE:I = 0x5e

.field private static final SKU_CINGULAR_USA:I = 0x7

.field private static final SKU_CRICKET_US:I = 0x8

.field private static final SKU_HTCCN_CHS:I = 0x19

.field private static final SKU_HTCCN_CHS_CMCC:I = 0x1a

.field private static final SKU_HTCCN_CHS_CT:I = 0x1b

.field private static final SKU_HTCCN_CHS_CT_LAB:I = 0x1c

.field private static final SKU_HTC_ASIA_AUS:I = 0x20

.field private static final SKU_HTC_ASIA_INDIA:I = 0x21

.field private static final SKU_HTC_ASIA_TW:I = 0x49

.field private static final SKU_HTC_LA_AMX_SPA:I = 0x12

.field private static final SKU_HTC_LA_IUSACELL_MX_SPA:I = 0x16

.field private static final SKU_HTC_WWE_MMR:I = 0x4

.field private static final SKU_KDDI_JP:I = 0x1f

.field private static final SKU_KDDI_ODM_JP:I = 0x4f

.field private static final SKU_LA_ESN_TELCEL:I = 0x15

.field private static final SKU_LRA_US:I = 0x71

.field private static final SKU_METROPCS_US:I = 0x51

.field private static final SKU_O2_UK:I = 0x2d

.field private static final SKU_OPENMOBILE_US:I = 0x52

.field private static final SKU_OPTUS_AU:I = 0x24

.field private static final SKU_ORANGE_UK:I = 0x32

.field private static final SKU_SPRINT_WWE:I = 0xa

.field private static final SKU_SPRINT_WWE_BOOST:I = 0x55

.field private static final SKU_SPRINT_WWE_VM:I = 0x62

.field private static final SKU_TELSTRA_WWE:I = 0x25

.field private static final SKU_TMOUS:I = 0xb

.field private static final SKU_TMO_DE:I = 0x38

.field private static final SKU_UTSTARCOM_WWE_GENERIC:I = 0xc

.field private static final SKU_VERIZON_WWE:I = 0xd

.field private static final SKU_VODAFONE_AT:I = 0x3d

.field private static final SKU_VODAFONE_CH_GER:I = 0x3e

.field private static final SKU_VODAFONE_FRA:I = 0x3f

.field private static final SKU_VODAFONE_GER:I = 0x40

.field private static final SKU_VODAFONE_NL:I = 0x41

.field private static final SKU_VODAFONE_PTG:I = 0x42

.field private static final SKU_VODAFONE_SPA:I = 0x43

.field private static final SKU_VODAFONE_UK:I = 0x44

.field private static final SPRINT_NETWORKCODE:Ljava/lang/String; = "310120"

.field public static final STRING_DEFAULT_NA:Ljava/lang/String; = "NA"

.field private static final TAG:Ljava/lang/String; = "MessageCustFlag"

.field private static final VMUS_NETWORKCODE:Ljava/lang/String; = "311490"

.field private static messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

.field private static messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

.field private static systemCustReader:Lcom/htc/customization/HtcCustomizationReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 74
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 75
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 76
    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v0

    .line 98
    .local v0, "custManager":Lcom/htc/customization/HtcCustomizationManager;
    if-eqz v0, :cond_4

    .line 99
    const-string v1, "System"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 100
    const-string v1, "Android_TelephonyMessage"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 101
    const-string v1, "Message"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 102
    const-string v1, "Phone_Contacts"

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    .line 107
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 108
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_1

    .line 112
    const-string v1, "MessageCustFlag"

    const-string v2, "messageCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_2

    .line 116
    const-string v1, "MessageCustFlag"

    const-string v2, "sMessageApCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_3

    .line 120
    const-string v1, "MessageCustFlag"

    const-string v2, "sPhoneContactsCustReader is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    return-void

    .line 104
    :cond_4
    const-string v1, "MessageCustFlag"

    const-string v2, "custManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkAndInit()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/MessageCustFlag;

    invoke-direct {v0}, Lcom/android/internal/telephony/MessageCustFlag;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustFlag:Lcom/android/internal/telephony/MessageCustFlag;

    .line 127
    :cond_1
    return-void
.end method

.method public static getCustomizeDefaultSmsAp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2115
    const-string v0, "telephony_sms_default_sms_ap"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmailGatewayNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1947
    const-string v0, "telephony_sms_email_gateway_number"

    const-string v1, "NA"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 203
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 205
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMessageApCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageApStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 247
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sMessageApCustReader is null! return string defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getMessageBooleanCustFlag(Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 140
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 142
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method private static getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # [Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 184
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 185
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string array defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local p1    # "defaultValue":[Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":[Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static getMessageStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 163
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 164
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageCustReader is null! return string defaultValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->messageCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getMobilBoxPro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2089
    const-string v0, "de.telekom.mds.mbp"

    return-object v0
.end method

.method public static getOperatorDefineSmsShortCode()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2029
    const-string v0, "telephony_sms_operator_define_sms_short_code"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageStringArrayCustFlag(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneContactsIntegerCustFlag(Ljava/lang/String;I)I
    .locals 3
    .param p0, "flagName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 224
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 226
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v0, :cond_0

    .line 227
    const-string v0, "MessageCustFlag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sPhoneContactsCustReader is null! return boolean defaultValue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultValue":I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MessageCustFlag;->sPhoneContactsCustReader:Lcom/htc/customization/HtcCustomizationReader;

    invoke-interface {v0, p0, p1}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getSenseVersion()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 284
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v3, :cond_1

    .line 285
    const-string v3, "MessageCustFlag"

    const-string v4, "systemCustReader is null! getSenseVersion return default 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .local v1, "senseVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 289
    .end local v1    # "senseVersion":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v4, "sense_version"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .restart local v1    # "senseVersion":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sense_version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 296
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 297
    const-string v3, "a"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 299
    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 303
    const-string v3, "MessageCustFlag"

    const-string v4, "get wrong Sense version!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getSkuId()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 262
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 264
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 265
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return -1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .local v0, "skuId":I
    :goto_0
    return v0

    .line 269
    .end local v0    # "skuId":I
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "sku_id"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v0

    .line 270
    .restart local v0    # "skuId":I
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sku_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isAptgProject()Z
    .locals 6

    .prologue
    .line 552
    const-string v1, "46605"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 553
    .local v0, "isAPTGmccmnc":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAPTGmccmnc : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x4b

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    const/16 v2, 0x49

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    const/4 v1, 0x1

    .line 559
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAttSku()Z
    .locals 2

    .prologue
    .line 415
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 416
    .local v0, "skuId":I
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 417
    const/4 v1, 0x1

    .line 419
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isBoostProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 505
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 509
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_1

    .line 513
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 509
    goto :goto_0

    .line 510
    :cond_2
    const-string v3, "311870"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 513
    goto :goto_0
.end method

.method private static isCmccSku()Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 408
    .local v0, "skuId":I
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 409
    const/4 v1, 0x1

    .line 411
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCricketUsSku()Z
    .locals 2

    .prologue
    .line 423
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 424
    .local v0, "skuId":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 425
    const/4 v1, 0x1

    .line 427
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isCtSku()Z
    .locals 2

    .prologue
    .line 397
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 398
    .local v0, "skuId":I
    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 401
    :cond_0
    const/4 v1, 0x1

    .line 403
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtEmsFormat()Z
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 618
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 623
    :cond_0
    const/4 v1, 0x1

    .line 625
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowCtWapPushSmsFormat()Z
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 580
    .local v0, "skuId":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 583
    :cond_0
    const/4 v1, 0x1

    .line 585
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFollowSprintWapPushSmsFormat()Z
    .locals 1

    .prologue
    .line 595
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    const/4 v0, 0x1

    .line 599
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHtcAsiaAusSku()Z
    .locals 2

    .prologue
    .line 382
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 383
    .local v0, "skuId":I
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKddiSku()Z
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 373
    .local v0, "skuId":I
    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    .line 376
    :cond_0
    const/4 v1, 0x1

    .line 378
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobilBoxPro(Ljava/lang/String;)Z
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2093
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2094
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    .line 2095
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getMobilBoxPro()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2096
    const/4 v1, 0x1

    .line 2099
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNotSupportCmasAck()Z
    .locals 1

    .prologue
    .line 1500
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isNotSupportPhoneNumBlockListCheck()Z
    .locals 2

    .prologue
    .line 2046
    const-string v0, "message_sms_is_support_skip_people_blocklist_check"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageApBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotSupportRetryForImsSms()Z
    .locals 1

    .prologue
    .line 1114
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method private static isO2UkSku()Z
    .locals 2

    .prologue
    .line 448
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 449
    .local v0, "skuId":I
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 450
    const/4 v1, 0x1

    .line 452
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOptusSku()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 388
    .local v0, "skuId":I
    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isOrangeUkSku()Z
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 457
    .local v0, "skuId":I
    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 458
    const/4 v1, 0x1

    .line 460
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPendingMsgRepoEnabled()Z
    .locals 1

    .prologue
    .line 1736
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSprintProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 482
    goto :goto_0

    .line 483
    :cond_2
    const-string v3, "310120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 486
    goto :goto_0
.end method

.method public static isSupportAcms()Z
    .locals 3

    .prologue
    .line 977
    const-string v1, "message_ambs_application_id"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageApStringCustFlag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, "appId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 979
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 981
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportAlwaysAllowWalletApMoPremiumSms()Z
    .locals 1

    .prologue
    .line 1546
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAttCmasMechanism()Z
    .locals 1

    .prologue
    .line 997
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportAudioOgg()Z
    .locals 1

    .prologue
    .line 2268
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportAudioQcp()Z
    .locals 1

    .prologue
    .line 2277
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportBmPtt()Z
    .locals 2

    .prologue
    .line 2199
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2200
    .local v0, "skuId":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCDMALTESmartPhoneCmas()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2375
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCdmaLteRadioType()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportWorldphoneLteBoundCdmaRadioType()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 2377
    .local v1, "isCdmaLteOrWorldPhoneLte":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2378
    sget-object v2, Lcom/android/internal/telephony/MessageCustFlag;->sMessageApCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "message_sms_is_support_cdma_cmasoverlte"

    invoke-interface {v2, v3, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2379
    .local v0, "isAccFlag":Z
    const-string v2, "MessageCustFlag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_sms_is_support_cdma_cmasoverlte = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    .end local v0    # "isAccFlag":Z
    :cond_1
    return v0

    .end local v1    # "isCdmaLteOrWorldPhoneLte":Z
    :cond_2
    move v1, v0

    .line 2375
    goto :goto_0
.end method

.method public static isSupportCdmaCmas4100()Z
    .locals 1

    .prologue
    .line 2236
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    const/4 v0, 0x0

    .line 2239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportCdmaLteRadioType()Z
    .locals 5

    .prologue
    .line 2316
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 2317
    const/4 v0, 0x0

    .line 2319
    .local v0, "bSupport":Z
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 2320
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! isSupportCdmaLteRadioType return default false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2327
    :goto_0
    return v0

    .line 2324
    :cond_0
    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "radio_type"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2325
    :goto_1
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_cdma_lte = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2324
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isSupportCdmaSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1668
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    const/4 v0, 0x1

    .line 1672
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportCmasExerciseAlert()Z
    .locals 2

    .prologue
    .line 2017
    const-string v0, "telephony_sms_is_support_cmas_exercise_alert"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCmasSecondaryLanguage()Z
    .locals 1

    .prologue
    .line 808
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

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

.method public static isSupportConvertDTMF0ToASCII0()Z
    .locals 1

    .prologue
    .line 1720
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    return v0
.end method

.method public static isSupportCricketUserData()Z
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCricketUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportCtMoFormat()Z
    .locals 2

    .prologue
    .line 1917
    const-string v0, "telephony_sms_is_support_c9_mo_format"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportCtPrefixPlusSignToPhoneNumber()Z
    .locals 1

    .prologue
    .line 1573
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportDefaultTableNoNli()Z
    .locals 2

    .prologue
    .line 2249
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2250
    .local v0, "skuId":I
    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportEmsForPhoneType(I)Z
    .locals 2
    .param p0, "phoneType"    # I

    .prologue
    .line 937
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 938
    .local v0, "skuId":I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_0

    const/16 v1, 0x51

    if-eq v0, v1, :cond_0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x71

    if-eq v0, v1, :cond_0

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    .line 953
    :cond_0
    const/4 v1, 0x0

    .line 956
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSupportEmsForSubscriber(J)Z
    .locals 2
    .param p0, "subId"    # J

    .prologue
    .line 907
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterAttVvmSms()Z
    .locals 1

    .prologue
    .line 2083
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportFilterVerizonVvmSms()Z
    .locals 1

    .prologue
    .line 2077
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportForcePlusCodeWith011()Z
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportForceRemovePlusCode()Z
    .locals 4

    .prologue
    .line 835
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v1

    .line 840
    .local v1, "skuId":I
    const-string v2, "HTC__038"

    const-string v3, "ro.cid"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x21

    if-ne v1, v2, :cond_2

    .line 842
    :cond_0
    const/4 v0, 0x1

    .line 848
    .local v0, "isAsiaInd":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcMsgConfig;->isAPTG()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    .line 852
    :cond_1
    const/4 v2, 0x1

    .line 855
    :goto_1
    return v2

    .line 844
    .end local v0    # "isAsiaInd":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isAsiaInd":Z
    goto :goto_0

    .line 855
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSupportGepApps()Z
    .locals 2

    .prologue
    .line 1828
    const-string v0, "telephony_sms_is_support_gep_app"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportGsmSmsDuplicationDetect()Z
    .locals 1

    .prologue
    .line 1694
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTelstraSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOptusSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isHtcAsiaAusSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    :cond_0
    const/4 v0, 0x1

    .line 1701
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHtcSmsRetry()Z
    .locals 1

    .prologue
    .line 2214
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportImsSms()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2177
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2179
    :goto_0
    return v0

    :cond_0
    const-string v1, "telephony_sms_is_support_ims_sms"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSupportItsOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 342
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 343
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .local v0, "itsOnEnabled":Z
    :goto_0
    return v0

    .line 347
    .end local v0    # "itsOnEnabled":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "has_its_on_ap"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 348
    .restart local v0    # "itsOnEnabled":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has_its_on_ap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportKSC5601Encoding()Z
    .locals 1

    .prologue
    .line 1488
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiAtMailWapPush()Z
    .locals 1

    .prologue
    .line 667
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiBcsms()Z
    .locals 1

    .prologue
    .line 1434
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaNackWith0x23()Z
    .locals 1

    .prologue
    .line 1141
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiCdmaSmsFormat()Z
    .locals 1

    .prologue
    .line 711
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const/4 v0, 0x1

    .line 715
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiCheckDuplicateSms()Z
    .locals 1

    .prologue
    .line 1330
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiDetectDataActivityCallstateForMoSms()Z
    .locals 1

    .prologue
    .line 1239
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiEmoji()Z
    .locals 1

    .prologue
    .line 1183
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiGsmNackWith0x16()Z
    .locals 1

    .prologue
    .line 1126
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiIgnoreCbConfig()Z
    .locals 1

    .prologue
    .line 678
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiLteDuplicateCbMechanism()Z
    .locals 1

    .prologue
    .line 1362
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiLteDuplicateSmsMechanism()Z
    .locals 1

    .prologue
    .line 1343
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMessageId()Z
    .locals 1

    .prologue
    .line 1295
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiMessageIdMechanism()Z
    .locals 1

    .prologue
    .line 1769
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiMtCmail()Z
    .locals 1

    .prologue
    .line 1788
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKddiOtasp()Z
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    const/4 v0, 0x1

    .line 764
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiSetCallBackToTpoa()Z
    .locals 1

    .prologue
    .line 647
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMoSms()Z
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiShiftJisMtSms()Z
    .locals 1

    .prologue
    .line 1223
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiSlamdownSms()Z
    .locals 1

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiTwoByteLF()Z
    .locals 1

    .prologue
    .line 1751
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportKddiUnicodeWemtByteCount()Z
    .locals 1

    .prologue
    .line 1252
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKddiWemtEncoding()Z
    .locals 1

    .prologue
    .line 694
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportKtDiscardSms()Z
    .locals 1

    .prologue
    .line 1382
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtHideTpoa()Z
    .locals 1

    .prologue
    .line 1402
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtMsisdnUpdate()Z
    .locals 1

    .prologue
    .line 1372
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtSpecialDcs()Z
    .locals 1

    .prologue
    .line 1392
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKtUserData()Z
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    return v0
.end method

.method private static isSupportLte()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 318
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 319
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .local v0, "supportLte":Z
    :goto_0
    return v0

    .line 323
    .end local v0    # "supportLte":Z
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v2, "support_lte"

    invoke-interface {v1, v2, v0}, Lcom/htc/customization/HtcCustomizationReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 324
    .restart local v0    # "supportLte":Z
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_lte="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportMimeBSuplInit()Z
    .locals 1

    .prologue
    .line 1800
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportMms()Z
    .locals 2

    .prologue
    .line 2286
    const-string v0, "framework_mms_is_support_mms"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportNameId()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2227
    const-string v1, "cityidinfo_support_type"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getPhoneContactsIntegerCustFlag(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportNli()Z
    .locals 2

    .prologue
    .line 2189
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2190
    .local v0, "skuId":I
    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportNvidiaCBConfig()Z
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportOmaDm()Z
    .locals 2

    .prologue
    .line 1526
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 1527
    .local v0, "skuId":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x62

    if-eq v0, v1, :cond_0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_1

    .line 1530
    :cond_0
    const/4 v1, 0x1

    .line 1533
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportOrangeEmergencySMS()Z
    .locals 1

    .prologue
    .line 2150
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isOrangeUkSku()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isO2UkSku()Z

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

.method public static isSupportRedirectSmsToMobilBoxPro()Z
    .locals 2

    .prologue
    .line 2106
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 2107
    .local v0, "skuId":I
    const/16 v1, 0x38

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportRedirectTypeWap()Z
    .locals 1

    .prologue
    .line 967
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRelativeValidityPeriod()Z
    .locals 2

    .prologue
    .line 1960
    const-string v0, "telephony_sms_is_support_relative_validity_period"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportRemovePrefixZeroFromPhoneNumber()Z
    .locals 1

    .prologue
    .line 1557
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportRemoveUdhFromPayload()Z
    .locals 1

    .prologue
    .line 1016
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplacePlus1With1()Z
    .locals 1

    .prologue
    .line 1459
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportReplacePlusWith010()Z
    .locals 1

    .prologue
    .line 1476
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportReplySmsAckBeforeDispatch()Z
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportRuimRecordLength()Z
    .locals 2

    .prologue
    .line 1929
    const-string v0, "telephony_sms_is_check_ruim_record_length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSktUserData()Z
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSmsWriteUiccForMo3gppSms()Z
    .locals 1

    .prologue
    .line 2161
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    const/4 v0, 0x1

    .line 2165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportSprintDuplicatedCmasDetection()Z
    .locals 2

    .prologue
    .line 1895
    const-string v0, "telephony_sms_is_support_s5_duplicate_cmas_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintIgnoredSmsFormat()Z
    .locals 1

    .prologue
    .line 2298
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVMUSProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isBoostProject()Z

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

.method public static isSupportSprintMtSmsInEcmMode()Z
    .locals 2

    .prologue
    .line 1904
    const-string v0, "telephony_sms_is_support_s5_mt_sms_in_ecm_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintReassembleSms()Z
    .locals 2

    .prologue
    .line 1847
    const-string v0, "telephony_sms_is_support_s5_reassemble_sms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintReassembleSmsEnhance()Z
    .locals 2

    .prologue
    .line 1862
    const-string v0, "telephony_sms_is_support_s5_reassemble_sms"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintResetVoiceMailCount()Z
    .locals 2

    .prologue
    .line 2005
    const-string v0, "telephony_sms_is_support_reset_voice_mail_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintRoamingGuard()Z
    .locals 1

    .prologue
    .line 795
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSprintProject()Z

    move-result v0

    return v0
.end method

.method public static isSupportSprintSegmentIndicator()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1874
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "telephony_sms_is_support_s5_segment_indicator"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportTencentBolockList()Z
    .locals 2

    .prologue
    .line 2060
    const-string v0, "telephony_sms_tencent_security_manager"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MessageCustFlag;->getMessageBooleanCustFlag(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportTmoUsCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2136
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVerizonRadioTech()Z
    .locals 1

    .prologue
    .line 1509
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVodafoneMwiClear()Z
    .locals 1

    .prologue
    .line 1203
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVodafoneSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwCmasDuplicateCheck()Z
    .locals 1

    .prologue
    .line 2071
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwConsignApMoSmsRule()Z
    .locals 1

    .prologue
    .line 1091
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwDirectSms()Z
    .locals 1

    .prologue
    .line 1078
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteCheckMechanism()Z
    .locals 1

    .prologue
    .line 1305
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwLteRetryMechanism()Z
    .locals 1

    .prologue
    .line 1068
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNbpcd()Z
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwNotificationSms()Z
    .locals 1

    .prologue
    .line 1101
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwPlusPrependRule()Z
    .locals 1

    .prologue
    .line 1193
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwRetryDialog()Z
    .locals 1

    .prologue
    .line 1026
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportVzwUiccCsimFormat()Z
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v0

    return v0
.end method

.method public static isSupportWorldphoneLteBoundCdmaRadioType()Z
    .locals 5

    .prologue
    .line 2337
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->checkAndInit()V

    .line 2338
    const/4 v0, 0x0

    .line 2340
    .local v0, "bSupport":Z
    sget-object v1, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    if-nez v1, :cond_0

    .line 2341
    const-string v1, "MessageCustFlag"

    const-string v2, "systemCustReader is null! isSupportWorldphoneLteBoundCdmaRadioType return default false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :goto_0
    return v0

    .line 2345
    :cond_0
    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/MessageCustFlag;->systemCustReader:Lcom/htc/customization/HtcCustomizationReader;

    const-string v3, "radio_type"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/htc/customization/HtcCustomizationReader;->readInteger(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 2346
    :goto_1
    const-string v1, "MessageCustFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support_worldphone_lte = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2345
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isTelstraSku()Z
    .locals 2

    .prologue
    .line 392
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 393
    .local v0, "skuId":I
    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isTmoUsSku()Z
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 368
    .local v0, "skuId":I
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVMUSProject()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 532
    const-string v3, "ro.cdma.home.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "NETWORKCODE":Ljava/lang/String;
    const-string v3, "MessageCustFlag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "networkCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 536
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v3

    const/16 v4, 0x62

    if-ne v3, v4, :cond_1

    .line 540
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 536
    goto :goto_0

    .line 537
    :cond_2
    const-string v3, "311490"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 540
    goto :goto_0
.end method

.method private static isVodafoneSku()Z
    .locals 2

    .prologue
    .line 431
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 432
    .local v0, "skuId":I
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    const/16 v1, 0x41

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 441
    :cond_0
    const/4 v1, 0x1

    .line 444
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isVzwSku()Z
    .locals 2

    .prologue
    .line 359
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSkuId()I

    move-result v0

    .line 360
    .local v0, "skuId":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 361
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static shouldDiscardVoiceMail()Z
    .locals 1

    .prologue
    .line 1448
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    return v0
.end method

.method public static shouldEnhanceCdmaTimestampWhileRoaming()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 872
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 874
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_1

    .line 897
    .local v0, "cdmaSubId":J
    .local v2, "mccMnc":Ljava/lang/String;
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return v4

    .line 877
    .end local v0    # "cdmaSubId":J
    .end local v2    # "mccMnc":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v5, "MessageCustFlag"

    const-string v6, "Roaming under CDMA network!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v2, 0x0

    .line 882
    .restart local v2    # "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 884
    .restart local v3    # "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 885
    .restart local v0    # "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 888
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 889
    const-string v5, "MessageCustFlag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNetworkOperator : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    if-eqz v2, :cond_0

    const-string v5, "310"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "311"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "316"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 893
    :cond_2
    const-string v4, "MessageCustFlag"

    const-string v5, "Roaming in USA! Need Enhance SMSC Timestamp!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static shouldMakeMoSmsInvisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "destAddress"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1590
    const/4 v0, 0x0

    .line 1591
    .local v0, "isWalletApp":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isAttSku()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1592
    const-string v2, "com.isis.mclient.atnt.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.isis.mclient.atnt.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1594
    :cond_0
    const/4 v0, 0x1

    .line 1608
    :cond_1
    :goto_0
    if-eqz v0, :cond_7

    .line 1609
    const-string v2, "87902"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1658
    :cond_2
    :goto_1
    return v1

    .line 1596
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1597
    const-string v2, "com.isis.mclient.tmobile.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.isis.mclient.tmobile.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1599
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1601
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isVzwSku()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1602
    const-string v2, "com.isis.mclient.verizon.activity"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "com.isis.mclient.verizon.isistest"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1604
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1614
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isTmoUsSku()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1615
    const-string v2, "com.tmobile.vvm.application"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1616
    const-string v2, "122"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1622
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCmccSku()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1623
    const-string v2, "cn.cj.pe"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.ophone.reader.ui"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.emagsoftware.gamehall"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.aspire.mm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.autonavi.cmccmap"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cmcc.mobilevideo"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.contacts.im"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.hisunflytone.android"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn.com.fetion"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.chinamobile.cmccwifi"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.cmcc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.cyber.wallet"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqmusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tencent.qqlive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cmccwm.mobilemusic"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.tmall.wireless"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.baidu.searchbox"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.sina.weibog3"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.iflytek.inputmethod.oem"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.servo.search"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1652
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isCtSku()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1653
    const-string v2, "im.yixin"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1658
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public static shouldSetDeviceTimeInSmscTimestamp()Z
    .locals 1

    .prologue
    .line 778
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isKddiSku()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportLte()Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    const/4 v0, 0x1

    .line 782
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
