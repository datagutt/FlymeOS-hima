.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z = false

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 383
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 384
    .local v3, "number":Ljava/lang/String;
    const/4 v0, -0x1

    .line 386
    .local v0, "countryCode":I
    const-string v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 388
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 392
    .local v4, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 393
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 394
    const/16 v7, 0x64

    .line 425
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :goto_0
    return v7

    .line 396
    .restart local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 397
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 398
    const/16 v7, 0x66

    goto :goto_0

    .line 401
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 403
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 404
    .restart local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 405
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 406
    const/16 v7, 0x65

    goto :goto_0

    .line 409
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, "exitCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 411
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 412
    .local v5, "numberNoIDD":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 413
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 414
    iput-object v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 415
    const/16 v7, 0x67

    goto :goto_0

    .line 420
    .end local v1    # "exitCode":Ljava/lang/String;
    .end local v5    # "numberNoIDD":Ljava/lang/String;
    :cond_4
    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 421
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 422
    const/16 v7, 0x68

    goto :goto_0

    .line 425
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .locals 14
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0xb

    const/4 v12, 0x7

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 299
    const/4 v5, 0x0

    .line 300
    .local v5, "isNANP":Z
    iget-object v6, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 302
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v12, :cond_2

    .line 304
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 305
    .local v1, "firstChar":C
    const/16 v9, 0x32

    if-lt v1, v9, :cond_0

    const/16 v9, 0x39

    if-gt v1, v9, :cond_0

    .line 306
    const/4 v5, 0x1

    .line 307
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v12, :cond_0

    .line 308
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 309
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v9

    if-nez v9, :cond_1

    .line 310
    const/4 v5, 0x0

    .line 315
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_8

    .line 360
    .end local v1    # "firstChar":C
    :goto_1
    return v8

    .line 307
    .restart local v0    # "c":C
    .restart local v1    # "firstChar":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "c":C
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_3

    .line 320
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 321
    const/4 v8, 0x2

    goto :goto_1

    .line 323
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v13, :cond_4

    .line 326
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v8, v9

    .line 327
    goto :goto_1

    .line 329
    :cond_4
    const-string v11, "+"

    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 330
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 331
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 334
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 335
    const/4 v8, 0x4

    goto :goto_1

    .line 337
    :cond_5
    const-string v8, "011"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v11, 0xe

    if-ne v8, v11, :cond_8

    .line 340
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 341
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 342
    const/4 v8, 0x6

    goto :goto_1

    .line 347
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 348
    .local v4, "idd":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 349
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, "number2":Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 351
    invoke-static {v7}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 352
    iput-object v4, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 353
    const/4 v8, 0x5

    goto/16 :goto_1

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "idd":Ljava/lang/String;
    .end local v7    # "number2":Ljava/lang/String;
    :cond_8
    move v8, v10

    .line 360
    goto/16 :goto_1
.end method

