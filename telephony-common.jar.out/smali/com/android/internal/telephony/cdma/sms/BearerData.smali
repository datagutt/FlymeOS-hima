.class public final Lcom/android/internal/telephony/cdma/sms/BearerData;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/sms/BearerData$1;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;,
        Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    }
.end annotation


# static fields
.field public static final ALERT_DEFAULT:I = 0x0

.field public static final ALERT_HIGH_PRIO:I = 0x3

.field public static final ALERT_LOW_PRIO:I = 0x1

.field public static final ALERT_MEDIUM_PRIO:I = 0x2

.field public static final DISPLAY_MODE_DEFAULT:I = 0x1

.field public static final DISPLAY_MODE_IMMEDIATE:I = 0x0

.field public static final DISPLAY_MODE_USER:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PERMANENT:I = 0x3

.field public static final ERROR_TEMPORARY:I = 0x2

.field public static final ERROR_UNDEFINED:I = 0xff

.field private static final KDDI_SUBPARAM_ANONYMOUS_REASON:B = 0x56t

.field private static final KDDI_SUBPARAM_ESN:B = 0x57t

.field private static final KDDI_SUBPARAM_IP_ADDRESS:B = 0x55t

.field public static final LANGUAGE_CHINESE:I = 0x6

.field public static final LANGUAGE_ENGLISH:I = 0x1

.field public static final LANGUAGE_FRENCH:I = 0x2

.field public static final LANGUAGE_HEBREW:I = 0x7

.field public static final LANGUAGE_JAPANESE:I = 0x4

.field public static final LANGUAGE_KOREAN:I = 0x5

.field public static final LANGUAGE_SPANISH:I = 0x3

.field public static final LANGUAGE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "BearerData"

.field public static final MESSAGE_TYPE_CANCELLATION:I = 0x3

.field public static final MESSAGE_TYPE_DELIVER:I = 0x1

.field public static final MESSAGE_TYPE_DELIVERY_ACK:I = 0x4

.field public static final MESSAGE_TYPE_DELIVER_REPORT:I = 0x7

.field public static final MESSAGE_TYPE_READ_ACK:I = 0x6

.field public static final MESSAGE_TYPE_SUBMIT:I = 0x2

.field public static final MESSAGE_TYPE_SUBMIT_REPORT:I = 0x8

.field public static final MESSAGE_TYPE_USER_ACK:I = 0x5

.field public static final PRIORITY_EMERGENCY:I = 0x3

.field public static final PRIORITY_INTERACTIVE:I = 0x1

.field public static final PRIORITY_NORMAL:I = 0x0

.field public static final PRIORITY_URGENT:I = 0x2

.field public static final PRIVACY_CONFIDENTIAL:I = 0x2

.field public static final PRIVACY_NOT_RESTRICTED:I = 0x0

.field public static final PRIVACY_RESTRICTED:I = 0x1

.field public static final PRIVACY_SECRET:I = 0x3

.field public static final RELATIVE_TIME_DAYS_LIMIT:I = 0xc4

.field public static final RELATIVE_TIME_HOURS_LIMIT:I = 0xa7

.field public static final RELATIVE_TIME_INDEFINITE:I = 0xf5

.field public static final RELATIVE_TIME_MINS_LIMIT:I = 0x8f

.field public static final RELATIVE_TIME_MOBILE_INACTIVE:I = 0xf7

.field public static final RELATIVE_TIME_NOW:I = 0xf6

.field public static final RELATIVE_TIME_RESERVED:I = 0xf8

.field public static final RELATIVE_TIME_WEEKS_LIMIT:I = 0xf4

.field public static final STATUS_ACCEPTED:I = 0x0

.field public static final STATUS_BLOCKED_DESTINATION:I = 0x7

.field public static final STATUS_CANCELLED:I = 0x3

.field public static final STATUS_CANCEL_FAILED:I = 0x6

.field public static final STATUS_DELIVERED:I = 0x2

.field public static final STATUS_DEPOSITED_TO_INTERNET:I = 0x1

.field public static final STATUS_DUPLICATE_MESSAGE:I = 0x9

.field public static final STATUS_INVALID_DESTINATION:I = 0xa

.field public static final STATUS_MESSAGE_EXPIRED:I = 0xd

.field public static final STATUS_NETWORK_CONGESTION:I = 0x4

.field public static final STATUS_NETWORK_ERROR:I = 0x5

.field public static final STATUS_TEXT_TOO_LONG:I = 0x8

.field public static final STATUS_UNDEFINED:I = 0xff

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1f

.field private static final SUBPARAM_ALERT_ON_MESSAGE_DELIVERY:B = 0xct

.field private static final SUBPARAM_CALLBACK_NUMBER:B = 0xet

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_ABSOLUTE:B = 0x6t

.field private static final SUBPARAM_DEFERRED_DELIVERY_TIME_RELATIVE:B = 0x7t

.field private static final SUBPARAM_ID_LAST_DEFINED:B = 0x17t

.field private static final SUBPARAM_LANGUAGE_INDICATOR:B = 0xdt

.field private static final SUBPARAM_MESSAGE_CENTER_TIME_STAMP:B = 0x3t

.field private static final SUBPARAM_MESSAGE_DEPOSIT_INDEX:B = 0x11t

.field private static final SUBPARAM_MESSAGE_DISPLAY_MODE:B = 0xft

.field private static final SUBPARAM_MESSAGE_IDENTIFIER:B = 0x0t

.field private static final SUBPARAM_MESSAGE_STATUS:B = 0x14t

.field private static final SUBPARAM_NUMBER_OF_MESSAGES:B = 0xbt

.field private static final SUBPARAM_PRIORITY_INDICATOR:B = 0x8t

.field private static final SUBPARAM_PRIVACY_INDICATOR:B = 0x9t

.field private static final SUBPARAM_REPLY_OPTION:B = 0xat

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_DATA:B = 0x12t

.field private static final SUBPARAM_SERVICE_CATEGORY_PROGRAM_RESULTS:B = 0x13t

.field private static final SUBPARAM_USER_DATA:B = 0x1t

.field private static final SUBPARAM_USER_RESPONSE_CODE:B = 0x2t

.field private static final SUBPARAM_VALIDITY_PERIOD_ABSOLUTE:B = 0x4t

.field private static final SUBPARAM_VALIDITY_PERIOD_RELATIVE:B = 0x5t


# instance fields
.field public alert:I

.field public alertIndicatorSet:Z

.field public callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

.field public cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field public deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public deferredDeliveryTimeRelative:I

.field public deferredDeliveryTimeRelativeSet:Z

.field public deliveryAckReq:Z

.field public depositIndex:I

.field public displayMode:I

.field public displayModeSet:Z

.field public errorClass:I

.field public hasUserDataHeader:Z

.field public isKddiEarthquakeAlert:Z

.field public language:I

.field public languageIndicatorSet:Z

.field public messageId:I

.field public messageStatus:I

.field public messageStatusSet:Z

.field public messageType:I

.field public msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public numberOfMessages:I

.field public priority:I

.field public priorityIndicatorSet:Z

.field public privacy:I

.field public privacyIndicatorSet:Z

.field public readAckReq:Z

.field public reportReq:Z

.field public serviceCategoryProgramData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation
.end field

.field public serviceCategoryProgramResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public userAckReq:Z

.field public userData:Lcom/android/internal/telephony/cdma/sms/UserData;

.field public userResponseCode:I

.field public userResponseCodeSet:Z

.field public validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

.field public validityPeriodRelative:I

.field public validityPeriodRelativeSet:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 139
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 150
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 162
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    .line 163
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 175
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 194
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 195
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 227
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 228
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 229
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 3455
    return-void
.end method

