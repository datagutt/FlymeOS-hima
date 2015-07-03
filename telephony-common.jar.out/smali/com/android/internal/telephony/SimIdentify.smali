.class public Lcom/android/internal/telephony/SimIdentify;
.super Ljava/lang/Object;
.source "SimIdentify.java"


# static fields
.field protected static final ALLREAD_MCC_MNC:Ljava/lang/String; = "46099"

.field protected static final APTG_CDMA_MCC_MNC:Ljava/lang/String; = "46605"

.field protected static final APTG_GSM_MCC_MNC:Ljava/lang/String; = "45400"

.field protected static final CT_CDMA_MCC_MNC_LIST:Ljava/util/ArrayList;

.field protected static final CT_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

.field protected static final CU_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

.field public static DBG:Z = false

.field public static final SIM_TYPE_ALL_READ:I = 0x3

.field public static final SIM_TYPE_APTG_DUALMODE:I = 0x6

.field public static final SIM_TYPE_INVALID:I = -0x1

.field public static final SIM_TYPE_RUIM:I = 0x0

.field public static final SIM_TYPE_SIM:I = 0x1

.field public static final SIM_TYPE_TELECOM_DUALMODE:I = 0x4

.field public static final SIM_TYPE_UNICOM_DUALMODE:I = 0x2

.field public static final SIM_TYPE_UNKNOWN_DUALSIM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SimIdentify"


# instance fields
.field private m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mCDMAoperatorNumeric:Ljava/lang/String;

.field private mCTLTESimCard:Z

.field protected mContext:Landroid/content/Context;

.field protected mDualSimType:I

.field protected mGSMoperatorNumeric:Ljava/lang/String;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    sput-boolean v3, Lcom/android/internal/telephony/SimIdentify;->DBG:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "46001"

    aput-object v2, v1, v4

    const-string v2, "46009"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/SimIdentify;->CU_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "46003"

    aput-object v2, v1, v4

    const-string v2, "45502"

    aput-object v2, v1, v3

    const-string v2, "46011"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/SimIdentify;->CT_CDMA_MCC_MNC_LIST:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "46001"

    aput-object v2, v1, v4

    const-string v2, "20404"

    aput-object v2, v1, v3

    const-string v2, "46011"

    aput-object v2, v1, v5

    const-string v2, "45403"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/telephony/SimIdentify;->CT_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCTLTESimCard:Z

    .line 72
    const-string v1, "SimIdentify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init SimIdentify phoneid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/SimIdentify;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    .line 77
    .local v0, "mUiccController":Lcom/android/internal/telephony/uicc/UiccController;
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 80
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 82
    :cond_0
    return-void
.end method

.method private fetchOperatorNumberic()V
    .locals 4

    .prologue
    .line 85
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->UNKNOWN_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 86
    .local v0, "searchTypes":[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_2

    .line 88
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->USIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 92
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimIdentify;->searchIccOperatorNumeric2([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 94
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_3

    .line 99
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->CSIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 103
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimIdentify;->searchIccOperatorNumeric2([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 105
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v1, "SimIdentify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mGSMoperatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v1, "SimIdentify"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCDMAoperatorNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 90
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->SIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_0

    .line 101
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccCard;->RUIM_TYPE_SEARCH:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    goto :goto_1
.end method

.method private getAPTGCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "cdmaMccMnc"    # Ljava/lang/String;
    .param p2, "gsmMccMnc"    # Ljava/lang/String;

    .prologue
    .line 212
    const-string v0, "45400"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x6

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCTCardType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "cdmaMccMnc"    # Ljava/lang/String;
    .param p2, "gsmMccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 218
    sget-object v1, Lcom/android/internal/telephony/SimIdentify;->CT_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    const/4 v0, 0x4

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    const-string v1, "46099"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private searchIccOperatorNumeric2([Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Ljava/lang/String;
    .locals 6
    .param p1, "searchTypes"    # [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    const/4 v5, 0x5

    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "operatorNumeric":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_4

    if-nez v2, :cond_4

    .line 229
    iget-object v3, p0, Lcom/android/internal/telephony/SimIdentify;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardProxy;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecords(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 230
    .local v1, "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 231
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-eqz v3, :cond_2

    .line 232
    aget-object v3, p1, v0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    .line 233
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 228
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_1
    check-cast v1, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCdmaIMSI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 239
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_2
    instance-of v3, v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    if-eqz v3, :cond_0

    .line 240
    aget-object v3, p1, v0

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_3

    .line 241
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 244
    .restart local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_3
    check-cast v1, Lcom/android/internal/telephony/uicc/SIMRecords;

    .end local v1    # "iccRecd":Lcom/android/internal/telephony/uicc/IccRecords;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->getGsmIMSI()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 250
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_5

    .line 251
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 253
    :cond_5
    return-object v2
.end method


# virtual methods
.method public getCDMAOperatorNumberic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 191
    const-string v0, ""

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method public getGSMOperatorNumberic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 206
    const-string v0, ""

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimType()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    return v0
.end method

.method public isCTDualCard()Z
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCTLTESIMCard()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCTLTESimCard:Z

    return v0
.end method

.method public isDualCard()Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    packed-switch v0, :pswitch_data_0

    .line 272
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 270
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processCTLTECardIdentify()V
    .locals 3

    .prologue
    .line 153
    const-string v0, "SimIdentify"

    const-string v1, "processCTLTECardIdentify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->fetchOperatorNumberic()V

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_1

    .line 158
    :cond_0
    const-string v0, "SimIdentify"

    const-string v1, "initialize fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->m3gppApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->m3gpp2App:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "45502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "20404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "45404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "45403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "46003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "45502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "46011"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "20404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "45404"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "45403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCTLTESimCard:Z

    .line 171
    :cond_4
    const-string v0, "SimIdentify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCTLTECardIdentify done, mCTLTESimCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCTLTESimCard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public processDualCardIdentify()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 115
    const-string v0, "SimIdentify"

    const-string v1, "processDualCardIdentify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/SimIdentify;->fetchOperatorNumberic()V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    .line 149
    :goto_0
    const-string v0, "SimIdentify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processDualCardIdentify done, mDualSimType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 124
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto :goto_0

    .line 127
    :cond_2
    const-string v0, "SimIdentify"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cdmaMccMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gsmMccMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v3, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    const-string v1, "46605"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SimIdentify;->getAPTGCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto :goto_0

    .line 134
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/SimIdentify;->CT_CDMA_MCC_MNC_LIST:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SimIdentify;->getCTCardType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto :goto_0

    .line 137
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/SimIdentify;->CU_GSM_MCC_MNC_LIST:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto/16 :goto_0

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    const-string v1, "46099"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/SimIdentify;->mCDMAoperatorNumeric:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/SimIdentify;->mGSMoperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto/16 :goto_0

    .line 145
    :cond_7
    iput v4, p0, Lcom/android/internal/telephony/SimIdentify;->mDualSimType:I

    goto/16 :goto_0
.end method
