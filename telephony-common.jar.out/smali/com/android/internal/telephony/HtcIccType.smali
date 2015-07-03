.class public Lcom/android/internal/telephony/HtcIccType;
.super Ljava/lang/Object;
.source "HtcIccType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcIccType$DF;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY__dfCdma:Ljava/lang/String; = "df.cdma"

.field private static final BUNDLE_KEY__dfCdmaNv:Ljava/lang/String; = "df.cdmaNv"

.field private static final BUNDLE_KEY__dfGeneric:Ljava/lang/String; = "df.generic"

.field private static final BUNDLE_KEY__dfGsm:Ljava/lang/String; = "df.gsm"

.field private static final BUNDLE_KEY__dfTdma:Ljava/lang/String; = "df.tdma"

.field private static final BUNDLE_KEY__idIcc:Ljava/lang/String; = "idIcc"

.field private static final BUNDLE_KEY__knownCarrierId:Ljava/lang/String; = "knownCarrierId"

.field private static final BUNDLE_KEY__knownMcc:Ljava/lang/String; = "knownMcc"

.field private static final BUNDLE_KEY__knownMnc:Ljava/lang/String; = "knownMnc"

.field private static final BUNDLE_KEY__knownSKU:Ljava/lang/String; = "knownSKU"

.field private static final BUNDLE_KEY__phoneInUse:Ljava/lang/String; = "phoneInUse"