.method private static compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z
    .locals 5
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "serviceGid1"    # Ljava/lang/String;

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "gid1":Ljava/lang/String;
    const/4 v2, 0x1

    .line 642
    .local v2, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    .line 655
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 647
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 649
    .local v1, "gid_length":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 652
    :cond_1
    const/4 v2, 0x0

    :cond_2
    move v3, v2

    .line 655
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method public static filterDestAddr(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    .line 540
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 541
    :cond_0
    const-string v5, "SmsNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destAddr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a global phone number!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    .line 570
    :cond_1
    :goto_0
    return-object v4

    .line 545
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "networkOperator":Ljava/lang/String;
    const/4 v4, 0x0

    .line 556
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 557
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Lcom/android/internal/telephony/PhoneBase;)I

    move-result v3

    .line 558
    .local v3, "networkType":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 559
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "networkMcc":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1, v1, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 570
    .end local v1    # "networkMcc":Ljava/lang/String;
    .end local v3    # "networkType":I
    :cond_3
    :goto_1
    if-nez v4, :cond_1

    move-object v4, p1

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SmsNumberUtils"

    const-string v6, "Got exception at filterDestAddr"

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "number is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 136
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "activeMcc is null or empty!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 139
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "networkPortionNumber":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 141
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Number is invalid!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 144
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    .line 145
    .local v6, "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v4

    .line 151
    .local v4, "nanpState":I
    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_5

    const/4 v8, 0x3

    if-ne v4, v8, :cond_6

    .line 235
    .end local v5    # "networkPortionNumber":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v5

    .line 155
    .restart local v5    # "networkPortionNumber":Ljava/lang/String;
    :cond_6
    const/4 v8, 0x4

    if-ne v4, v8, :cond_8

    .line 156
    if-eq p3, v10, :cond_7

    if-ne p3, v9, :cond_5

    .line 159
    :cond_7
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 163
    :cond_8
    const/4 v8, 0x5

    if-ne v4, v8, :cond_c

    .line 164
    if-eq p3, v10, :cond_5

    .line 166
    if-nez p3, :cond_a

    .line 168
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_9

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 169
    .local v2, "iddLength":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 170
    .end local v2    # "iddLength":I
    :cond_a
    if-ne p3, v9, :cond_c

    .line 172
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_b

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .restart local v2    # "iddLength":I
    :cond_b
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 177
    .end local v2    # "iddLength":I
    :cond_c
    const-string v8, "011"

    invoke-static {p0, v6, v0, v8}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    .line 180
    .local v3, "internationalState":I
    const/4 v7, 0x0

    .line 182
    .local v7, "returnNumber":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 220
    const-string v8, "+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-eq p3, v10, :cond_d

    if-ne p3, v9, :cond_e

    .line 222
    :cond_d
    const-string v8, "+011"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 224
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    :cond_e
    :goto_1
    if-nez v7, :cond_f

    .line 233
    move-object v7, v5

    :cond_f
    move-object v5, v7

    .line 235
    goto :goto_0

    .line 184
    :pswitch_0
    if-nez p3, :cond_e

    .line 186
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 192
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 193
    goto :goto_1

    .line 196
    :pswitch_2
    if-eqz p3, :cond_10

    if-ne p3, v9, :cond_e

    .line 197
    :cond_10
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_11

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 199
    .restart local v2    # "iddLength":I
    :cond_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 200
    goto :goto_1

    .line 204
    .end local v2    # "iddLength":I
    :pswitch_3
    iget v1, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 206
    .local v1, "countryCode":I
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-lt v8, v9, :cond_e

    if-eq v1, v10, :cond_e

    .line 209
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 214
    .end local v1    # "countryCode":I
    :pswitch_4
    move-object v7, v5

    .line 215
    goto :goto_1

    .line 227
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 492
    :goto_0
    return-object v0

    .line 467
    :cond_0
    const/4 v7, 0x0

    .line 469
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "Country_Code"

    aput-object v1, v2, v0

    .line 470
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 473
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 474
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 475
    const/4 v9, 0x0

    .local v9, "i":I
    move v10, v9

    .line 476
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 478
    .local v6, "countryCode":I
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput v6, v0, v10

    .line 479
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 480
    .local v11, "length":I
    sget v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v11, v0, :cond_1

    .line 481
    sput v11, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v10, v9

    .line 483
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 488
    .end local v6    # "countryCode":I
    .end local v10    # "i":I
    .end local v11    # "length":I
    :cond_2
    if-eqz v7, :cond_3

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 492
    .end local v2    # "projection":[Ljava/lang/String;
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    goto :goto_0

    .line 485
    :catch_0
    move-exception v8

    .line 486
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SmsNumberUtils"

    const-string v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    if-eqz v7, :cond_3

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 488
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 246
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 247
    .local v6, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 287
    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v7, "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .line 250
    .end local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "IDD"

    aput-object v0, v2, v1

    const-string v0, "MCC"

    aput-object v0, v2, v5

    .line 254
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 259
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 260
    const-string v3, "MCC=?"

    .line 261
    new-array v4, v5, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 264
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    .line 266
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 268
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 269
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "idd":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 276
    .end local v10    # "idd":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 277
    .local v9, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "SmsNumberUtils"

    const-string v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    if-eqz v8, :cond_3

    .line 280
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    .end local v9    # "e":Landroid/database/SQLException;
    :cond_3
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    .line 287
    .restart local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 279
    .end local v7    # "allIDDs":Ljava/lang/Object;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-eqz v8, :cond_3

    .line 280
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 279
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 280
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 432
    const/4 v2, -0x1

    .line 433
    .local v2, "countryCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    .line 435
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object v0

    .line 436
    .local v0, "allCCs":[I
    if-nez v0, :cond_1

    .line 456
    .end local v0    # "allCCs":[I
    .end local v2    # "countryCode":I
    :cond_0
    :goto_0
    return v2

    .line 440
    .restart local v0    # "allCCs":[I
    .restart local v2    # "countryCode":I
    :cond_1
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v1, v6, [I

    .line 441
    .local v1, "ccArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v6, :cond_2

    .line 442
    const/4 v6, 0x0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v3

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 445
    :cond_2
    const/4 v3, 0x0

    :goto_2
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 446
    aget v5, v0, v3

    .line 447
    .local v5, "tempCC":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v6, :cond_4

    .line 448
    aget v6, v1, v4

    if-ne v5, v6, :cond_3

    move v2, v5

    .line 450
    goto :goto_0

    .line 447
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 445
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getNetworkType(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 3
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 577
    const/4 v0, -0x1

    .line 578
    .local v0, "networkType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 580
    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 581
    const/4 v0, 0x0

    .line 592
    :cond_0
    :goto_0
    return v0

    .line 582
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 583
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    const/4 v0, 0x2

    goto :goto_0

    .line 586
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number Plan type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 507
    const-string v0, "NP_NANP_LOCAL"

    .line 531
    :goto_0
    return-object v0

    .line 508
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 509
    const-string v0, "NP_NANP_AREA_LOCAL"

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 511
    const-string v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_0

    .line 512
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    .line 513
    const-string v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    .line 514
    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    .line 515
    const-string v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 516
    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    .line 517
    const-string v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 518
    :cond_5
    const/16 v1, 0x64

    if-ne p0, v1, :cond_6

    .line 519
    const-string v0, "NP_NBPCD_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 520
    :cond_6
    const/16 v1, 0x65

    if-ne p0, v1, :cond_7

    .line 521
    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 522
    :cond_7
    const/16 v1, 0x66

    if-ne p0, v1, :cond_8

    .line 523
    const-string v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    .line 524
    :cond_8
    const/16 v1, 0x67

    if-ne p0, v1, :cond_9

    .line 525
    const-string v0, "NP_IDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 526
    :cond_9
    const/16 v1, 0x68

    if-ne p0, v1, :cond_a

    .line 527
    const-string v0, "NP_CC_AREA_LOCAL"

    goto :goto_0

    .line 529
    :cond_a
    const-string v0, "Unknown type"

    goto :goto_0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .locals 4
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    .prologue
    .line 496
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 497
    .local v0, "countryCode":I
    iget-object v2, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    const/16 v2, 0x41

    if-eq v0, v2, :cond_0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 500
    .local v1, "result":Z
    :goto_0
    return v1

    .line 497
    .end local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isInternationalRoaming(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 7
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 596
    const-string v5, "gsm.operator.iso-country"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "operatorIsoCountry":Ljava/lang/String;
    const-string v5, "gsm.sim.operator.iso-country"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "simIsoCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .line 603
    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 604
    const-string v5, "us"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 605
    const-string v5, "vi"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 610
    :cond_0
    :goto_1
    return v0

    .end local v0    # "internationalRoaming":Z
    :cond_1
    move v0, v4

    .line 600
    goto :goto_0

    .restart local v0    # "internationalRoaming":Z
    :cond_2
    move v0, v4

    .line 605
    goto :goto_1

    .line 606
    :cond_3
    const-string v5, "vi"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    const-string v5, "us"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    :goto_2
    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 369
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needToConvert(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 8
    .param p0, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 614
    const/4 v0, 0x0

    .line 615
    .local v0, "bNeedToConvert":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x107003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 619
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 620
    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 621
    aget-object v4, v2, v1

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "needToConvertArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 623
    array-length v4, v3

    if-ne v4, v6, :cond_1

    .line 624
    const-string v4, "true"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 619
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .restart local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_1
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    aget-object v4, v3, v6

    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->compareGid1(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 628
    const-string v4, "true"

    aget-object v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 635
    .end local v1    # "i":I
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_2
    return v0
.end method
