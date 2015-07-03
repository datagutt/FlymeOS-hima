.class public Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;
.super Ljava/lang/Object;
.source "HtcCdmaOmhCustomization.java"


# static fields
.field private static final CDMA_APN_URI:Landroid/net/Uri;

.field private static final CDMA_ID_URI:Landroid/net/Uri;

.field private static final CDMA_PREFERAPN_URI:Landroid/net/Uri;

.field private static final DBG_DETAIL:Z = false

.field private static final DBG_SECURITY:Z

.field private static final FAKE_SUPPORT:Z

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final ID_INDIA_MTS:Ljava/lang/String; = "INDIA_MTS"

.field public static final ID_INDIA_RELIANCE:Ljava/lang/String; = "INDIA_RELIANCE"

.field public static final ID_INDIA_TATA:Ljava/lang/String; = "INDIA_TATA"

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static final READONLY:Ljava/lang/String; = "readonly"

.field private static final SKU_ID:I

.field private static final THREAD_EVENT_UPDATE_APN:I = 0x1

.field private static final logOmhPrefix:Ljava/lang/String; = "Omh-"

.field private static final mHtcDomainIdMapping:[[Ljava/lang/String;

.field private static final mHtcKeywordIdMapping:[[Ljava/lang/String;

.field private static final mKeyword_IndiaMts:Ljava/lang/String; = "MTS"

.field private static final mKeyword_IndiaOperators:[Ljava/lang/String;

.field private static final mKeyword_IndiaReliance:Ljava/lang/String; = "Reliance"

.field private static final mKeyword_IndiaTata:Ljava/lang/String; = "TATA"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 38
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->DBG_SECURITY:Z

    .line 39
    sget-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->DBG_SECURITY:Z

    sput-boolean v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->FAKE_SUPPORT:Z

    .line 41
    sget v0, Lcom/android/internal/telephony/ACCCustomizationManager;->SKU_ID:I

    sput v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->SKU_ID:I

    .line 96
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TATA"

    aput-object v1, v0, v4

    const-string v1, "MTS"

    aput-object v1, v0, v5

    const-string v1, "Reliance"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mKeyword_IndiaOperators:[Ljava/lang/String;

    .line 100
    new-array v0, v3, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "TATA"

    aput-object v2, v1, v4

    const-string v2, "INDIA_TATA"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "MTS"

    aput-object v2, v1, v4

    const-string v2, "INDIA_MTS"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "Reliance"

    aput-object v2, v1, v4

    const-string v2, "INDIA_RELIANCE"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mHtcKeywordIdMapping:[[Ljava/lang/String;

    .line 142
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".ttl.com"

    aput-object v2, v1, v4

    const-string v2, "INDIA_TATA"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".ttsl.in"

    aput-object v2, v1, v4

    const-string v2, "INDIA_TATA"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".mtsindia.in"

    aput-object v2, v1, v4

    const-string v2, "INDIA_MTS"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ".rcom.co.in"

    aput-object v2, v1, v4

    const-string v2, "INDIA_RELIANCE"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".ricinfo.com"

    aput-object v3, v2, v4

    const-string v3, "INDIA_RELIANCE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ".relianceinfo.com"

    aput-object v3, v2, v4

    const-string v3, "INDIA_RELIANCE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mHtcDomainIdMapping:[[Ljava/lang/String;

    .line 276
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->PREFERAPN_URI:Landroid/net/Uri;

    .line 277
    const-string v0, "content://cdmaapn/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_APN_URI:Landroid/net/Uri;

    .line 278
    const-string v0, "content://cdmaapn/carriers/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_ID_URI:Landroid/net/Uri;

    .line 279
    const-string v0, "content://cdmaapn/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->updateApnByItems([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static createShowupContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p0, "mcc"    # Ljava/lang/String;
    .param p1, "mnc"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "authtype"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "state"

    const-string v2, "readonly"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "mcc"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "mnc"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "numeric"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "apn"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    if-eqz p3, :cond_0

    .line 462
    const-string v1, "user"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_0
    if-eqz p4, :cond_1

    .line 465
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    if-eqz p5, :cond_2

    .line 468
    const-string v1, "authtype"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_2
    const-string v1, "carrier_enabled"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    return-object v0
.end method

.method public static dynamicUpdateApn(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "mSimpleIP_NAIs"    # [Ljava/lang/String;
    .param p2, "mMobileIP_NAIs"    # [Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 205
    if-nez p0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "imsi":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-lt v13, v14, :cond_0

    .line 214
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "mcc":Ljava/lang/String;
    const/4 v13, 0x3

    const/4 v14, 0x5

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 217
    .local v10, "mnc":Ljava/lang/String;
    const/4 v11, 0x0

    .line 218
    .local v11, "searchCustomerId":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    const-string v13, "404"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "405"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "406"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 229
    :cond_2
    const/4 v11, 0x1

    .line 232
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Omh-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v13, v0, v1, v2}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->omhCustomerIdDetection(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, "foundCustomerId":Ljava/lang/String;
    if-eqz v11, :cond_0

    if-eqz v4, :cond_0

    .line 235
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    .line 236
    .local v12, "updateItems":[Ljava/lang/String;
    const/4 v13, 0x0

    aput-object v4, v12, v13

    .line 237
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mHtcKeywordIdMapping:[[Ljava/lang/String;

    .local v3, "arr$":[[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_5

    aget-object v7, v3, v5

    .line 238
    .local v7, "keywordMapping":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 239
    const/4 v13, 0x1

    const/4 v14, 0x0

    aget-object v14, v7, v14

    aput-object v14, v12, v13

    .line 237
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 242
    .end local v7    # "keywordMapping":[Ljava/lang/String;
    :cond_5
    const/4 v13, 0x2

    aput-object v9, v12, v13

    .line 243
    const/4 v13, 0x3

    aput-object v10, v12, v13

    .line 244
    const-string v13, "INDIA_TATA"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 245
    const/4 v13, 0x4

    const-string v14, "Tata"

    aput-object v14, v12, v13

    .line 246
    const/4 v13, 0x5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@omh.ttsl.in"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 247
    const/4 v13, 0x6

    const-string v14, "password"

    aput-object v14, v12, v13

    .line 248
    const/4 v13, 0x7

    const-string v14, "3"

    aput-object v14, v12, v13

    .line 272
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->htcThreadUpdateApn([Ljava/lang/String;Landroid/content/Context;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 250
    :cond_7
    const-string v13, "INDIA_MTS"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 251
    const/4 v13, 0x4

    const-string v14, "#777"

    aput-object v14, v12, v13

    .line 252
    const/4 v13, 0x5

    const-string v14, "internet@internet.mtsindia.in"

    aput-object v14, v12, v13

    .line 253
    const/4 v13, 0x6

    const-string v14, "MTS"

    aput-object v14, v12, v13

    .line 254
    const/4 v13, 0x7

    const-string v14, "3"

    aput-object v14, v12, v13

    goto :goto_2

    .line 256
    :cond_8
    const-string v13, "INDIA_RELIANCE"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 266
    const/4 v13, 0x4

    const-string v14, "#777"

    aput-object v14, v12, v13

    .line 267
    const/4 v13, 0x5

    const-string v14, "net"

    aput-object v14, v12, v13

    .line 268
    const/4 v13, 0x6

    const-string v14, "net"

    aput-object v14, v12, v13

    .line 269
    const/4 v13, 0x7

    const-string v14, "3"

    aput-object v14, v12, v13

    goto :goto_2
.end method

.method private static htcThreadUpdateApn([Ljava/lang/String;Landroid/content/Context;Landroid/os/Message;)V
    .locals 10
    .param p0, "updateItems"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "responseMsg"    # Landroid/os/Message;

    .prologue
    .line 477
    new-instance v2, Landroid/os/HandlerThread;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CDMA ApnUpdate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, p0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    invoke-direct {v2, v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 479
    .local v2, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 480
    new-instance v0, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization$1;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization$1;-><init>(Landroid/os/Looper;)V

    .line 512
    .local v0, "apnHandler":Landroid/os/Handler;
    array-length v8, p0

    add-int/lit8 v8, v8, 0x3

    new-array v6, v8, [Ljava/lang/Object;

    .line 513
    .local v6, "obj":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 514
    .local v7, "objIdx":I
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 515
    .local v4, "item":Ljava/lang/String;
    aput-object v4, v6, v7

    .line 516
    add-int/lit8 v7, v7, 0x1

    .line 514
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .end local v4    # "item":Ljava/lang/String;
    :cond_0
    aput-object p1, v6, v7

    .line 519
    add-int/lit8 v8, v7, 0x1

    aput-object p2, v6, v8

    .line 520
    add-int/lit8 v8, v7, 0x2

    aput-object v2, v6, v8

    .line 521
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    return-void
.end method

.method public static isOmhPossibleRuim(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, "isOmh":Z
    if-eqz p0, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v6, :cond_2

    .line 74
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "mcc":Ljava/lang/String;
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string v4, "404"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "405"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "406"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x1

    .line 83
    :cond_1
    if-eqz v1, :cond_2

    .line 84
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mightOmh"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v3    # "mnc":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static omhCustomerIdDetection(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "logPrefix"    # Ljava/lang/String;
    .param p1, "mSimpleIP_NAIs"    # [Ljava/lang/String;
    .param p2, "mMobileIP_NAIs"    # [Ljava/lang/String;
    .param p3, "spn"    # Ljava/lang/String;

    .prologue
    .line 156
    const/4 v9, 0x0

    .line 158
    .local v9, "foundCustomerId":Ljava/lang/String;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v18, v17

    :goto_0
    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    :goto_1
    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/String;

    .line 160
    .local v4, "allNAIs":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 161
    .local v12, "idx_allNAI":I
    if-eqz p1, :cond_0

    .line 162
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    move-object/from16 v0, p1

    array-length v12, v0

    .line 165
    :cond_0
    if-eqz p2, :cond_1

    .line 166
    const/16 v17, 0x0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v4, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    :cond_1
    move-object v5, v4

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .local v11, "i$":I
    :goto_2
    if-ge v11, v14, :cond_6

    aget-object v16, v5, v11

    .line 170
    .local v16, "nai":Ljava/lang/String;
    if-nez v9, :cond_5

    if-eqz v16, :cond_5

    .line 171
    sget-object v6, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mHtcDomainIdMapping:[[Ljava/lang/String;

    .local v6, "arr$":[[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_3
    if-ge v10, v15, :cond_5

    aget-object v8, v6, v10

    .line 172
    .local v8, "domainMapping":[Ljava/lang/String;
    if-nez v9, :cond_2

    .line 173
    const/16 v17, 0x0

    aget-object v17, v8, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 174
    .local v7, "domainIndex":I
    if-ltz v7, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v8, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v7, v0, :cond_2

    .line 176
    const/16 v17, 0x1

    aget-object v9, v8, v17

    .line 178
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "customer by NAI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/HtcBuildUtils;->displayPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v7    # "domainIndex":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 158
    .end local v4    # "allNAIs":[Ljava/lang/String;
    .end local v6    # "arr$":[[Ljava/lang/String;
    .end local v8    # "domainMapping":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "idx_allNAI":I
    .end local v15    # "len$":I
    .end local v16    # "nai":Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    move/from16 v18, v17

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 169
    .restart local v4    # "allNAIs":[Ljava/lang/String;
    .restart local v12    # "idx_allNAI":I
    .restart local v16    # "nai":Ljava/lang/String;
    :cond_5
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_2

    .line 186
    .end local v16    # "nai":Ljava/lang/String;
    :cond_6
    if-nez v9, :cond_8

    if-eqz p3, :cond_8

    .line 187
    sget-object v5, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mHtcKeywordIdMapping:[[Ljava/lang/String;

    .local v5, "arr$":[[Ljava/lang/String;
    array-length v14, v5

    .restart local v14    # "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_4
    if-ge v10, v14, :cond_9

    aget-object v13, v5, v10

    .line 188
    .local v13, "keyMapping":[Ljava/lang/String;
    if-nez v9, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 189
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 190
    const/16 v17, 0x1

    aget-object v9, v13, v17

    .line 191
    const-string v17, "CDMA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "customer by SPN "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v5    # "arr$":[[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "keyMapping":[Ljava/lang/String;
    .end local v14    # "len$":I
    .restart local v11    # "i$":I
    :cond_8
    move v10, v11

    .line 198
    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :cond_9
    return-object v9
.end method

.method public static selectSpnFromMultiple(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "spns"    # [Ljava/lang/String;

    .prologue
    .line 110
    const/4 v12, 0x0

    aget-object v10, p1, v12

    .line 112
    .local v10, "preferSpn":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "imsi":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_3

    .line 115
    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "mcc":Ljava/lang/String;
    const/4 v12, 0x3

    const/4 v13, 0x5

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "mnc":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    const-string v12, "404"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "405"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "406"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 123
    :cond_0
    const/4 v10, 0x0

    .line 124
    move-object/from16 v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v11, v0, v3

    .line 125
    .local v11, "spn":Ljava/lang/String;
    if-nez v10, :cond_2

    if-eqz v11, :cond_2

    .line 126
    sget-object v1, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->mKeyword_IndiaOperators:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_2

    aget-object v9, v1, v2

    .line 127
    .local v9, "opKey":Ljava/lang/String;
    if-nez v10, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v12, v13, :cond_1

    .line 128
    const/4 v12, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 129
    move-object v10, v11

    .line 130
    const-string v12, "CDMA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Omh-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " SPN "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 124
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "opKey":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 139
    .end local v3    # "i$":I
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v7    # "mcc":Ljava/lang/String;
    .end local v8    # "mnc":Ljava/lang/String;
    .end local v11    # "spn":Ljava/lang/String;
    :cond_3
    return-object v10
.end method

.method private static updateApnByItems([Ljava/lang/String;Landroid/content/Context;)Z
    .locals 40
    .param p0, "updateItems"    # [Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const/4 v3, 0x0

    aget-object v15, p0, v3

    .line 285
    .local v15, "customerId":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v16, p0, v3

    .line 286
    .local v16, "customerKeyword":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v34, p0, v3

    .line 287
    .local v34, "mcc":Ljava/lang/String;
    const/4 v3, 0x3

    aget-object v35, p0, v3

    .line 288
    .local v35, "mnc":Ljava/lang/String;
    const/4 v3, 0x4

    aget-object v8, p0, v3

    .line 289
    .local v8, "apn":Ljava/lang/String;
    const/4 v3, 0x5

    aget-object v9, p0, v3

    .line 290
    .local v9, "username":Ljava/lang/String;
    const/4 v3, 0x6

    aget-object v10, p0, v3

    .line 291
    .local v10, "password":Ljava/lang/String;
    const/4 v3, 0x7

    aget-object v11, p0, v3

    .line 293
    .local v11, "authtype":Ljava/lang/String;
    const/16 v38, 0x0

    .line 295
    .local v38, "updateSuccessfully":Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 296
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 297
    .local v14, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND (state = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "readonly"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR state = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "hidden"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "selection":Ljava/lang/String;
    const/16 v28, 0x0

    .line 301
    .local v28, "idNeedToHide":[Ljava/lang/String;
    const/16 v29, 0x0

    .line 302
    .local v29, "idNeedToShow":Z
    const/16 v30, 0x0

    .line 303
    .local v30, "idNeedToUpdate":Z
    const/16 v24, 0x0

    .line 305
    .local v24, "foundKeyWord":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_APN_URI:Landroid/net/Uri;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "name"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "apn"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "numeric"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "state"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "user"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "password"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "authtype"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "carrier_enabled"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 314
    if-eqz v14, :cond_7

    .line 315
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v33

    .line 319
    .local v33, "length":I
    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 321
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 322
    const/16 v31, 0x0

    .line 323
    .local v31, "index":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v33

    if-ge v0, v1, :cond_6

    .line 324
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 325
    .local v26, "id":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 326
    .local v36, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 327
    .local v17, "db_apn":Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 328
    .local v20, "db_numeric":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 329
    .local v37, "state":Ljava/lang/String;
    const/4 v3, 0x5

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 330
    .local v22, "db_username":Ljava/lang/String;
    const/4 v3, 0x6

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 331
    .local v21, "db_password":Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 332
    .local v18, "db_authtype":Ljava/lang/String;
    const/16 v3, 0x8

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 334
    .local v19, "db_enabled":I
    if-nez v24, :cond_4

    if-eqz v36, :cond_4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 338
    move-object/from16 v24, v26

    .line 339
    const-string v3, "hidden"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v19, :cond_1

    .line 341
    :cond_0
    const/16 v29, 0x1

    .line 343
    :cond_1
    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v21

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    :cond_2
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 373
    add-int/lit8 v31, v31, 0x1

    .line 374
    goto/16 :goto_0

    .line 351
    :cond_3
    const/16 v30, 0x1

    goto :goto_1

    .line 355
    :cond_4
    const-string v3, "readonly"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v19, :cond_2

    .line 357
    :cond_5
    aput-object v26, v28, v31
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v17    # "db_apn":Ljava/lang/String;
    .end local v18    # "db_authtype":Ljava/lang/String;
    .end local v19    # "db_enabled":I
    .end local v20    # "db_numeric":Ljava/lang/String;
    .end local v21    # "db_password":Ljava/lang/String;
    .end local v22    # "db_username":Ljava/lang/String;
    .end local v26    # "id":Ljava/lang/String;
    .end local v31    # "index":I
    .end local v33    # "length":I
    .end local v36    # "name":Ljava/lang/String;
    .end local v37    # "state":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 449
    .local v23, "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-Fail update APN - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v23    # "ex":Ljava/lang/Exception;
    :goto_2
    return v38

    .line 375
    .restart local v31    # "index":I
    .restart local v33    # "length":I
    :cond_6
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 376
    const/4 v14, 0x0

    .line 379
    .end local v31    # "index":I
    .end local v33    # "length":I
    :cond_7
    const/16 v39, 0x0

    .line 380
    .local v39, "values":Landroid/content/ContentValues;
    if-eqz v28, :cond_9

    .line 381
    move-object/from16 v13, v28

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    aget-object v27, v13, v25

    .line 382
    .local v27, "idHide":Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://cdmaapn/carriers/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 385
    .local v12, "CDMA_ID_URI":Landroid/net/Uri;
    new-instance v39, Landroid/content/ContentValues;

    .end local v39    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 386
    .restart local v39    # "values":Landroid/content/ContentValues;
    const-string v3, "state"

    const-string v4, "hidden"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v3, "carrier_enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, v39

    invoke-virtual {v2, v12, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 381
    .end local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    :cond_8
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 393
    .restart local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    :catch_1
    move-exception v23

    .line 394
    .restart local v23    # "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-hide ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 400
    .end local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v23    # "ex":Ljava/lang/Exception;
    .end local v25    # "i$":I
    .end local v27    # "idHide":Ljava/lang/String;
    .end local v32    # "len$":I
    :cond_9
    if-eqz v24, :cond_c

    .line 401
    if-nez v29, :cond_a

    if-eqz v30, :cond_b

    .line 402
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://cdmaapn/carriers/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .restart local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    move-object/from16 v6, v34

    move-object/from16 v7, v35

    .line 404
    invoke-static/range {v6 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->createShowupContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v39

    .line 406
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_4
    move-object/from16 v0, v39

    invoke-virtual {v2, v12, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 407
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-show ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 412
    :goto_5
    :try_start_5
    new-instance v39, Landroid/content/ContentValues;

    .end local v39    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .restart local v39    # "values":Landroid/content/ContentValues;
    const-string v3, "apn_id"

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 415
    :try_start_6
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_PREFERAPN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 416
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-pref ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 447
    .end local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    :cond_b
    :goto_6
    const/16 v38, 0x1

    goto/16 :goto_2

    .line 408
    .restart local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    :catch_2
    move-exception v23

    .line 409
    .restart local v23    # "ex":Ljava/lang/Exception;
    :try_start_7
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-show ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 417
    .end local v23    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v23

    .line 418
    .restart local v23    # "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-pref ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    .end local v23    # "ex":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v6, v34

    move-object/from16 v7, v35

    .line 424
    invoke-static/range {v6 .. v11}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->createShowupContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v39

    .line 425
    const-string v3, "name"

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v3, "type"

    const-string v4, "*"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 427
    const/4 v12, 0x0

    .line 429
    .restart local v12    # "CDMA_ID_URI":Landroid/net/Uri;
    :try_start_8
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_APN_URI:Landroid/net/Uri;

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 430
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-add "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 435
    :goto_7
    if-eqz v12, :cond_b

    .line 436
    :try_start_9
    new-instance v39, Landroid/content/ContentValues;

    .end local v39    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 437
    .restart local v39    # "values":Landroid/content/ContentValues;
    const-string v3, "apn_id"

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 439
    :try_start_a
    sget-object v3, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->CDMA_PREFERAPN_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-pref ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_6

    .line 441
    :catch_4
    move-exception v23

    .line 442
    .restart local v23    # "ex":Ljava/lang/Exception;
    :try_start_b
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-pref ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 431
    .end local v23    # "ex":Ljava/lang/Exception;
    :catch_5
    move-exception v23

    .line 432
    .restart local v23    # "ex":Ljava/lang/Exception;
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Omh-add "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " fail:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_7
.end method