.field private static final CHAR_BRACKET:[C

.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_MINUS:C = '-'

.field private static final CHAR_SLASH:[C

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_SQUARE_BRACKET:[C

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/HtcIccType;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG_PARCEL:Z = false

.field private static final DF_VALUE_CDMA:I = 0x7f25

.field private static final DF_VALUE_CDMA_NV:I = 0x17f25

.field private static final DF_VALUE_GENERIC:I = 0x7f10

.field private static final DF_VALUE_GSM:I = 0x7f20

.field private static final DF_VALUE_TDMA:I = 0x7f24

.field private static final LOG_TAG:Ljava/lang/String; = "HtcIccType"

.field private static final PARCEL_END:I = 0x7fffffff

.field private static final PARCEL_START:I = -0x80000000


# instance fields
.field public CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

.field public CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

.field public GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

.field public TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

.field public generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

.field public idIcc:Ljava/lang/String;

.field public knownCarrierId:Ljava/lang/String;

.field public knownMcc:Ljava/lang/String;

.field public knownMnc:Ljava/lang/String;

.field public knownSKU:Ljava/lang/Number;

.field public phoneInUse:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 439
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/HtcIccType$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcIccType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 517
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/HtcIccType;->CHAR_BRACKET:[C

    .line 518
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/telephony/HtcIccType;->CHAR_SQUARE_BRACKET:[C

    .line 519
    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    return-void

    .line 517
    :array_0
    .array-data 2
        0x28s
        0x29s
    .end array-data

    .line 518
    :array_1
    .array-data 2
        0x5bs
        0x5ds
    .end array-data

    .line 519
    :array_2
    .array-data 2
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 343
    .local v2, "header":I
    const/high16 v6, -0x80000000

    if-ne v2, v6, :cond_1

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 351
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 353
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v6

    if-lez v6, :cond_2

    move v5, v7

    .line 359
    .local v5, "tryDFs":Z
    :goto_2
    const/4 v3, 0x0

    .line 360
    .local v3, "performSkipping":Z
    :goto_3
    if-eqz v5, :cond_5

    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, "endOfParcel":Z
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 387
    const-string v6, "HtcIccType"

    const-string v9, "Parcel reading unexpected memory"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    const/4 v3, 0x1

    .line 391
    :goto_4
    if-nez v0, :cond_0

    if-eqz v3, :cond_3

    .line 392
    :cond_0
    const/4 v5, 0x0

    goto :goto_3

    .line 347
    .end local v0    # "endOfParcel":Z
    .end local v3    # "performSkipping":Z
    .end local v5    # "tryDFs":Z
    :cond_1
    const-string v6, "HtcIccType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parcel recovery:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v2, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    goto :goto_0

    :cond_2
    move v5, v8

    .line 358
    goto :goto_2

    .line 365
    .restart local v0    # "endOfParcel":Z
    .restart local v3    # "performSkipping":Z
    .restart local v5    # "tryDFs":Z
    :sswitch_0
    :try_start_2
    new-instance v6, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 397
    :catch_0
    move-exception v1

    .line 398
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 399
    const/4 v3, 0x1

    .line 400
    const-string v6, "HtcIccType"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parcel reading exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 368
    .end local v1    # "ex":Ljava/lang/Exception;
    :sswitch_1
    :try_start_3
    new-instance v6, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    goto :goto_4

    .line 371
    :sswitch_2
    new-instance v6, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    goto :goto_4

    .line 374
    :sswitch_3
    new-instance v6, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    goto :goto_4

    .line 377
    :sswitch_4
    new-instance v6, Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Landroid/os/Parcel;)V

    iput-object v6, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    goto :goto_4

    .line 380
    :sswitch_5
    const-string v6, "HtcIccType"

    const-string v9, "Parcel reading unexpected starting"

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x1

    .line 382
    goto :goto_4

    .line 384
    :sswitch_6
    const/4 v0, 0x1

    .line 385
    goto :goto_4

    .line 395
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-lez v6, :cond_4

    move v5, v7

    :goto_5
    goto/16 :goto_3

    :cond_4
    move v5, v8

    goto :goto_5

    .line 404
    .end local v0    # "endOfParcel":Z
    :cond_5
    if-eqz v3, :cond_7

    .line 405
    const/4 v4, 0x0

    .line 408
    .local v4, "skippingInts":I
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v6

    if-lez v6, :cond_8

    move v5, v7

    .line 418
    :goto_6
    if-nez v5, :cond_6

    .line 420
    :goto_7
    if-lez v4, :cond_7

    .line 421
    const-string v6, "HtcIccType"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parcel skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    .end local v4    # "skippingInts":I
    :cond_7
    return-void

    .line 411
    .restart local v4    # "skippingInts":I
    :sswitch_7
    const/4 v5, 0x0

    .line 412
    goto :goto_6

    :cond_8
    move v5, v8

    .line 415
    goto :goto_6

    .line 419
    :catch_1
    move-exception v6

    goto :goto_7

    .line 352
    .end local v3    # "performSkipping":Z
    .end local v4    # "skippingInts":I
    .end local v5    # "tryDFs":Z
    :catch_2
    move-exception v6

    goto/16 :goto_1

    .line 363
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x7f10 -> :sswitch_0
        0x7f20 -> :sswitch_1
        0x7f24 -> :sswitch_4
        0x7f25 -> :sswitch_2
        0x17f25 -> :sswitch_3
        0x7fffffff -> :sswitch_6
    .end sparse-switch

    .line 408
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_7
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public constructor <init>(Lcom/android/internal/telephony/HtcIccType;)V
    .locals 0
    .param p1, "s"    # Lcom/android/internal/telephony/HtcIccType;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/HtcIccType;->copyFrom(Lcom/android/internal/telephony/HtcIccType;)V

    .line 250
    return-void
.end method

.method private DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V
    .locals 5
    .param p1, "strBuf"    # Ljava/lang/StringBuilder;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "df"    # Lcom/android/internal/telephony/HtcIccType$DF;

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 568
    if-eqz p3, :cond_0

    .line 569
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_SQUARE_BRACKET:[C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 573
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 588
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->MCCMNC:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->SPN:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_SQUARE_BRACKET:[C

    aget-char v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    :cond_0
    return-void

    .line 576
    :cond_1
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 577
    .local v0, "lenImsi":I
    if-le v0, v4, :cond_2

    .line 578
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_BRACKET:[C

    aget-char v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    sget-object v1, Lcom/android/internal/telephony/HtcIccType;->CHAR_BRACKET:[C

    aget-char v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 584
    :cond_2
    iget-object v1, p3, Lcom/android/internal/telephony/HtcIccType$DF;->IMSI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 514
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Lcom/android/internal/telephony/HtcIccType;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 211
    new-instance v0, Lcom/android/internal/telephony/HtcIccType;

    invoke-direct {v0}, Lcom/android/internal/telephony/HtcIccType;-><init>()V

    .line 212
    .local v0, "ret":Lcom/android/internal/telephony/HtcIccType;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/HtcIccType;->setFromBundle(Landroid/os/Bundle;)V

    .line 213
    return-object v0
.end method

.method private setFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 217
    const-string v0, "phoneInUse"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 219
    :try_start_0
    const-string v0, "knownSKU"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 221
    :goto_0
    const-string v0, "knownCarrierId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 222
    const-string v0, "knownMcc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 223
    const-string v0, "knownMnc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 224
    const-string v0, "idIcc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 226
    :try_start_1
    const-string v0, "df.generic"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 229
    :goto_1
    :try_start_2
    const-string v0, "df.gsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 232
    :goto_2
    :try_start_3
    const-string v0, "df.cdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 235
    :goto_3
    :try_start_4
    const-string v0, "df.cdmaNv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 238
    :goto_4
    :try_start_5
    const-string v0, "df.tdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 240
    :goto_5
    return-void

    .line 239
    :catch_0
    move-exception v0

    goto :goto_5

    .line 236
    :catch_1
    move-exception v0

    goto :goto_4

    .line 233
    :catch_2
    move-exception v0

    goto :goto_3

    .line 230
    :catch_3
    move-exception v0

    goto :goto_2

    .line 227
    :catch_4
    move-exception v0

    goto :goto_1

    .line 220
    :catch_5
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/HtcIccType;)V
    .locals 2
    .param p1, "s"    # Lcom/android/internal/telephony/HtcIccType;

    .prologue
    .line 259
    iget v0, p1, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    iput v0, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    .line 260
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    .line 261
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    .line 265
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 268
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_1

    .line 269
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 271
    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_2

    .line 272
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 274
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_3

    .line 275
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 277
    :cond_3
    iget-object v0, p1, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_4

    .line 278
    new-instance v0, Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v1, p1, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcIccType$DF;-><init>(Lcom/android/internal/telephony/HtcIccType;Lcom/android/internal/telephony/HtcIccType$DF;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    .line 280
    :cond_4
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 490
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/HtcIccType;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .local v2, "s":Lcom/android/internal/telephony/HtcIccType;
    if-nez p1, :cond_1

    .line 499
    .end local v2    # "s":Lcom/android/internal/telephony/HtcIccType;
    :cond_0
    :goto_0
    return v3

    .line 491
    :catch_0
    move-exception v1

    .line 492
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 499
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Lcom/android/internal/telephony/HtcIccType;
    :cond_1
    iget v4, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    iget v5, v2, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    iget-object v5, v2, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-static {v4, v5}, Lcom/android/internal/telephony/HtcIccType;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInIntoBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 190
    const-string v0, "phoneInUse"

    iget v1, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v0, "knownSKU"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    const-string v0, "knownCarrierId"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "knownMcc"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "knownMnc"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "idIcc"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v0, "df.generic"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    const-string v0, "df.gsm"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    const-string v0, "df.cdma"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 199
    const-string v0, "df.cdmaNv"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 200
    const-string v0, "df.tdma"

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 201
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 461
    iget v1, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    mul-int/lit16 v3, v1, 0x400

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x2000

    :goto_0
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcIccType$DF;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcIccType$DF;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcIccType$DF;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/HtcIccType$DF;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v2}, Lcom/android/internal/telephony/HtcIccType$DF;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 476
    .local v0, "hashValue":I
    return v0

    .end local v0    # "hashValue":I
    :cond_1
    move v1, v2

    .line 461
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    move v1, v2

    goto :goto_6

    :cond_8
    move v1, v2

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v1, "strBuf":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 534
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 536
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 539
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_SLASH:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 543
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_0
    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 559
    const-string v2, "generic"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccType;->DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V

    .line 560
    const-string v2, "gsm"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccType;->DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V

    .line 561
    const-string v2, "cdma"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccType;->DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V

    .line 562
    const-string v2, "cdmanv"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccType;->DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V

    .line 563
    const-string v2, "tdma"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccType;->DFtoString(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/android/internal/telephony/HtcIccType$DF;)V

    .line 564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 548
    .local v0, "lenIccid":I
    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    .line 549
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_BRACKET:[C

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    sget-object v2, Lcom/android/internal/telephony/HtcIccType;->CHAR_BRACKET:[C

    const/4 v3, 0x1

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 555
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 299
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/android/internal/telephony/HtcIccType;->phoneInUse:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownSKU:Ljava/lang/Number;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownCarrierId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->knownMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->idIcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_0

    .line 313
    const/16 v0, 0x7f10

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->generic_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcIccType$DF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_1

    .line 317
    const/16 v0, 0x7f20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->GSM_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcIccType$DF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_2

    .line 321
    const/16 v0, 0x7f25

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcIccType$DF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_3

    .line 325
    const v0, 0x17f25

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->CDMA_NV_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcIccType$DF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    if-eqz v0, :cond_4

    .line 329
    const/16 v0, 0x7f24

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccType;->TDMA_part:Lcom/android/internal/telephony/HtcIccType$DF;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/HtcIccType$DF;->writeToParcel(Landroid/os/Parcel;I)V

    .line 332
    :cond_4
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    return-void
.end method