.method private static KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B
    .locals 15
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "numFields"    # I
    .param p2, "offset"    # I

    .prologue
    .line 3197
    const-string v12, "BearerData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "format ori userdata> 0x"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {v14}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    const-string v12, "BearerData"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numFields> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", offset> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3203
    .local v1, "data":[B
    const/4 v12, 0x2

    new-array v5, v12, [B

    fill-array-data v5, :array_0

    .line 3204
    .local v5, "newSmsType":[B
    const/4 v12, 0x5

    new-array v10, v12, [[B

    const/4 v12, 0x0

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_1

    aput-object v13, v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_2

    aput-object v13, v10, v12

    const/4 v12, 0x2

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_3

    aput-object v13, v10, v12

    const/4 v12, 0x3

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_4

    aput-object v13, v10, v12

    const/4 v12, 0x4

    const/4 v13, 0x2

    new-array v13, v13, [B

    fill-array-data v13, :array_5

    aput-object v13, v10, v12

    .line 3211
    .local v10, "smsType":[[B
    const/16 v12, 0xa

    new-array v11, v12, [B

    fill-array-data v11, :array_6

    .line 3219
    .local v11, "smsTypeEmailSig":[B
    const/16 v12, 0x1a

    new-array v8, v12, [B

    fill-array-data v8, :array_7

    .line 3254
    .local v8, "serviceData":[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v12

    if-nez v12, :cond_6

    .line 3255
    const/4 v9, 0x0

    .line 3261
    .local v9, "skipEsnCheck":Z
    :goto_0
    const/4 v2, 0x0

    .line 3264
    .local v2, "hasESN":Z
    if-nez v9, :cond_0

    array-length v12, v1

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 3265
    const/4 v12, 0x0

    aget-byte v12, v5, v12

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_0

    .line 3267
    add-int/lit8 p2, p2, 0x2

    .line 3268
    const/4 v2, 0x1

    .line 3274
    :cond_0
    if-nez v2, :cond_2

    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_2

    array-length v12, v1

    sub-int v12, v12, p2

    const/16 v13, 0xa

    if-lt v12, v13, :cond_2

    .line 3275
    const/4 v4, 0x1

    .line 3276
    .local v4, "isEmailSig":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v11

    if-ge v3, v12, :cond_1

    .line 3277
    aget-byte v12, v11, v3

    add-int v13, p2, v3

    aget-byte v13, v1, v13

    if-eq v12, v13, :cond_7

    .line 3278
    const/4 v4, 0x0

    .line 3282
    :cond_1
    if-eqz v4, :cond_2

    .line 3283
    const/high16 v12, 0x10000000

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3284
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3293
    .end local v3    # "i":I
    .end local v4    # "isEmailSig":Z
    :cond_2
    array-length v12, v1

    sub-int v12, v12, p2

    const/4 v13, 0x2

    if-lt v12, v13, :cond_a

    .line 3294
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    array-length v12, v10

    if-le v12, v3, :cond_3

    .line 3295
    aget-object v12, v10, v3

    const/4 v13, 0x0

    aget-byte v12, v12, v13

    aget-byte v13, v1, p2

    if-ne v12, v13, :cond_8

    aget-object v12, v10, v3

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    add-int/lit8 v13, p2, 0x1

    aget-byte v13, v1, v13

    if-ne v12, v13, :cond_8

    .line 3297
    packed-switch v3, :pswitch_data_0

    .line 3321
    :goto_3
    add-int/lit8 p2, p2, 0x2

    .line 3327
    :cond_3
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_4

    .line 3328
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    .line 3333
    :cond_4
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    if-nez v12, :cond_a

    .line 3334
    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-nez v12, :cond_5

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 3336
    :cond_5
    iget-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-nez v12, :cond_9

    .line 3353
    .end local v3    # "i":I
    .end local v8    # "serviceData":[B
    :goto_4
    return-object v8

    .line 3257
    .end local v2    # "hasESN":Z
    .end local v9    # "skipEsnCheck":Z
    .restart local v8    # "serviceData":[B
    :cond_6
    const/4 v9, 0x1

    .restart local v9    # "skipEsnCheck":Z
    goto/16 :goto_0

    .line 3276
    .restart local v2    # "hasESN":Z
    .restart local v3    # "i":I
    .restart local v4    # "isEmailSig":Z
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3299
    .end local v4    # "isEmailSig":Z
    :pswitch_0
    const/16 v12, 0x201

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3300
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3303
    :pswitch_1
    const/4 v12, 0x1

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3304
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3307
    :pswitch_2
    const/16 v12, 0x101

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3308
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3311
    :pswitch_3
    const/16 v12, 0x102

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3312
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3315
    :pswitch_4
    const/4 v12, 0x4

    iput v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3316
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    goto :goto_3

    .line 3294
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    move-object v8, v1

    .line 3341
    goto :goto_4

    .line 3349
    .end local v3    # "i":I
    :cond_a
    sub-int v7, p1, p2

    .line 3350
    .local v7, "resultDataLen":I
    new-array v6, v7, [B

    .line 3351
    .local v6, "resultData":[B
    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-static {v1, v0, v6, v12, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v8, v6

    .line 3353
    goto :goto_4

    .line 3203
    nop

    :array_0
    .array-data 1
        0x0t
        0x70t
    .end array-data

    .line 3204
    nop

    :array_1
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x4t
    .end array-data

    .line 3211
    nop

    :array_6
    .array-data 1
        0x53t
        0x49t
        0x47t
        0x4et
        0x41t
        0x4ct
        0x55t
        0x49t
        0x44t
        0x3at
    .end array-data

    .line 3219
    nop

    :array_7
    .array-data 1
        -0x6ct
        -0xft
        -0x6ft
        -0x32t
        -0x77t
        -0x62t
        -0x7et
        -0x34t
        -0x7et
        -0x43t
        -0x7et
        -0x21t
        -0x6bt
        0x5ct
        -0x72t
        -0x5at
        -0x7et
        -0x3bt
        -0x7et
        -0x55t
        -0x7et
        -0x24t
        -0x7et
        -0x47t
        -0x7et
        -0xft
    .end array-data

    .line 3297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static KddiformatSlamdownMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 12
    .param p0, "mBearerData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3359
    if-eqz p0, :cond_1

    .line 3360
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 3361
    .local v6, "ud":Lcom/android/internal/telephony/cdma/sms/UserData;
    iget-object v1, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3362
    .local v1, "data":[B
    const/4 v4, 0x0

    .line 3365
    .local v4, "offset":I
    array-length v7, v1

    if-lt v7, v11, :cond_0

    .line 3368
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_2

    .line 3369
    const/4 v5, 0x0

    .line 3380
    .local v5, "skipEsnCheck":Z
    :goto_0
    if-nez v5, :cond_0

    .line 3381
    aget-byte v7, v1, v10

    if-nez v7, :cond_0

    const/16 v7, 0x70

    aget-byte v8, v1, v9

    if-ne v7, v8, :cond_0

    .line 3382
    const-string v7, "BearerData"

    const-string v8, "ENS: 0x0070"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    add-int/lit8 v4, v4, 0x2

    .line 3389
    .end local v5    # "skipEsnCheck":Z
    :cond_0
    iget-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v7, v7

    sub-int/2addr v7, v4

    if-lt v7, v11, :cond_1

    .line 3391
    aget-byte v7, v1, v4

    if-nez v7, :cond_1

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_1

    .line 3392
    const-string v7, "BearerData"

    const-string v8, "sms type: 0x0000"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iput v10, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3396
    iput-boolean v9, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3402
    const/4 v3, 0x0

    .line 3404
    .local v3, "fixedCallbackNumber":[B
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiRoaming()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3405
    const/4 v7, 0x4

    new-array v3, v7, [B

    .end local v3    # "fixedCallbackNumber":[B
    fill-array-data v3, :array_0

    .line 3406
    .restart local v3    # "fixedCallbackNumber":[B
    invoke-static {v1, v10}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 3415
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 3416
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 3417
    iput-object v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 3419
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3423
    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 3428
    .end local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v1    # "data":[B
    .end local v3    # "fixedCallbackNumber":[B
    .end local v4    # "offset":I
    .end local v6    # "ud":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    return-void

    .line 3371
    .restart local v1    # "data":[B
    .restart local v4    # "offset":I
    .restart local v6    # "ud":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 v5, 0x1

    .restart local v5    # "skipEsnCheck":Z
    goto :goto_0

    .line 3408
    .end local v5    # "skipEsnCheck":Z
    .restart local v3    # "fixedCallbackNumber":[B
    :cond_3
    const/16 v7, 0xd

    new-array v3, v7, [B

    .end local v3    # "fixedCallbackNumber":[B
    fill-array-data v3, :array_1

    .line 3411
    .restart local v3    # "fixedCallbackNumber":[B
    invoke-static {v1, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 3420
    .restart local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception v2

    .line 3421
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "BearerData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "formatSlamdownMessage Addr decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3405
    :array_0
    .array-data 1
        0x31t
        0x34t
        0x31t
        0x36t
    .end array-data

    .line 3408
    :array_1
    .array-data 1
        0x2bt
        0x38t
        0x31t
        0x39t
        0x30t
        0x34t
        0x34t
        0x34t
        0x34t
        0x30t
        0x31t
        0x34t
        0x31t
    .end array-data
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z

    .prologue
    .line 509
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calcTextEncodingDetails(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 10
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force7BitEncoding"    # Z
    .param p2, "nli"    # I

    .prologue
    .line 521
    const/4 v6, 0x0

    .line 524
    .local v6, "septets":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 525
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/HtcMessageHelper;->getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 635
    :cond_0
    :goto_0
    return-object v7

    .line 530
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    .local v5, "originalString":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiTwoByteLF()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 532
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v6

    .line 533
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 534
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->insertDummyDataForTwoCharacterLf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 539
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v6

    .line 541
    const/16 v2, 0xa0

    .line 542
    .local v2, "max_data_septets":I
    const/16 v1, 0x8c

    .line 545
    .local v1, "max_data_bytes":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCricketUserData()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 546
    const/16 v2, 0x96

    .line 547
    const/16 v1, 0x83

    .line 551
    :cond_3
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForPhoneType(I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 552
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 554
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintSegmentIndicator()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 555
    const/4 v8, -0x1

    if-ne v6, v8, :cond_8

    const/4 v0, 0x0

    .line 557
    .local v0, "bAscii":Z
    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-gt v8, v2, :cond_5

    :cond_4
    if-nez v0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    div-int/lit8 v9, v1, 0x2

    if-le v8, v9, :cond_6

    .line 560
    :cond_5
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object p0

    .line 561
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v6

    .line 565
    .end local v0    # "bAscii":Z
    :cond_6
    const/4 v8, -0x1

    if-ne v6, v8, :cond_b

    .line 566
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    mul-int/lit8 v6, v8, 0x2

    .line 569
    if-lez v6, :cond_7

    .line 570
    div-int v9, v6, v1

    rem-int v8, v6, v1

    if-lez v8, :cond_9

    const/4 v8, 0x1

    :goto_2
    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 572
    :cond_7
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 573
    if-lez v6, :cond_a

    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v8, v1

    sub-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    :goto_3
    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 575
    const/4 v8, 0x3

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 555
    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 570
    :cond_9
    const/4 v8, 0x0

    goto :goto_2

    .line 573
    :cond_a
    div-int/lit8 v8, v1, 0x2

    goto :goto_3

    .line 579
    :cond_b
    if-lez v6, :cond_c

    .line 580
    div-int v9, v6, v2

    rem-int v8, v6, v2

    if-lez v8, :cond_e

    const/4 v8, 0x1

    :goto_4
    add-int/2addr v8, v9

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 582
    :cond_c
    iput v6, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 583
    if-lez v6, :cond_d

    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v8, v2

    sub-int v2, v8, v6

    .end local v2    # "max_data_septets":I
    :cond_d
    iput v2, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 585
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 580
    .restart local v2    # "max_data_septets":I
    :cond_e
    const/4 v8, 0x0

    goto :goto_4

    .line 592
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_f
    const/4 v8, -0x1

    if-eq v6, v8, :cond_10

    if-gt v6, v2, :cond_10

    .line 593
    new-instance v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v7}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 594
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 595
    iput v6, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 596
    sub-int v8, v2, v6

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 597
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 602
    .end local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_10
    invoke-static {v5, p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 605
    .restart local v7    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 608
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 609
    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v4, v8, 0x2

    .line 610
    .local v4, "octets":I
    const/16 v8, 0x8c

    if-le v4, v8, :cond_12

    .line 616
    const/16 v3, 0x86

    .line 618
    .local v3, "max_user_data_bytes_with_header":I
    invoke-static {}, Landroid/telephony/SmsMessage;->hasEmsSupport()Z

    move-result v8

    if-nez v8, :cond_11

    .line 620
    const/16 v8, 0x4a4

    if-gt v4, v8, :cond_11

    .line 621
    add-int/lit8 v3, v3, -0x2

    .line 624
    :cond_11
    add-int/lit8 v8, v3, -0x1

    add-int/2addr v8, v4

    div-int/2addr v8, v3

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 626
    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v8, v3

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 632
    .end local v3    # "max_user_data_bytes_with_header":I
    :goto_5
    const/4 v8, 0x3

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_0

    .line 629
    :cond_12
    const/4 v8, 0x1

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 630
    rsub-int v8, v4, 0x8c

    div-int/lit8 v8, v8, 0x2

    iput v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5
.end method

.method public static calcTextEncodingDetailsForCSIM(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 10
    .param p0, "msgBody"    # Ljava/lang/String;
    .param p1, "address"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .param p2, "callback"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .prologue
    .line 646
    new-instance v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 647
    .local v6, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v5, 0x0

    .line 649
    .local v5, "septets":I
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .line 655
    if-nez p1, :cond_1

    const/4 v8, 0x0

    :goto_0
    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v8, 0x2

    if-nez p2, :cond_2

    const/4 v8, 0x0

    :goto_1
    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v8, 0x3

    .line 667
    .local v7, "totalBytes":I
    rsub-int v0, v7, 0xac

    .line 668
    .local v0, "maxBytes":I
    mul-int/lit8 v8, v0, 0x8

    div-int/lit8 v3, v8, 0x7

    .line 671
    .local v3, "maxSeptets":I
    move v1, v0

    .line 673
    .local v1, "maxConcatenatedBytes":I
    mul-int/lit8 v8, v1, 0x8

    div-int/lit8 v2, v8, 0x7

    .line 678
    .local v2, "maxConcatenatedSeptets":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    if-gt v5, v3, :cond_3

    .line 679
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 680
    iput v5, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 681
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 682
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 737
    :cond_0
    :goto_2
    return-object v6

    .line 655
    .end local v0    # "maxBytes":I
    .end local v1    # "maxConcatenatedBytes":I
    .end local v2    # "maxConcatenatedSeptets":I
    .end local v3    # "maxSeptets":I
    .end local v7    # "totalBytes":I
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->getSize()I

    move-result v8

    goto :goto_1

    .line 684
    .restart local v0    # "maxBytes":I
    .restart local v1    # "maxConcatenatedBytes":I
    .restart local v2    # "maxConcatenatedSeptets":I
    .restart local v3    # "maxSeptets":I
    .restart local v7    # "totalBytes":I
    :cond_3
    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    .line 685
    iput v5, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 686
    if-le v5, v3, :cond_5

    .line 687
    rem-int v8, v5, v2

    if-nez v8, :cond_4

    .line 688
    div-int v8, v5, v2

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 689
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 699
    :goto_3
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 720
    :goto_4
    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 723
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 724
    iget v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    mul-int/lit8 v4, v8, 0x2

    .line 725
    .local v4, "octets":I
    if-le v4, v0, :cond_9

    .line 726
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 727
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 733
    :goto_5
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_2

    .line 691
    .end local v4    # "octets":I
    :cond_4
    div-int v8, v5, v2

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 692
    rem-int v8, v5, v2

    sub-int v8, v2, v8

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 696
    :cond_5
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 697
    sub-int v8, v3, v5

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 701
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v4, v8, 0x2

    .line 702
    .restart local v4    # "octets":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 704
    if-le v4, v0, :cond_8

    .line 705
    rem-int v8, v4, v1

    if-nez v8, :cond_7

    .line 706
    div-int v8, v4, v1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 707
    const/4 v8, 0x0

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 717
    :goto_6
    const/4 v8, 0x3

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_4

    .line 709
    :cond_7
    div-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 710
    rem-int v8, v4, v1

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 714
    :cond_8
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 715
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6

    .line 730
    :cond_9
    const/4 v8, 0x1

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 731
    sub-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    iput v8, v6, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_5
.end method

.method public static countAsciiSeptets(Ljava/lang/CharSequence;Z)I
    .locals 5
    .param p0, "msg"    # Ljava/lang/CharSequence;
    .param p1, "force"    # Z

    .prologue
    const/4 v2, -0x1

    .line 497
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 498
    .local v1, "msgLen":I
    if-eqz p1, :cond_1

    .line 504
    .end local v1    # "msgLen":I
    :cond_0
    :goto_0
    return v1

    .line 499
    .restart local v1    # "msgLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 500
    sget-object v3, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 501
    goto :goto_0

    .line 499
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .param p0, "smsData"    # [B

    .prologue
    .line 2841
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 1
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I

    .prologue
    .line 2855
    const/16 v0, 0x1002

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    return-object v0
.end method

.method public static decode([BII)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 10
    .param p0, "smsData"    # [B
    .param p1, "serviceCategory"    # I
    .param p2, "teleserviceId"    # I

    .prologue
    const/16 v9, 0x17

    const/4 v8, 0x1

    .line 2875
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2876
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2877
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v3, 0x0

    .line 2878
    .local v3, "foundSubparamMask":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lez v7, :cond_3

    .line 2879
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2880
    .local v5, "subparamId":I
    shl-int v6, v8, v5

    .line 2887
    .local v6, "subparamIdBit":I
    and-int v7, v3, v6

    if-eqz v7, :cond_2

    if-ltz v5, :cond_2

    if-gt v5, v9, :cond_2

    .line 2890
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal duplicate subparameter ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2999
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v3    # "foundSubparamMask":I
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "subparamId":I
    .end local v6    # "subparamIdBit":I
    :catch_0
    move-exception v2

    .line 3000
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v7, "BearerData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2893
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v3    # "foundSubparamMask":I
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5    # "subparamId":I
    .restart local v6    # "subparamIdBit":I
    :cond_2
    const/4 v1, 0x0

    .line 2894
    .local v1, "decodeSuccess":Z
    sparse-switch v5, :sswitch_data_0

    .line 2960
    :try_start_1
    invoke-static {v0, v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z

    move-result v1

    .line 2962
    :goto_3
    if-eqz v1, :cond_0

    if-ltz v5, :cond_0

    if-gt v5, v9, :cond_0

    .line 2965
    or-int/2addr v3, v6

    goto :goto_0

    .line 2896
    :sswitch_0
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2897
    goto :goto_3

    .line 2899
    :sswitch_1
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2900
    goto :goto_3

    .line 2902
    :sswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2903
    goto :goto_3

    .line 2905
    :sswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2906
    goto :goto_3

    .line 2908
    :sswitch_4
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2909
    goto :goto_3

    .line 2911
    :sswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2912
    goto :goto_3

    .line 2914
    :sswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2915
    goto :goto_3

    .line 2917
    :sswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2918
    goto :goto_3

    .line 2920
    :sswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2921
    goto :goto_3

    .line 2923
    :sswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2924
    goto :goto_3

    .line 2926
    :sswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2927
    goto :goto_3

    .line 2929
    :sswitch_b
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2930
    goto :goto_3

    .line 2932
    :sswitch_c
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2933
    goto :goto_3

    .line 2935
    :sswitch_d
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2936
    goto :goto_3

    .line 2938
    :sswitch_e
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2939
    goto :goto_3

    .line 2941
    :sswitch_f
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2942
    goto :goto_3

    .line 2944
    :sswitch_10
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2945
    goto :goto_3

    .line 2947
    :sswitch_11
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2948
    goto :goto_3

    .line 2950
    :sswitch_12
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2951
    goto :goto_3

    .line 2956
    :sswitch_13
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 3001
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1    # "decodeSuccess":Z
    .end local v3    # "foundSubparamMask":I
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "subparamId":I
    .end local v6    # "subparamIdBit":I
    :catch_1
    move-exception v2

    .line 3002
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v7, "BearerData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BearerData decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2968
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v3    # "foundSubparamMask":I
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_3
    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_4

    .line 2969
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2971
    :cond_4
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v7, :cond_1

    .line 2972
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->isCmasAlertCategory(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2973
    invoke-static {v0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V

    goto/16 :goto_2

    .line 2974
    :cond_5
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v7, v8, :cond_7

    .line 2975
    xor-int/lit8 v7, v3, 0x1

    xor-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    .line 2979
    const-string v7, "BearerData"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 must occur without extra subparams ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_6
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2989
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiUnicodeWemtByteCount()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2990
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    invoke-static {v7, v8, v9, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZI)V

    goto/16 :goto_2

    .line 2993
    :cond_8
    iget-object v7, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v8, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-boolean v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2894
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_7
        0x4 -> :sswitch_8
        0x5 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_b
        0x8 -> :sswitch_f
        0x9 -> :sswitch_c
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_10
        0xd -> :sswitch_d
        0xe -> :sswitch_5
        0xf -> :sswitch_e
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x14 -> :sswitch_6
        0x55 -> :sswitch_13
        0x56 -> :sswitch_13
        0x57 -> :sswitch_13
    .end sparse-switch
.end method

.method private static decode7bitAscii([BII)Ljava/lang/String;
    .locals 12
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0xd

    const/16 v9, 0xa

    .line 1531
    const/4 v4, 0x0

    .line 1532
    .local v4, "removeOffsetFromNumfields":Z
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    .line 1533
    mul-int/lit8 v7, p2, 0x7

    mul-int/lit8 v8, p1, 0x8

    add-int/2addr v7, v8

    array-length v8, p0

    mul-int/lit8 v8, v8, 0x8

    if-le v7, v8, :cond_0

    .line 1534
    const/4 v4, 0x1

    .line 1537
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isFollowCtEmsFormat()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v4, :cond_2

    .line 1538
    :cond_1
    mul-int/lit8 v7, p1, 0x8

    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_3

    .line 1539
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    sub-int/2addr p2, v7

    .line 1547
    :cond_2
    :goto_0
    mul-int/lit8 v7, p1, 0x8

    :try_start_0
    rem-int/lit8 v7, v7, 0x7

    if-nez v7, :cond_4

    .line 1548
    mul-int/lit8 p1, p1, 0x8

    .line 1555
    :goto_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1556
    .local v5, "strBuf":Ljava/lang/StringBuffer;
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1557
    .local v3, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    mul-int/lit8 v7, p2, 0x7

    add-int v6, p1, v7

    .line 1558
    .local v6, "wantedBits":I
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-ge v7, v6, :cond_5

    .line 1559
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insufficient data (wanted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bits, but only have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    .end local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "strBuf":Ljava/lang/StringBuffer;
    .end local v6    # "wantedBits":I
    :catch_0
    move-exception v1

    .line 1579
    .local v1, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "7bit ASCII decode failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1541
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_3
    mul-int/lit8 v7, p1, 0x8

    div-int/lit8 v7, v7, 0x7

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr p2, v7

    goto :goto_0

    .line 1550
    :cond_4
    mul-int/lit8 p1, p1, 0x8

    .line 1551
    :try_start_1
    rem-int/lit8 v7, p1, 0x7

    rsub-int/lit8 v7, v7, 0x7

    add-int/2addr p1, v7

    goto :goto_1

    .line 1562
    .restart local v3    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v6    # "wantedBits":I
    :cond_5
    invoke-virtual {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1563
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, p2, :cond_9

    .line 1564
    const/4 v7, 0x7

    invoke-virtual {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1565
    .local v0, "charCode":I
    if-lt v0, v11, :cond_6

    sget v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP_MAX_INDEX:I

    if-gt v0, v7, :cond_6

    .line 1567
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    add-int/lit8 v8, v0, -0x20

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1563
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1568
    :cond_6
    if-ne v0, v9, :cond_7

    .line 1569
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1570
    :cond_7
    if-ne v0, v10, :cond_8

    .line 1571
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1574
    :cond_8
    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1577
    .end local v0    # "charCode":I
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    return-object v7
.end method

.method private static decode7bitGsm([BII)Ljava/lang/String;
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1599
    mul-int/lit8 v6, p1, 0x8

    .line 1600
    .local v6, "offsetBits":I
    add-int/lit8 v0, v6, 0x6

    div-int/lit8 v7, v0, 0x7

    .line 1601
    .local v7, "offsetSeptets":I
    sub-int/2addr p2, v7

    .line 1602
    mul-int/lit8 v0, v7, 0x7

    sub-int v3, v0, v6

    .local v3, "paddingBits":I
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    .line 1603
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v8

    .line 1605
    .local v8, "result":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 1606
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v1, "7bit GSM decoding failed"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1608
    :cond_0
    return-object v8
.end method

.method public static decodeCBM(Lcom/android/internal/telephony/cdma/SmsMessage;)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 14
    .param p0, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    const/4 v13, 0x1

    .line 2732
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEncodedBearerData()[B

    move-result-object v7

    .line 2734
    .local v7, "smsData":[B
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v4, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2735
    .local v4, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 2736
    .local v0, "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isCMAS()Z

    move-result v5

    .line 2738
    .local v5, "isCmas":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->isKddiEarthquakeAlert()Z

    move-result v6

    .line 2739
    .local v6, "isKddiEarthquakeAlert":Z
    iput-boolean v6, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    .line 2742
    const/4 v3, 0x0

    .line 2743
    .local v3, "foundSubparamMask":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v10

    if-lez v10, :cond_3

    .line 2744
    const/4 v1, 0x0

    .line 2745
    .local v1, "decodeSuccess":Z
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2746
    .local v8, "subparamId":I
    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "subparamId> 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    shl-int v9, v13, v8

    .line 2748
    .local v9, "subparamIdBit":I
    and-int v10, v3, v9

    if-eqz v10, :cond_2

    .line 2749
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal duplicate subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2823
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1    # "decodeSuccess":Z
    .end local v3    # "foundSubparamMask":I
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "isCmas":Z
    .end local v6    # "isKddiEarthquakeAlert":Z
    .end local v8    # "subparamId":I
    .end local v9    # "subparamIdBit":I
    :catch_0
    move-exception v2

    .line 2824
    .local v2, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    .end local v2    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    .line 2752
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1    # "decodeSuccess":Z
    .restart local v3    # "foundSubparamMask":I
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5    # "isCmas":Z
    .restart local v6    # "isKddiEarthquakeAlert":Z
    .restart local v8    # "subparamId":I
    .restart local v9    # "subparamIdBit":I
    :cond_2
    packed-switch v8, :pswitch_data_0

    .line 2788
    :pswitch_0
    :try_start_1
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported bearer data subparameter ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2825
    .end local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v1    # "decodeSuccess":Z
    .end local v3    # "foundSubparamMask":I
    .end local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v5    # "isCmas":Z
    .end local v6    # "isKddiEarthquakeAlert":Z
    .end local v8    # "subparamId":I
    .end local v9    # "subparamIdBit":I
    :catch_1
    move-exception v2

    .line 2826
    .local v2, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BearerData decode failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2754
    .end local v2    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    .restart local v0    # "bData":Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v1    # "decodeSuccess":Z
    .restart local v3    # "foundSubparamMask":I
    .restart local v4    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v5    # "isCmas":Z
    .restart local v6    # "isKddiEarthquakeAlert":Z
    .restart local v8    # "subparamId":I
    .restart local v9    # "subparamIdBit":I
    :pswitch_1
    :try_start_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2791
    :goto_3
    if-eqz v1, :cond_0

    or-int/2addr v3, v9

    goto/16 :goto_0

    .line 2758
    :pswitch_2
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2759
    goto :goto_3

    .line 2761
    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2762
    goto :goto_3

    .line 2765
    :pswitch_4
    const/4 v10, 0x1

    invoke-static {v0, v4, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v1

    .line 2767
    goto :goto_3

    .line 2769
    :pswitch_5
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2770
    goto :goto_3

    .line 2772
    :pswitch_6
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2773
    goto :goto_3

    .line 2775
    :pswitch_7
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2776
    goto :goto_3

    .line 2778
    :pswitch_8
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2779
    goto :goto_3

    .line 2781
    :pswitch_9
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2783
    goto :goto_3

    .line 2785
    :pswitch_a
    invoke-static {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v1

    .line 2786
    goto :goto_3

    .line 2793
    .end local v1    # "decodeSuccess":Z
    .end local v8    # "subparamId":I
    .end local v9    # "subparamIdBit":I
    :cond_3
    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_4

    .line 2794
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v11, "missing MESSAGE_IDENTIFIER subparam"

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2796
    :cond_4
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v10, :cond_1

    .line 2797
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v10, v13, :cond_6

    .line 2798
    xor-int/lit8 v10, v3, 0x1

    xor-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_5

    .line 2802
    const-string v10, "BearerData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IS-91 must occur without extra subparams ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto/16 :goto_2

    .line 2807
    :cond_6
    if-eqz v5, :cond_7

    .line 2808
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 2809
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    if-eqz v10, :cond_1

    .line 2810
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v11

    iput v11, v10, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->serviceCategory:I

    goto/16 :goto_2

    .line 2817
    :cond_7
    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v11, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    iget-boolean v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->isKddiEarthquakeAlert:Z

    invoke-static {v10, v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 2752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private static decodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 11
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v10, 0x8

    .line 2200
    const/16 v0, 0x8

    .line 2201
    .local v0, "EXPECTED_PARAM_SIZE":I
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    mul-int/lit8 v6, v9, 0x8

    .line 2202
    .local v6, "paramBits":I
    if-ge v6, v10, :cond_0

    .line 2203
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2204
    const/4 v8, 0x0

    .line 2234
    :goto_0
    return v8

    .line 2206
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2207
    .local v1, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p1, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2208
    const/4 v4, 0x4

    .line 2209
    .local v4, "fieldBits":B
    const/4 v2, 0x1

    .line 2210
    .local v2, "consumedBits":B
    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v8, :cond_1

    .line 2211
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 2212
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 2213
    const/16 v4, 0x8

    .line 2214
    int-to-byte v2, v10

    .line 2216
    :cond_1
    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 2217
    add-int/lit8 v9, v2, 0x8

    int-to-byte v2, v9

    .line 2218
    sub-int v7, v6, v2

    .line 2219
    .local v7, "remainingBits":I
    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int v3, v9, v4

    .line 2220
    .local v3, "dataBits":I
    sub-int v5, v7, v3

    .line 2221
    .local v5, "paddingBits":I
    if-ge v7, v3, :cond_2

    .line 2222
    new-instance v8, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CALLBACK_NUMBER subparam encoding size error (remainingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", dataBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", paddingBits + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2226
    :cond_2
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 2227
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2228
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 2230
    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->judgeAndPrependPlus()V

    .line 2233
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0
.end method

.method private static decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .param p3, "width"    # I
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1498
    if-ltz p2, :cond_0

    mul-int v3, p2, p3

    add-int/2addr v3, p1

    array-length v4, p0

    if-le v3, v4, :cond_2

    .line 1500
    :cond_0
    rem-int v2, p1, p3

    .line 1501
    .local v2, "padding":I
    array-length v3, p0

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    div-int v1, v3, p3

    .line 1502
    .local v1, "maxNumFields":I
    if-gez v1, :cond_1

    .line 1503
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " decode failed: offset out of range"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1505
    :cond_1
    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " decode error: offset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " numFields = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " data.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxNumFields = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    move p2, v1

    .line 1512
    .end local v1    # "maxNumFields":I
    .end local v2    # "padding":I
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiEmoji()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "utf-16be"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1516
    new-instance v3, Ljava/lang/String;

    mul-int v4, p2, p3

    const-string v5, "utf-16be"

    invoke-direct {v3, p0, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiReplaceKddiUcs2WithStandardEmoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1520
    :goto_0
    return-object v3

    :cond_3
    new-instance v3, Ljava/lang/String;

    mul-int v4, p2, p3

    invoke-direct {v3, p0, p1, v4, p4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " decode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 14
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1705
    const/4 v2, 0x0

    .line 1706
    .local v2, "decodeSuccess":Z
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1708
    .local v8, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 1709
    .local v4, "paramBytes":I
    mul-int/lit8 v3, v4, 0x8

    .line 1710
    .local v3, "paramBits":I
    const-string v9, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "paramBytes> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    if-gt v4, v13, :cond_0

    .line 1714
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1767
    :goto_0
    return v13

    .line 1721
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    const/4 v10, 0x5

    invoke-virtual {p1, v10}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncoding(I)V

    .line 1722
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCharSetEncodingSet(Z)V

    .line 1723
    const-string v9, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "encoding> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    new-array v7, v4, [B

    .line 1726
    .local v7, "textArray":[B
    add-int/lit8 v9, v3, -0x8

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v1

    .line 1727
    .local v1, "data1":[B
    new-array v6, v13, [B

    .line 1728
    .local v6, "remainByte":[B
    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 1729
    .local v5, "remainBits":I
    const-string v9, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainBits> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    shl-int/lit8 v9, v5, 0x5

    and-int/lit16 v9, v9, 0xe0

    int-to-byte v9, v9

    aput-byte v9, v6, v12

    .line 1731
    const-string v9, "BearerData"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remainByte> 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    array-length v9, v1

    invoke-static {v1, v12, v7, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1733
    array-length v9, v1

    invoke-static {v6, v12, v7, v9, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1734
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertText([B)V

    .line 1736
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getNumberOfFields(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;)I

    move-result v0

    .line 1737
    .local v0, "charCount":I
    if-gez v0, :cond_1

    .line 1738
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1741
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1764
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported cmas charset encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getCharSetEncoding()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1743
    :pswitch_1
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1744
    const/4 v2, 0x1

    .line 1745
    goto/16 :goto_0

    .line 1748
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1749
    const/4 v2, 0x1

    .line 1750
    goto/16 :goto_0

    .line 1752
    :pswitch_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1753
    const/4 v2, 0x1

    .line 1754
    goto/16 :goto_0

    .line 1756
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1757
    const/4 v2, 0x1

    .line 1758
    goto/16 :goto_0

    .line 1760
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertTextStr(Ljava/lang/String;)V

    .line 1761
    const/4 v2, 0x1

    .line 1762
    goto/16 :goto_0

    .line 1741
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    .line 1675
    const/16 v0, 0x20

    .line 1676
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1677
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1678
    .local v2, "paramBits":I
    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    .line 1679
    add-int/lit8 v2, v2, -0x20

    .line 1680
    const/4 v1, 0x1

    .line 1681
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCategory(I)V

    .line 1682
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setResponseType(I)V

    .line 1683
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setSeverity(I)V

    .line 1684
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setUrgency(I)V

    .line 1685
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCertainty(I)V

    .line 1686
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1688
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1689
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e_record_type_1 decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1694
    return v1

    .line 1689
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 8
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 1643
    const/16 v0, 0x50

    .line 1644
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1645
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1646
    .local v2, "paramBits":I
    const/16 v4, 0x50

    if-lt v2, v4, :cond_0

    .line 1647
    add-int/lit8 v2, v2, -0x50

    .line 1648
    const/4 v1, 0x1

    .line 1649
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setCmasId(I)V

    .line 1651
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setAlertHandling(I)V

    .line 1652
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    .line 1653
    .local v3, "time":[B
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setExpires(Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;)V

    .line 1654
    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expires> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-virtual {p1, v7}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setLanguage(I)V

    .line 1657
    .end local v3    # "time":[B
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 1658
    :cond_1
    const-string v5, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e_record_type_2 decode "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v4, "succeeded"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " (extra bits = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1663
    return v1

    .line 1658
    :cond_3
    const-string v4, "failed"

    goto :goto_0
.end method

.method private static decodeCmasUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;I)V
    .locals 22
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "serviceCategory"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2627
    new-instance v13, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2628
    .local v13, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v13}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ge v2, v0, :cond_0

    .line 2629
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v19, "emergency CB with no CMAE_protocol_version"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2631
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    .line 2632
    .local v15, "protocolVersion":I
    if-eqz v15, :cond_1

    .line 2633
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "unsupported CMAE_protocol_version "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2636
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryToCmasMessageClass(I)I

    move-result v3

    .line 2637
    .local v3, "messageClass":I
    const/4 v4, -0x1

    .line 2638
    .local v4, "category":I
    const/4 v5, -0x1

    .line 2639
    .local v5, "responseType":I
    const/4 v6, -0x1

    .line 2640
    .local v6, "severity":I
    const/4 v7, -0x1

    .line 2641
    .local v7, "urgency":I
    const/4 v8, -0x1

    .line 2644
    .local v8, "certainty":I
    const-wide/16 v10, 0x0

    .line 2647
    .local v10, "expireTimeMilli":J
    :goto_0
    invoke-virtual {v13}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v2

    const/16 v19, 0x10

    move/from16 v0, v19

    if-lt v2, v0, :cond_3

    .line 2648
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    .line 2649
    .local v17, "recordType":I
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    .line 2650
    .local v16, "recordLen":I
    packed-switch v17, :pswitch_data_0

    .line 2708
    const-string v2, "BearerData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "skipping unsupported CMAS record type "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    mul-int/lit8 v2, v16, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    .line 2652
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v9}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2653
    .local v9, "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v2, 0x5

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2654
    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2655
    const/4 v2, 0x0

    iput v2, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 2658
    iget v2, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v2, :pswitch_data_1

    .line 2675
    :pswitch_1
    const/4 v14, 0x0

    .line 2678
    .local v14, "numFields":I
    :goto_1
    iput v14, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2679
    mul-int/lit8 v2, v16, 0x8

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2680
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2681
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    goto :goto_0

    .line 2661
    .end local v14    # "numFields":I
    :pswitch_2
    add-int/lit8 v14, v16, -0x1

    .line 2662
    .restart local v14    # "numFields":I
    goto :goto_1

    .line 2667
    .end local v14    # "numFields":I
    :pswitch_3
    mul-int/lit8 v2, v16, 0x8

    add-int/lit8 v2, v2, -0x5

    div-int/lit8 v14, v2, 0x7

    .line 2668
    .restart local v14    # "numFields":I
    goto :goto_1

    .line 2671
    .end local v14    # "numFields":I
    :pswitch_4
    add-int/lit8 v2, v16, -0x1

    div-int/lit8 v14, v2, 0x2

    .line 2672
    .restart local v14    # "numFields":I
    goto :goto_1

    .line 2685
    .end local v9    # "alertUserData":Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v14    # "numFields":I
    :pswitch_5
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    .line 2686
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2687
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2688
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2689
    const/4 v2, 0x4

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 2690
    mul-int/lit8 v2, v16, 0x8

    add-int/lit8 v2, v2, -0x1c

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2695
    :pswitch_6
    const/16 v2, 0x10

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2696
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2697
    const/16 v2, 0x30

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v18

    .line 2698
    .local v18, "time":[B
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->fromatTimeStamp([B)Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;

    move-result-object v12

    .line 2699
    .local v12, "expireTimeSatmp":Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    if-eqz v12, :cond_2

    .line 2700
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;->toMillis(Z)J

    move-result-wide v10

    .line 2701
    const-string v2, "BearerData"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "expires> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    .line 2714
    .end local v12    # "expireTimeSatmp":Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage$TimeStamp;
    .end local v16    # "recordLen":I
    .end local v17    # "recordType":I
    .end local v18    # "time":[B
    :cond_3
    new-instance v2, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct/range {v2 .. v8}, Landroid/telephony/SmsCbCmasInfo;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 2718
    const-wide/16 v20, 0x0

    cmp-long v2, v10, v20

    if-eqz v2, :cond_4

    .line 2719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2, v10, v11}, Landroid/telephony/SmsCbCmasInfo;->setExpireTimeMilli(J)V

    .line 2722
    :cond_4
    return-void

    .line 2650
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 2658
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static decodeCmasUserDataPayload(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 20
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    move-object/from16 v16, v0

    .line 1789
    .local v16, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1790
    .local v10, "hasUserDataHeader":Z
    const/4 v13, 0x0

    .line 1792
    .local v13, "offset":I
    if-eqz v10, :cond_0

    .line 1793
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-byte v17, v17, v18

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 1794
    .local v15, "udhLen":I
    add-int/lit8 v17, v15, 0x1

    add-int v13, v13, v17

    .line 1795
    new-array v11, v15, [B

    .line 1796
    .local v11, "headerData":[B
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v11, v2, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1797
    invoke-static {v11}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1802
    .end local v11    # "headerData":[B
    .end local v15    # "udhLen":I
    :cond_0
    :try_start_0
    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 1803
    .local v12, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;-><init>()V

    .line 1804
    .local v4, "cmas":Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    move-object/from16 v0, v16

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->cmas:Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;

    .line 1806
    if-lez v13, :cond_1

    .line 1807
    mul-int/lit8 v14, v13, 0x8

    .line 1808
    .local v14, "offsetBits":I
    invoke-virtual {v12, v14}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1811
    .end local v14    # "offsetBits":I
    :cond_1
    const/16 v3, 0x18

    .line 1812
    .local v3, "EXPECTED_CMAS_MIN_SIZE":I
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 1813
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal CMAS format. offset: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    .end local v3    # "EXPECTED_CMAS_MIN_SIZE":I
    .end local v4    # "cmas":Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .end local v12    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :catch_0
    move-exception v8

    .line 1855
    .local v8, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAS Message decode failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1817
    .end local v8    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .restart local v3    # "EXPECTED_CMAS_MIN_SIZE":I
    .restart local v4    # "cmas":Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;
    .restart local v12    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_2
    const/16 v17, 0x8

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->setProtocolVersion(I)V

    .line 1818
    const-string v17, "BearerData"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "CMAE_pro_v> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaCmasMessage;->getProtocolVersion()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const/4 v9, 0x0

    .line 1822
    .local v9, "foundErecordTypeMask":I
    :cond_3
    :goto_0
    invoke-virtual {v12}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_5

    .line 1823
    const/4 v5, 0x0

    .line 1824
    .local v5, "decodeSuccess":Z
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 1825
    .local v6, "eRecordTypeId":I
    const-string v17, "BearerData"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "eRecordTypeId> 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/16 v17, 0x1

    shl-int v7, v17, v6

    .line 1827
    .local v7, "eRecoredTypeIdBit":I
    and-int v17, v9, v7

    if-eqz v17, :cond_4

    .line 1828
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "illegal duplicate e_recored_type ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1831
    :cond_4
    packed-switch v6, :pswitch_data_0

    .line 1844
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    .line 1845
    const-string v17, "BearerData"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "skip unsupported e_record-type ( "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    :goto_1
    if-eqz v5, :cond_3

    or-int/2addr v9, v7

    goto/16 :goto_0

    .line 1833
    :pswitch_0
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordAlertText(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1834
    goto :goto_1

    .line 1836
    :pswitch_1
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType1(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1837
    goto :goto_1

    .line 1839
    :pswitch_2
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCmasErecordType2(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v5

    .line 1840
    goto :goto_1

    .line 1851
    .end local v5    # "decodeSuccess":Z
    .end local v6    # "eRecordTypeId":I
    .end local v7    # "eRecoredTypeIdBit":I
    :cond_5
    and-int/lit8 v17, v9, 0x1

    if-nez v17, :cond_6

    .line 1852
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v18, "CMAS Message missing E_RECORD_TYPE_ALERT_TEXT type"

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1857
    :cond_6
    return-void

    .line 1831
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeDeferredDeliveryAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2315
    const/16 v0, 0x30

    .line 2316
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2317
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2318
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2319
    add-int/lit8 v2, v2, -0x30

    .line 2320
    const/4 v1, 0x1

    .line 2321
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2324
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2325
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2330
    return v1

    .line 2325
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDeferredDeliveryRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2355
    const/16 v0, 0x8

    .line 2356
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2357
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2358
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2359
    add-int/lit8 v2, v2, -0x8

    .line 2360
    const/4 v1, 0x1

    .line 2361
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 2363
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2364
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DEFERRED_DELIVERY_TIME_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2369
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 2370
    return v1

    .line 2364
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDepositIndex(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2147
    const/16 v0, 0x10

    .line 2148
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2149
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2150
    .local v2, "paramBits":I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 2151
    add-int/lit8 v2, v2, -0x10

    .line 2152
    const/4 v1, 0x1

    .line 2153
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    .line 2155
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2156
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_DEPOSIT_INDEX decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2161
    return v1

    .line 2156
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2416
    const/16 v0, 0x8

    .line 2417
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2418
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2419
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2420
    add-int/lit8 v2, v2, -0x8

    .line 2421
    const/4 v1, 0x1

    .line 2422
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    .line 2423
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2425
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2426
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DISPLAY_MODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2431
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    .line 2432
    return v1

    .line 2426
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeDtmfSmsAddress([BI)Ljava/lang/String;
    .locals 6
    .param p0, "rawData"    # [B
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 2169
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2170
    .local v1, "strBuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_4

    .line 2171
    div-int/lit8 v3, v0, 0x2

    aget-byte v3, p0, v3

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x4

    rsub-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v2, v3, 0xf

    .line 2174
    .local v2, "val":I
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2170
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2175
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2176
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const/16 v3, 0x2a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2177
    :cond_2
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v3, 0x23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 2178
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid SMS address DTMF code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2180
    .end local v2    # "val":I
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static decodeIs91(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    packed-switch v0, :pswitch_data_0

    .line 2098
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported IS-91 message type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2088
    :pswitch_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    .line 2101
    :goto_0
    return-void

    .line 2091
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 2095
    :pswitch_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V

    goto :goto_0

    .line 2086
    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static decodeIs91Cli(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2069
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2070
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    div-int/lit8 v1, v4, 0x4

    .line 2071
    .local v1, "dataLen":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2072
    .local v3, "numFields":I
    const/16 v4, 0xe

    if-gt v1, v4, :cond_0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_0

    if-ge v1, v3, :cond_1

    .line 2073
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v5, "IS-91 voicemail status decoding failed"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2075
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 2076
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 2077
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 2078
    int-to-byte v4, v3

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 2079
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 2080
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 2081
    return-void
.end method

.method private static decodeIs91ShortMessage(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2046
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v2, v5}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2047
    .local v2, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v5

    div-int/lit8 v0, v5, 0x6

    .line 2048
    .local v0, "dataLen":I
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2050
    .local v3, "numFields":I
    const/16 v5, 0xe

    if-gt v3, v5, :cond_0

    if-ge v0, v3, :cond_1

    .line 2051
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v6, "IS-91 short message decoding failed"

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2053
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2054
    .local v4, "strbuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 2055
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2054
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2057
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2058
    return-void
.end method

.method private static decodeIs91VoicemailStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x3

    .line 2003
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-direct {v3, v7}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 2004
    .local v3, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    div-int/lit8 v1, v7, 0x6

    .line 2005
    .local v1, "dataLen":I
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2006
    .local v4, "numFields":I
    const/16 v7, 0xe

    if-gt v1, v7, :cond_0

    if-lt v1, v8, :cond_0

    if-ge v1, v4, :cond_1

    .line 2007
    :cond_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v8, "IS-91 voicemail status decoding failed"

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2010
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2011
    .local v6, "strbuf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 2012
    sget-object v7, Lcom/android/internal/telephony/cdma/sms/UserData;->ASCII_MAP:[C

    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2027
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 2028
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2014
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "strbuf":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2015
    .local v0, "data":Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 2016
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2017
    .local v5, "prioCode":C
    const/16 v7, 0x20

    if-ne v5, v7, :cond_3

    .line 2018
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2025
    :goto_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2026
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v8, 0x3

    add-int/lit8 v9, v4, -0x3

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2032
    return-void

    .line 2019
    :cond_3
    const/16 v7, 0x21

    if-ne v5, v7, :cond_4

    .line 2020
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2029
    .end local v0    # "data":Ljava/lang/String;
    .end local v5    # "prioCode":C
    .end local v6    # "strbuf":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v2

    .line 2030
    .local v2, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2022
    .end local v2    # "ex":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v5    # "prioCode":C
    .restart local v6    # "strbuf":Ljava/lang/StringBuffer;
    :cond_4
    :try_start_2
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IS-91 voicemail status decoding failed: illegal priority setting ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private static decodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2396
    const/16 v0, 0x8

    .line 2397
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2398
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2399
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2400
    add-int/lit8 v2, v2, -0x8

    .line 2401
    const/4 v1, 0x1

    .line 2402
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    .line 2404
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2405
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LANGUAGE_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2410
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    .line 2411
    return v1

    .line 2405
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeLatin([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1614
    const/4 v0, 0x1

    const-string v1, "ISO-8859-1"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    .line 1407
    const/16 v0, 0x18

    .line 1408
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 1409
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    mul-int/lit8 v2, v4, 0x8

    .line 1410
    .local v2, "paramBits":I
    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 1411
    add-int/lit8 v2, v2, -0x18

    .line 1412
    const/4 v1, 0x1

    .line 1413
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 1414
    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1415
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 1416
    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    if-ne v4, v3, :cond_2

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1417
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1419
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_4

    .line 1420
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_IDENTIFIER decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    if-nez v2, :cond_4

    .line 1429
    const-string v3, "BearerData"

    const-string v4, "decodeMessageId meet abnormal paramBits 0, throw exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal parameterBits ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1416
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1420
    :cond_3
    const-string v3, "failed"

    goto :goto_1

    .line 1434
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1435
    return v1
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 1
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 2261
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    return v0
.end method

.method private static decodeMsgCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "isCbm"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2269
    const/16 v0, 0x30

    .line 2270
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2271
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2274
    .local v2, "paramBits":I
    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiCdmaSmsFormat()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2276
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2277
    const/4 v3, 0x1

    .line 2291
    :goto_0
    return v3

    .line 2280
    :cond_0
    if-lt v2, v4, :cond_1

    .line 2281
    add-int/lit8 v2, v2, -0x30

    .line 2282
    const/4 v1, 0x1

    .line 2283
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2285
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 2286
    :cond_2
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_CENTER_TIME_STAMP decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    move v3, v1

    .line 2291
    goto :goto_0

    .line 2286
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2128
    const/16 v0, 0x8

    .line 2129
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2130
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2131
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2132
    add-int/lit8 v2, v2, -0x8

    .line 2133
    const/4 v1, 0x1

    .line 2134
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    .line 2136
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2137
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NUMBER_OF_MESSAGES decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2142
    return v1

    .line 2137
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2458
    const/16 v0, 0x8

    .line 2459
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2460
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2462
    .local v2, "paramBits":I
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMtCmail()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2463
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2464
    const/4 v3, 0x1

    .line 2480
    :goto_0
    return v3

    .line 2467
    :cond_0
    if-lt v2, v4, :cond_1

    .line 2468
    add-int/lit8 v2, v2, -0x8

    .line 2469
    const/4 v1, 0x1

    .line 2470
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    .line 2471
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2473
    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    .line 2474
    :cond_2
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALERT_ON_MESSAGE_DELIVERY decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v3, "succeeded"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2479
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    move v3, v1

    .line 2480
    goto :goto_0

    .line 2474
    :cond_4
    const-string v3, "failed"

    goto :goto_1
.end method

.method private static decodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2239
    const/16 v0, 0x8

    .line 2240
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2241
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2242
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2243
    add-int/lit8 v2, v2, -0x8

    .line 2244
    const/4 v1, 0x1

    .line 2245
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    .line 2246
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    .line 2248
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2249
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MESSAGE_STATUS decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2254
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    .line 2255
    return v1

    .line 2249
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeOctet([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1588
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1589
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Octet decode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static decodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2437
    const/16 v0, 0x8

    .line 2438
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2439
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2440
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2441
    add-int/lit8 v2, v2, -0x8

    .line 2442
    const/4 v1, 0x1

    .line 2443
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 2444
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2446
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2447
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIORITY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2452
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 2453
    return v1

    .line 2447
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2375
    const/16 v0, 0x8

    .line 2376
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2377
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2378
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2379
    add-int/lit8 v2, v2, -0x8

    .line 2380
    const/4 v1, 0x1

    .line 2381
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    .line 2382
    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2384
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2385
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRIVACY_INDICATOR decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2390
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    .line 2391
    return v1

    .line 2385
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2105
    const/16 v0, 0x8

    .line 2106
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2107
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2108
    .local v2, "paramBits":I
    if-lt v2, v6, :cond_0

    .line 2109
    add-int/lit8 v2, v2, -0x8

    .line 2110
    const/4 v1, 0x1

    .line 2111
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 2112
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 2113
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 2114
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    if-ne v3, v4, :cond_6

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 2115
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2117
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2118
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REPLY_OPTION decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_7

    const-string v3, "succeeded"

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2123
    return v1

    :cond_3
    move v3, v5

    .line 2111
    goto :goto_0

    :cond_4
    move v3, v5

    .line 2112
    goto :goto_1

    :cond_5
    move v3, v5

    .line 2113
    goto :goto_2

    :cond_6
    move v4, v5

    .line 2114
    goto :goto_3

    .line 2118
    :cond_7
    const-string v3, "failed"

    goto :goto_4
.end method

.method private static decodeReserved(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;I)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .param p2, "subparamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1442
    const/4 v0, 0x0

    .line 1443
    .local v0, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .line 1444
    .local v2, "subparamLen":I
    mul-int/lit8 v1, v2, 0x8

    .line 1445
    .local v1, "paramBits":I
    invoke-virtual {p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v3

    if-gt v1, v3, :cond_0

    .line 1446
    const/4 v0, 0x1

    .line 1447
    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1449
    :cond_0
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESERVED bearer data subparameter "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (param bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    if-nez v0, :cond_2

    .line 1452
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESERVED bearer data subparameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had invalid SUBPARAM_LEN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1449
    :cond_1
    const-string v3, "failed"

    goto :goto_0

    .line 1456
    :cond_2
    return v0
.end method

.method private static decodeServiceCategoryProgramData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 20
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2506
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 2507
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2511
    :cond_0
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    mul-int/lit8 v13, v17, 0x8

    .line 2512
    .local v13, "paramBits":I
    const/16 v17, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v11

    .line 2513
    .local v11, "msgEncoding":I
    add-int/lit8 v13, v13, -0x5

    .line 2515
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v13, :cond_1

    .line 2516
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode failed: only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits expected)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2520
    :cond_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2522
    .local v14, "programDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramData;>;"
    const/16 v9, 0x30

    .line 2523
    .local v9, "CATEGORY_FIELD_MIN_SIZE":I
    const/4 v10, 0x0

    .line 2524
    .local v10, "decodeSuccess":Z
    :goto_0
    const/16 v17, 0x30

    move/from16 v0, v17

    if-lt v13, v0, :cond_3

    .line 2525
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    .line 2526
    .local v3, "operation":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    shl-int/lit8 v17, v17, 0x8

    const/16 v18, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    or-int v4, v17, v18

    .line 2527
    .local v4, "category":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 2528
    .local v5, "language":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 2529
    .local v6, "maxMessages":I
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 2530
    .local v7, "alertOption":I
    const/16 v17, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    .line 2531
    .local v12, "numFields":I
    add-int/lit8 v13, v13, -0x30

    .line 2533
    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getBitsForNumFields(II)I

    move-result v15

    .line 2534
    .local v15, "textBits":I
    if-ge v13, v15, :cond_2

    .line 2535
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "category name is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits in length,"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " but there are only "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bits available"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2539
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 2540
    .local v16, "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, v16

    iput v11, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 2541
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 2542
    move-object/from16 v0, v16

    iput v12, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 2543
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 2544
    sub-int/2addr v13, v15

    .line 2546
    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V

    .line 2547
    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 2548
    .local v8, "categoryName":Ljava/lang/String;
    new-instance v2, Landroid/telephony/cdma/CdmaSmsCbProgramData;

    invoke-direct/range {v2 .. v8}, Landroid/telephony/cdma/CdmaSmsCbProgramData;-><init>(IIIIILjava/lang/String;)V

    .line 2550
    .local v2, "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2552
    const/4 v10, 0x1

    .line 2553
    goto/16 :goto_0

    .line 2555
    .end local v2    # "programData":Landroid/telephony/cdma/CdmaSmsCbProgramData;
    .end local v3    # "operation":I
    .end local v4    # "category":I
    .end local v5    # "language":I
    .end local v6    # "maxMessages":I
    .end local v7    # "alertOption":I
    .end local v8    # "categoryName":Ljava/lang/String;
    .end local v12    # "numFields":I
    .end local v15    # "textBits":I
    .end local v16    # "userData":Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_3
    if-eqz v10, :cond_4

    if-lez v13, :cond_5

    .line 2556
    :cond_4
    const-string v18, "BearerData"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SERVICE_CATEGORY_PROGRAM_DATA decode "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v10, :cond_6

    const-string v17, "succeeded"

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, " (extra bits = "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v19, 0x29

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2562
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    .line 2563
    return v10

    .line 2556
    :cond_6
    const-string v17, "failed"

    goto :goto_1
.end method

.method private static decodeShiftJis([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1620
    const/4 v0, 0x1

    const-string v1, "Shift_JIS"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 6
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2184
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2188
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v4, v4

    const-string v5, "US-ASCII"

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :goto_0
    return-void

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v2, "invalid SMS address ASCII code"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2193
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeDtmfSmsAddress([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto :goto_0
.end method

.method private static decodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 1462
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 1463
    .local v2, "paramBits":I
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 1464
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1465
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 1466
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1467
    const/4 v0, 0x5

    .line 1468
    .local v0, "consumedBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1470
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 1471
    add-int/lit8 v0, v0, 0x8

    .line 1473
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1474
    add-int/lit8 v0, v0, 0x8

    .line 1475
    sub-int v1, v2, v0

    .line 1476
    .local v1, "dataBits":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1477
    return v5
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;Z)V
    .locals 1
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1865
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V

    .line 1866
    return-void
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZ)V
    .locals 1
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "isKddiEarthquakeAlert"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1874
    const/16 v0, 0x1002

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZI)V

    .line 1875
    return-void
.end method

.method private static decodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;ZZI)V
    .locals 12
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "isKddiEarthquakeAlert"    # Z
    .param p3, "teleserviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1881
    const/4 v5, 0x0

    .line 1882
    .local v5, "offset":I
    if-eqz p1, :cond_0

    .line 1883
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    and-int/lit16 v8, v9, 0xff

    .line 1884
    .local v8, "udhLen":I
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v5, v9

    .line 1885
    new-array v4, v8, [B

    .line 1886
    .local v4, "headerData":[B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v11, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1887
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1891
    .end local v4    # "headerData":[B
    .end local v8    # "udhLen":I
    :cond_0
    const/16 v2, 0x9

    .line 1892
    .local v2, "encodingTypeFromDcs":I
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    .line 1893
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getEncodingTypeFromDcs(B)I

    move-result v2

    .line 1894
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 1901
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRemoveUdhFromPayload()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1902
    const/4 v9, 0x1

    if-ne p1, v9, :cond_2

    .line 1903
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v9, :cond_2

    .line 1905
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1906
    .local v3, "header":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v3, :cond_2

    iget-object v9, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_2

    iget-object v9, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v10, 0xb84

    if-ne v9, v10, :cond_2

    .line 1907
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1908
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v9, v9

    sub-int/2addr v9, v5

    new-array v7, v9, [B

    .line 1909
    .local v7, "truePayload":[B
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x0

    array-length v11, v7

    invoke-static {v9, v5, v7, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1910
    iput-object v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1911
    const/4 v5, 0x0

    .line 1918
    .end local v3    # "header":Lcom/android/internal/telephony/SmsHeader;
    .end local v7    # "truePayload":[B
    :cond_2
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    packed-switch v9, :pswitch_data_0

    .line 1981
    :pswitch_0
    new-instance v9, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unsupported user data encoding ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1924
    :pswitch_1
    const/4 v1, 0x0

    .line 1935
    .local v1, "decodingtypeUTF8":Z
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    new-array v6, v9, [B

    .line 1936
    .local v6, "payload":[B
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v10, v10

    if-ge v9, v10, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1939
    .local v0, "copyLen":I
    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1940
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1942
    if-nez v1, :cond_4

    .line 1945
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 1984
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v6    # "payload":[B
    :goto_1
    return-void

    .line 1936
    .restart local v1    # "decodingtypeUTF8":Z
    .restart local v6    # "payload":[B
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v0, v9

    goto :goto_0

    .line 1947
    .restart local v0    # "copyLen":I
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf8([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1952
    .end local v0    # "copyLen":I
    .end local v1    # "decodingtypeUTF8":Z
    .end local v6    # "payload":[B
    :pswitch_2
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitAscii([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1957
    :pswitch_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiUnicodeWemtByteCount()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1958
    const/16 v9, 0x1005

    if-ne p3, v9, :cond_5

    .line 1959
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1963
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeUtf16([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1966
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode7bitGsm([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1969
    :pswitch_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeLatin([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1973
    :pswitch_6
    if-nez p2, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMtSms()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1974
    iget v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {p0, v5, v9}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1976
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-static {v9, v5, v10}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeShiftJis([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_1

    .line 1918
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static decodeUserResponseCode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2485
    const/16 v0, 0x8

    .line 2486
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2487
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2488
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2489
    add-int/lit8 v2, v2, -0x8

    .line 2490
    const/4 v1, 0x1

    .line 2491
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCode:I

    .line 2493
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2494
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_RESPONSE_CODE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2499
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userResponseCodeSet:Z

    .line 2500
    return v1

    .line 2494
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeUtf16([BII)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1490
    rem-int/lit8 v0, p1, 0x2

    .line 1491
    .local v0, "padding":I
    add-int v1, p1, v0

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    .line 1492
    const/4 v1, 0x2

    const-string v2, "utf-16be"

    invoke-static {p0, p1, p2, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static decodeUtf8([BII)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1483
    const/4 v0, 0x1

    const-string v1, "UTF-8"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decodeCharset([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static decodeValidityAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x30

    .line 2296
    const/16 v0, 0x30

    .line 2297
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2298
    .local v1, "decodeSuccess":Z
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2299
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2300
    add-int/lit8 v2, v2, -0x30

    .line 2301
    const/4 v1, 0x1

    .line 2302
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->fromByteArray([B)Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    .line 2304
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2305
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_ABSOLUTE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2310
    return v1

    .line 2305
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method private static decodeValidityRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    .line 2335
    const/16 v0, 0x8

    .line 2336
    .local v0, "EXPECTED_PARAM_SIZE":I
    const/4 v1, 0x0

    .line 2337
    .local v1, "decodeSuccess":Z
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .line 2338
    .local v2, "paramBits":I
    if-lt v2, v4, :cond_0

    .line 2339
    add-int/lit8 v2, v2, -0x8

    .line 2340
    const/4 v1, 0x1

    .line 2341
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    .line 2343
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    .line 2344
    :cond_1
    const-string v4, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VALIDITY_PERIOD_RELATIVE decode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v3, "succeeded"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (extra bits = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 2349
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    .line 2350
    return v1

    .line 2344
    :cond_3
    const-string v3, "failed"

    goto :goto_0
.end method

.method public static encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1332
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_e

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1335
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 1336
    .local v1, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1337
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1338
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v2, :cond_0

    .line 1339
    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1340
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1342
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v2, :cond_1

    .line 1343
    const/16 v2, 0x8

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1344
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1346
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v2, :cond_3

    .line 1347
    :cond_2
    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1348
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1350
    :cond_3
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-eqz v2, :cond_4

    .line 1351
    const/16 v2, 0x8

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1352
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1354
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v2, :cond_f

    .line 1355
    const/16 v2, 0x8

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1356
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1363
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_6

    .line 1364
    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1365
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1368
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v2, :cond_7

    .line 1369
    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1370
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1372
    :cond_7
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v2, :cond_8

    .line 1373
    const/16 v2, 0x8

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1374
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1376
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v2, :cond_9

    .line 1377
    const/16 v2, 0x8

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1378
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1380
    :cond_9
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v2, :cond_a

    .line 1381
    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1382
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1384
    :cond_a
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v2, :cond_b

    .line 1385
    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1386
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1388
    :cond_b
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v2, :cond_c

    .line 1389
    const/16 v2, 0x8

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1390
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1392
    :cond_c
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    .line 1393
    const/16 v2, 0x8

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1394
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V

    .line 1396
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1402
    .end local v1    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :goto_2
    return-object v2

    :cond_e
    move v2, v3

    .line 1332
    goto/16 :goto_0

    .line 1359
    .restart local v1    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v2, :cond_5

    .line 1360
    const/16 v2, 0x8

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1361
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1397
    .end local v1    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    .end local v0    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1399
    :catch_1
    move-exception v0

    .line 1400
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BearerData encode failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V
    .locals 8
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 899
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v0

    .line 900
    .local v0, "payload":[B
    array-length v4, p1

    add-int/lit8 v2, v4, 0x1

    .line 901
    .local v2, "udhBytes":I
    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v3, v4, 0x2

    .line 902
    .local v3, "udhCodeUnits":I
    array-length v4, v0

    div-int/lit8 v1, v4, 0x2

    .line 903
    .local v1, "payloadCodeUnits":I
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 904
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 905
    add-int v4, v3, v1

    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 906
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 907
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 908
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, p1

    invoke-static {p1, v6, v4, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 909
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v5, v0

    invoke-static {v0, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 910
    return-void
.end method

.method private static encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 790
    if-nez p2, :cond_0

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B

    move-result-object v1

    .line 791
    .local v1, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 792
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 793
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 794
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 790
    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encode7bitAscii(Ljava/lang/String;Z)[B
    .locals 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 746
    :try_start_0
    new-instance v4, Lcom/android/internal/util/BitwiseOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 747
    .local v4, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 748
    .local v3, "msgLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 749
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 750
    .local v0, "charCode":I
    if-ne v0, v8, :cond_1

    .line 751
    if-eqz p1, :cond_0

    .line 752
    const/4 v5, 0x7

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 748
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 754
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot ASCII encode ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .end local v0    # "charCode":I
    .end local v2    # "i":I
    .end local v3    # "msgLen":I
    .end local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v1

    .line 762
    .local v1, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "7bit ASCII encode failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 757
    .end local v1    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v0    # "charCode":I
    .restart local v2    # "i":I
    .restart local v3    # "msgLen":I
    .restart local v4    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_1
    const/4 v5, 0x7

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 760
    .end local v0    # "charCode":I
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5
.end method

.method private static encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 770
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 773
    .local v1, "udhBytes":I
    mul-int/lit8 v3, v1, 0x8

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_0

    .line 774
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v2, v3, 0x7

    .line 777
    .local v2, "udhSeptets":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 778
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 779
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 780
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 781
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 782
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 783
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 784
    return-void

    .line 776
    .end local v0    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .end local v2    # "udhSeptets":I
    :cond_0
    mul-int/lit8 v3, v1, 0x8

    div-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "udhSeptets":I
    goto :goto_0
.end method

.method private static encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    .locals 7
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "udhData"    # [B
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 885
    array-length v3, p1

    add-int/lit8 v1, v3, 0x1

    .line 886
    .local v1, "udhBytes":I
    mul-int/lit8 v3, v1, 0x8

    add-int/lit8 v3, v3, 0x6

    div-int/lit8 v2, v3, 0x7

    .line 887
    .local v2, "udhSeptets":I
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v2, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v0

    .line 888
    .local v0, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 889
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 890
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 891
    iget-object v3, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 892
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v5

    .line 893
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, p1

    invoke-static {p1, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 894
    return-void
.end method

.method private static encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "septetOffset"    # I
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 871
    if-nez p2, :cond_0

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, p1, v3, v4, v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v1

    .line 872
    .local v1, "fullData":[B
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>(Lcom/android/internal/telephony/cdma/sms/BearerData$1;)V

    .line 873
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    .line 874
    const/4 v3, 0x1

    iget-object v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    const/4 v5, 0x0

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 875
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    return-object v2

    .end local v1    # "fullData":[B
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_0
    move v3, v4

    .line 871
    goto :goto_0

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "7bit GSM encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodeCallbackNumber(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1179
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 1180
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V

    .line 1181
    const/16 v3, 0x9

    .line 1182
    .local v3, "paramBits":I
    const/4 v1, 0x0

    .line 1183
    .local v1, "dataBits":I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_2

    .line 1184
    add-int/lit8 v3, v3, 0x7

    .line 1185
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x8

    .line 1189
    :goto_0
    add-int/2addr v3, v1

    .line 1190
    div-int/lit8 v8, v3, 0x8

    rem-int/lit8 v5, v3, 0x8

    if-lez v5, :cond_3

    move v5, v6

    :goto_1
    add-int v4, v8, v5

    .line 1191
    .local v4, "paramBytes":I
    mul-int/lit8 v5, v4, 0x8

    sub-int v2, v5, v3

    .line 1192
    .local v2, "paddingBits":I
    invoke-virtual {p1, v9, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1193
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1194
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v5, v6, :cond_0

    .line 1195
    const/4 v5, 0x3

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1196
    const/4 v5, 0x4

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1198
    :cond_0
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, v9, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1199
    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p1, v1, v5}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1200
    if-lez v2, :cond_1

    invoke-virtual {p1, v2, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1201
    :cond_1
    return-void

    .line 1187
    .end local v2    # "paddingBits":I
    .end local v4    # "paramBytes":I
    :cond_2
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v5, 0x4

    goto :goto_0

    :cond_3
    move v5, v7

    .line 1190
    goto :goto_1
.end method

.method private static encodeCdmaSmsAddress(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)V
    .locals 5
    .param p0, "addr"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1123
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v2, v4, :cond_1

    .line 1125
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1130
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1133
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->extractPureNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, "pureNumber":Ljava/lang/String;
    :try_start_1
    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1140
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    if-eqz v2, :cond_0

    .line 1141
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 1142
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 1143
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 1144
    iput v4, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    goto :goto_0

    .line 1137
    :catch_1
    move-exception v0

    .line 1138
    .restart local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    const-string v3, "invalid SMS address, cannot convert to ASCII"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static encodeCenterTimeStamp(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1242
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1246
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1247
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1248
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1249
    return-void
.end method

.method private static encodeDisplayMode(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1287
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1288
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1289
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1290
    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 10
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1098
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1099
    .local v3, "digits":I
    mul-int/lit8 v1, v3, 0x4

    .line 1100
    .local v1, "dataBits":I
    div-int/lit8 v2, v1, 0x8

    .line 1101
    .local v2, "dataBytes":I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    .line 1102
    new-array v5, v2, [B

    .line 1103
    .local v5, "rawData":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_5

    .line 1104
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1105
    .local v0, "c":C
    const/4 v6, 0x0

    .line 1106
    .local v6, "val":I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    add-int/lit8 v6, v0, -0x30

    .line 1111
    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    rem-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v9, 0x4

    rsub-int/lit8 v9, v9, 0x4

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 1103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1101
    .end local v0    # "c":C
    .end local v4    # "i":I
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 1107
    .restart local v0    # "c":C
    .restart local v4    # "i":I
    .restart local v5    # "rawData":[B
    .restart local v6    # "val":I
    :cond_1
    const/16 v7, 0x30

    if-ne v0, v7, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    .line 1108
    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    .line 1109
    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    .line 1110
    :cond_4
    const/4 v5, 0x0

    .line 1113
    .end local v0    # "c":C
    .end local v5    # "rawData":[B
    .end local v6    # "val":I
    :cond_5
    return-object v5
.end method

.method private static encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 5
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 915
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v1

    .line 916
    .local v1, "headerData":[B
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v2, :cond_3

    .line 917
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 918
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAsciiEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    .line 935
    :goto_0
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 937
    return-void

    .line 919
    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 920
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V

    goto :goto_0

    .line 921
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 922
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0

    .line 924
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported EMS user data encoding ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)V
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode16bitEms(Lcom/android/internal/telephony/cdma/sms/UserData;[B)V

    goto :goto_0
.end method

.method private static encodeLanguageIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1280
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1281
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1282
    return-void
.end method

.method private static encodeMessageId(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 5
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v3, 0x8

    .line 484
    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 485
    const/4 v0, 0x4

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 486
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 487
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 488
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 489
    invoke-virtual {p1, v4}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 490
    return-void

    .line 488
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static encodeMsgCount(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1214
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1215
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1216
    return-void
.end method

.method private static encodeMsgDeliveryAlert(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1303
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1304
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1305
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1306
    return-void
.end method

.method private static encodeMsgStatus(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1206
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1207
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1208
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1209
    return-void
.end method

.method private static encodePriorityIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1295
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1296
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1297
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1298
    return-void
.end method

.method private static encodePrivacyIndicator(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 1272
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1273
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1274
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 1275
    return-void
.end method

.method private static encodeReplyOption(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 3
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1089
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1090
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1091
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1092
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1093
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1094
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1095
    return-void

    :cond_0
    move v0, v2

    .line 1090
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1091
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1092
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1093
    goto :goto_3
.end method

.method private static encodeScpResults(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 7
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v5, 0x8

    .line 1311
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramResults:Ljava/util/ArrayList;

    .line 1312
    .local v3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/cdma/CdmaSmsCbProgramResults;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1313
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/cdma/CdmaSmsCbProgramResults;

    .line 1314
    .local v2, "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategory()I

    move-result v0

    .line 1315
    .local v0, "category":I
    shr-int/lit8 v4, v0, 0x8

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1316
    invoke-virtual {p1, v5, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1317
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getLanguage()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1318
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->getCategoryResult()I

    move-result v4

    invoke-virtual {p1, v6, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1319
    invoke-virtual {p1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    goto :goto_0

    .line 1321
    .end local v0    # "category":I
    .end local v2    # "result":Landroid/telephony/cdma/CdmaSmsCbProgramResults;
    :cond_0
    return-void
.end method

.method private static encodeShiftJis(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 940
    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shift-JIS encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeUserData(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 10
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8c

    const/16 v9, 0xa

    const/16 v8, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1051
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 1052
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .line 1054
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    if-le v4, v7, :cond_1

    .line 1055
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "encoded user data too large ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    .line 1052
    goto :goto_0

    .line 1067
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x8

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->paddingBits:I

    sub-int v0, v4, v7

    .line 1068
    .local v0, "dataBits":I
    add-int/lit8 v2, v0, 0xd

    .line 1069
    .local v2, "paramBits":I
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_3

    .line 1071
    :cond_2
    add-int/lit8 v2, v2, 0x8

    .line 1073
    :cond_3
    div-int/lit8 v7, v2, 0x8

    rem-int/lit8 v4, v2, 0x8

    if-lez v4, :cond_7

    move v4, v5

    :goto_1
    add-int v3, v7, v4

    .line 1074
    .local v3, "paramBytes":I
    mul-int/lit8 v4, v3, 0x8

    sub-int v1, v4, v2

    .line 1075
    .local v1, "paddingBits":I
    invoke-virtual {p1, v8, v3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1076
    const/4 v4, 0x5

    iget-object v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v7, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {p1, v4, v7}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1077
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v4, v9, :cond_5

    .line 1079
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1081
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    invoke-virtual {p1, v8, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1082
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v4, v4, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-virtual {p1, v0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    .line 1083
    if-lez v1, :cond_6

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1084
    :cond_6
    return-void

    .end local v1    # "paddingBits":I
    .end local v3    # "paramBytes":I
    :cond_7
    move v4, v6

    .line 1073
    goto :goto_1
.end method

.method private static encodeUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 10
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 949
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-eqz v4, :cond_0

    .line 950
    const-string v4, "BearerData"

    const-string v5, "user data with null payloadStr"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 954
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v4, :cond_1

    .line 955
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeEmsUserDataPayload(Lcom/android/internal/telephony/cdma/sms/UserData;)V

    .line 1041
    :goto_0
    return-void

    .line 960
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiShiftJisMoSms()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 962
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/HtcMessageHelper;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 963
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 964
    iput v9, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 965
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v4, :cond_2

    :goto_1
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    goto :goto_1

    .line 971
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v4, :cond_c

    .line 972
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v4, :cond_5

    .line 973
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    if-nez v4, :cond_4

    .line 974
    const-string v4, "BearerData"

    const-string v5, "user data with octet encoding but null payload"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 976
    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 978
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 979
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 982
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 983
    const-string v4, "BearerData"

    const-string v5, "non-octet user data with null payloadStr"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const-string v4, ""

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 986
    :cond_6
    iget v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_7

    .line 987
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v4, v3, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitGsm(Ljava/lang/String;IZ)Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;

    move-result-object v1

    .line 988
    .local v1, "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    iget-object v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->data:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 989
    iget v3, v1, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;->septets:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 990
    .end local v1    # "gcr":Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v7, :cond_8

    .line 991
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 992
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_0

    .line 993
    :cond_8
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v8, :cond_a

    .line 995
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiEmoji()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 996
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiEncodeUtf16(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;

    move-result-object v2

    .line 997
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->payload:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 998
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->emojiCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 1001
    .end local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 1004
    :cond_a
    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-ne v3, v9, :cond_b

    .line 1005
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeShiftJis(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1006
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v3, v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto/16 :goto_0

    .line 1008
    :cond_b
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported user data encoding ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1014
    :cond_c
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;-><init>()V

    .line 1018
    .restart local v2    # "result":Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode7bitAscii(Ljava/lang/String;Z)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1019
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiEmoji()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1034
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->emojiCount:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    .line 1039
    :goto_3
    iput-boolean v6, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    goto/16 :goto_0

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiEmoji()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1023
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->kddiEncodeUtf16(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;

    move-result-object v2

    .line 1024
    iget-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->payload:[B

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 1029
    :goto_4
    iput v8, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    .line 1027
    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encodeUtf16(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    goto :goto_4

    .line 1037
    .end local v0    # "ex":Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
    :cond_e
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->numFields:I

    goto :goto_3
.end method

.method private static encodeUtf16(Ljava/lang/String;)[B
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 840
    :try_start_0
    const-string v1, "utf-16be"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 841
    :catch_0
    move-exception v0

    .line 842
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-16 encode failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encodeValidityPeriodAbs(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1230
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->year:I

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1232
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1233
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1234
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1236
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->intToCdmaBcdByte(I)B

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1237
    return-void
.end method

.method private static encodeValidityPeriodRel(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "outStream"    # Lcom/android/internal/util/BitwiseOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 1221
    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1222
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 1223
    return-void
.end method

.method private static extractPureNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1160
    if-nez p0, :cond_0

    .line 1161
    const/4 v4, 0x0

    .line 1173
    :goto_0
    return-object v4

    .line 1164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1165
    .local v2, "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1166
    .local v3, "pureNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1167
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1168
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1166
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1173
    .end local v0    # "c":C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getBitsForNumFields(II)I
    .locals 3
    .param p0, "msgEncoding"    # I
    .param p1, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 2598
    packed-switch p0, :pswitch_data_0

    .line 2615
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2604
    :pswitch_1
    mul-int/lit8 v0, p1, 0x8

    .line 2612
    :goto_0
    return v0

    .line 2609
    :pswitch_2
    mul-int/lit8 v0, p1, 0x7

    goto :goto_0

    .line 2612
    :pswitch_3
    mul-int/lit8 v0, p1, 0x10

    goto :goto_0

    .line 2598
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getEncodingTypeFromDcs(B)I
    .locals 5
    .param p0, "dataCodingScheme"    # B

    .prologue
    const/16 v4, 0xe0

    .line 3009
    const/4 v1, 0x0

    .line 3010
    .local v1, "userDataCompressed":Z
    const/16 v0, 0x9

    .line 3013
    .local v0, "encodingType":I
    and-int/lit16 v2, p0, 0x80

    if-nez v2, :cond_2

    .line 3015
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3017
    :goto_0
    if-eqz v1, :cond_1

    .line 3018
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :goto_1
    return v0

    .line 3015
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3021
    :cond_1
    shr-int/lit8 v2, p0, 0x2

    and-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 3023
    :pswitch_0
    const/16 v0, 0x9

    .line 3024
    goto :goto_1

    .line 3027
    :pswitch_1
    const/4 v0, 0x4

    .line 3028
    goto :goto_1

    .line 3032
    :pswitch_2
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3034
    const/4 v0, 0x0

    goto :goto_1

    .line 3038
    :cond_2
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_4

    .line 3039
    and-int/lit8 v2, p0, 0x4

    if-nez v2, :cond_3

    .line 3041
    const/16 v0, 0x9

    goto :goto_1

    .line 3044
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3046
    :cond_4
    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xc0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_5

    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_8

    .line 3055
    :cond_5
    and-int/lit16 v2, p0, 0xf0

    if-ne v2, v4, :cond_6

    .line 3056
    const/4 v0, 0x4

    .line 3063
    :goto_2
    and-int/lit8 v2, p0, 0x3

    if-nez v2, :cond_7

    .line 3064
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for Voicemail Message Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3058
    :cond_6
    const/16 v0, 0x9

    goto :goto_2

    .line 3068
    :cond_7
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MWI for fax, email, or other "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3072
    :cond_8
    const-string v2, "BearerData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v4, p0, 0xff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3021
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getLanguageCodeForValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "languageValue"    # I

    .prologue
    .line 418
    packed-switch p0, :pswitch_data_0

    .line 441
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 420
    :pswitch_0
    const-string v0, "en"

    goto :goto_0

    .line 423
    :pswitch_1
    const-string v0, "fr"

    goto :goto_0

    .line 426
    :pswitch_2
    const-string v0, "es"

    goto :goto_0

    .line 429
    :pswitch_3
    const-string v0, "ja"

    goto :goto_0

    .line 432
    :pswitch_4
    const-string v0, "ko"

    goto :goto_0

    .line 435
    :pswitch_5
    const-string v0, "zh"

    goto :goto_0

    .line 438
    :pswitch_6
    const-string v0, "he"

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static intToCdmaBcdByte(I)B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 1260
    const/4 v0, 0x0

    .line 1262
    .local v0, "ret":B
    rem-int/lit8 v1, p0, 0xa

    int-to-byte v0, v1

    .line 1263
    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    .line 1265
    return v0
.end method

.method private static isCmasAlertCategory(I)Z
    .locals 1
    .param p0, "category"    # I

    .prologue
    .line 2860
    const/16 v0, 0x1000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x10ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static kddiDecodeExtendSubparam(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 2
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 3140
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 3141
    .local v0, "subparamLen":I
    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 3142
    return-void
.end method

.method private static kddiDecodeShiftJis(Lcom/android/internal/telephony/cdma/sms/UserData;II)Ljava/lang/String;
    .locals 7
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "offset"    # I
    .param p2, "numFields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 3112
    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->KddiReplaceUserData(Lcom/android/internal/telephony/cdma/sms/UserData;II)[B

    move-result-object v1

    .line 3114
    .local v1, "pureData":[B
    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "discard? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 3124
    :goto_0
    return-object v3

    .line 3119
    :cond_0
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiChangeCmailPictCharCode([BI)[B

    move-result-object v2

    .line 3122
    .local v2, "replaceData":[B
    const-string v3, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replaceData> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v2

    const-string v6, "SJIS"

    invoke-direct {v3, v2, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3125
    :catch_0
    move-exception v0

    .line 3126
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SJIS decode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static kddiEncodeEmsUserDataGsmDcs(Lcom/android/internal/telephony/cdma/sms/UserData;)V
    .locals 3
    .param p0, "uData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 3081
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiWemtEncoding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3084
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 3085
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    .line 3092
    :goto_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 3093
    const-string v0, "BearerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgEncoding 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3094
    const-string v0, "BearerData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgType 0x>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :cond_0
    return-void

    .line 3086
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 3087
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgType:I

    goto :goto_0

    .line 3089
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported EMS user data encoding ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static kddiEncodeUtf16(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 3474
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiReplaceKddiEmojiWithKddiUcs2(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    move-result-object v1

    .line 3476
    .local v1, "replaceResult":Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;-><init>()V

    .line 3477
    .local v2, "result":Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;
    iget v3, v1, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->emojiCount:I

    .line 3480
    :try_start_0
    iget-object v3, v1, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    const-string v4, "utf-16be"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData$KddiUtf16EncodeResult;->payload:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3482
    return-object v2

    .line 3483
    :catch_0
    move-exception v0

    .line 3484
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-16 encode failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static kddiJudgeCmail(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3439
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3440
    .local v0, "data":[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3450
    :cond_0
    :goto_0
    return v2

    .line 3442
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 3443
    .local v1, "typeId":I
    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CMAIL?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiSmsTypeCmail(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3446
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3447
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    move v2, v3

    .line 3448
    goto :goto_0
.end method

.method private static kddiJudgeOptionsServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 7
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3151
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3152
    .local v0, "data":[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3161
    :cond_0
    :goto_0
    return v2

    .line 3153
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 3154
    .local v1, "typeId":I
    const-string v4, "BearerData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Optional services?> 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOptionService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3156
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3157
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3158
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 3159
    goto :goto_0
.end method

.method private static kddiJudgeOtherServices(Lcom/android/internal/telephony/cdma/sms/UserData;I)Z
    .locals 6
    .param p0, "userData"    # Lcom/android/internal/telephony/cdma/sms/UserData;
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3171
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    .line 3172
    .local v0, "data":[B
    array-length v4, v0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 3185
    :cond_0
    :goto_0
    return v2

    .line 3173
    :cond_1
    aget-byte v4, v0, p1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 3176
    .local v1, "typeId":I
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiOtherService(I)Z

    move-result v4

    if-ne v4, v3, :cond_0

    .line 3177
    const-string v2, "BearerData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other services> 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeId:I

    .line 3179
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiSmsTypeIdSet:Z

    .line 3180
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/sms/UserData;->kddiDiscard:Z

    move v2, v3

    .line 3182
    goto :goto_0
.end method

.method private static serviceCategoryToCmasMessageClass(I)I
    .locals 1
    .param p0, "serviceCategory"    # I

    .prologue
    .line 2567
    packed-switch p0, :pswitch_data_0

    .line 2584
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2569
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2572
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2575
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 2578
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 2581
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 2567
    nop

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static skipUnsupportedType(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 4
    .param p0, "bData"    # Lcom/android/internal/telephony/cdma/sms/BearerData;
    .param p1, "inStream"    # Lcom/android/internal/util/BitwiseInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/telephony/cdma/sms/BearerData$CodingException;
        }
    .end annotation

    .prologue
    .line 1628
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    .line 1629
    .local v0, "paramBits":I
    invoke-virtual {p1, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1630
    const-string v1, "BearerData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported type len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    const/4 v1, 0x1

    return v1
.end method

.method public static stringTo7BitAsciiPacked(Ljava/lang/String;IZ)[B
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 803
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 804
    .local v2, "dataLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v8, p1

    .line 805
    .local v7, "septetCount":I
    const/16 v8, 0xff

    if-le v7, v8, :cond_0

    .line 806
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    const-string v9, "Payload cannot exceed 255 septets"

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 808
    :cond_0
    mul-int/lit8 v8, v7, 0x7

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v0, v8, 0x8

    .line 809
    .local v0, "byteCount":I
    add-int/lit8 v8, v0, 0x1

    new-array v6, v8, [B

    .line 812
    .local v6, "ret":[B
    :try_start_0
    new-instance v5, Lcom/android/internal/util/BitwiseOutputStream;

    add-int/lit8 v8, v0, 0x1

    invoke-direct {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .line 813
    .local v5, "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    mul-int/lit8 v8, p1, 0x7

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v5, v8}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    .line 814
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_3

    .line 815
    sget-object v8, Lcom/android/internal/telephony/cdma/sms/UserData;->charToAscii:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 816
    .local v1, "charCode":I
    if-ne v1, v11, :cond_2

    .line 817
    if-nez p2, :cond_1

    .line 818
    const/4 v8, 0x7

    const/16 v9, 0x20

    invoke-virtual {v5, v8, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .line 814
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 820
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot ASCII encode ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    .end local v1    # "charCode":I
    .end local v4    # "i":I
    .end local v5    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :catch_0
    move-exception v3

    .line 828
    .local v3, "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    new-instance v8, Lcom/android/internal/telephony/EncodeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "7bit ASCII encode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 823
    .end local v3    # "ex":Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    .restart local v1    # "charCode":I
    .restart local v4    # "i":I
    .restart local v5    # "outStream":Lcom/android/internal/util/BitwiseOutputStream;
    :cond_2
    const/4 v8, 0x7

    :try_start_1
    invoke-virtual {v5, v8, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_1

    .line 826
    .end local v1    # "charCode":I
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 831
    const/4 v8, 0x0

    int-to-byte v9, v7

    aput-byte v9, v6, v8

    .line 832
    return-object v6
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguageCodeForValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "BearerData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ messageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", messageId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", privacy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacyIndicatorSet:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->privacy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", alert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alertIndicatorSet:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->alert:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", displayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayModeSet:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", errorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", msgCenterTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_7
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", validityPeriodRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeAbsolute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeAbsolute:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    :goto_a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deferredDeliveryTimeRelative="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelativeSet:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deferredDeliveryTimeRelative:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", deliveryAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", readAckReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", reportReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfMessages="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", callbackNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", depositIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->depositIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hasUserDataHeader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", userData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 451
    :cond_0
    const-string v1, "unset"

    goto/16 :goto_0

    .line 452
    :cond_1
    const-string v1, "unset"

    goto/16 :goto_1

    .line 453
    :cond_2
    const-string v1, "unset"

    goto/16 :goto_2

    .line 454
    :cond_3
    const-string v1, "unset"

    goto/16 :goto_3

    .line 455
    :cond_4
    const-string v1, "unset"

    goto/16 :goto_4

    .line 456
    :cond_5
    const-string v1, "unset"

    goto/16 :goto_5

    .line 457
    :cond_6
    const-string v1, "unset"

    goto/16 :goto_6

    .line 458
    :cond_7
    const-string v1, "unset"

    goto/16 :goto_7

    .line 460
    :cond_8
    const-string v1, "unset"

    goto/16 :goto_8

    .line 462
    :cond_9
    const-string v1, "unset"

    goto/16 :goto_9

    .line 464
    :cond_a
    const-string v1, "unset"

    goto/16 :goto_a

    .line 466
    :cond_b
    const-string v1, "unset"

    goto/16 :goto_b
.end method
