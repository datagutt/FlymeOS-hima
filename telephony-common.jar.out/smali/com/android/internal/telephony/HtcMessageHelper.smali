.class public Lcom/android/internal/telephony/HtcMessageHelper;
.super Ljava/lang/Object;
.source "HtcMessageHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;,
        Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    }
.end annotation


# static fields
.field private static final ACMS_AUTHZCODE_RESPONSE_PREFIX:Ljava/lang/String; = "AT&T FREE MESSAGE - This is an automated message, please ignore."

.field private static final COMMON_CB_DUP_CHECK_PERIOD:J = 0x5265c00L

.field public static final CT_CMD_ACCESS_NUMBER:Ljava/lang/String; = "10659401"

.field public static final CT_CMD_WAP_PUSH_PERMISSION:Ljava/lang/String; = "com.htc.permission.sms.CT_CMD_WAP_PUSH"

.field public static final CT_CMD_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "com.htc.sms.action.CT_CMD_WAP_PUSH_RECEIVED"

.field private static final DEBUG_SIGNATURE:Z = true

.field private static final DELAY_WHEN_SIGNATURE_MISMATCH_MS:J = 0x1388L

.field private static final JAPAN_CB_DUP_CHECK_PERIOD:J = 0x36ee80L

.field private static final KEY_CDMA_SMS:Ljava/lang/String; = "cdma_sms_"

.field private static final KEY_CDMA_SMS_INDEX:Ljava/lang/String; = "cdma_sms_index"

.field private static final MAX_CDMA_SMS_FINGERPRINT_CACHE:I = 0x64

.field public static final RECEIVE_AUTHZCODE_PERMISSION:Ljava/lang/String; = "com.htc.permission.mms.ACCESS_ACMS_DATA"

.field private static final SMS_FINGERPRINT_CACHE_FILE_NAME:Ljava/lang/String; = "dup_sms_cache"

.field private static final SPRINT_EMS_ASCII_SEGMENT_LENGTH:I = 0x9a

.field private static final SPRINT_EMS_UNICODE_SEGMENT_LENGTH:I = 0x40

.field private static final SPRINT_MAX_SEGMENT_COUNT:I = 0x6

.field private static final SPRINT_REASSEMBLE_TAG:Ljava/lang/String; = "getSprintReassembleSmsInformation"

.field private static final TAG:Ljava/lang/String; = "SMS"

.field private static final TMOUS_CMAS_DUP_CHECK_PERIOD:J = 0x2932e00L

.field private static final VERIZON_MAX_CMASID_COUNT:I = 0xffff

.field private static VZWSIGNATURE:[Ljava/lang/String;

.field private static mCmasFingerPrintMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static mCmasIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sCompositeKddiEmoji00:Ljava/lang/String;

.field static sCompositeKddiEmoji01:Ljava/lang/String;

.field static sCompositeKddiEmoji02:Ljava/lang/String;

.field static sCompositeKddiEmoji03:Ljava/lang/String;

.field static sCompositeKddiEmoji04:Ljava/lang/String;

.field static sCompositeKddiEmoji05:Ljava/lang/String;

.field static sCompositeKddiEmoji06:Ljava/lang/String;

.field static sCompositeKddiEmoji07:Ljava/lang/String;

.field static sCompositeKddiEmoji08:Ljava/lang/String;

.field static sCompositeKddiEmoji09:Ljava/lang/String;

.field static sCompositeKddiEmoji10:Ljava/lang/String;

.field static sCompositeKddiEmoji11:Ljava/lang/String;

.field static sCompositeKddiEmoji12:Ljava/lang/String;

.field static sCompositeKddiEmoji13:Ljava/lang/String;

.field static sCompositeKddiEmoji14:Ljava/lang/String;

.field static sCompositeKddiEmoji15:Ljava/lang/String;

.field static sCompositeKddiEmoji16:Ljava/lang/String;

.field static sCompositeKddiEmoji17:Ljava/lang/String;

.field static sCompositeKddiEmoji18:Ljava/lang/String;

.field static sCompositeKddiEmoji19:Ljava/lang/String;

.field static sCompositeKddiEmoji20:Ljava/lang/String;

.field static sCountryCodeListCT:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sDecompositeKddiEmoji00:Ljava/lang/String;

.field static sDecompositeKddiEmoji01:Ljava/lang/String;

.field static sDecompositeKddiEmoji02:Ljava/lang/String;

.field static sDecompositeKddiEmoji03:Ljava/lang/String;

.field static sDecompositeKddiEmoji04:Ljava/lang/String;

.field static sDecompositeKddiEmoji05:Ljava/lang/String;

.field static sDecompositeKddiEmoji06:Ljava/lang/String;

.field static sDecompositeKddiEmoji07:Ljava/lang/String;

.field static sDecompositeKddiEmoji08:Ljava/lang/String;

.field static sDecompositeKddiEmoji09:Ljava/lang/String;

.field static sDecompositeKddiEmoji10:Ljava/lang/String;

.field static sDecompositeKddiEmoji11:Ljava/lang/String;

.field static sDecompositeKddiEmoji12:Ljava/lang/String;

.field static sDecompositeKddiEmoji13:Ljava/lang/String;

.field static sDecompositeKddiEmoji14:Ljava/lang/String;

.field static sDecompositeKddiEmoji15:Ljava/lang/String;

.field static sDecompositeKddiEmoji16:Ljava/lang/String;

.field static sDecompositeKddiEmoji17:Ljava/lang/String;

.field static sDecompositeKddiEmoji18:Ljava/lang/String;

.field static sDecompositeKddiEmoji19:Ljava/lang/String;

.field static sDecompositeKddiEmoji20:Ljava/lang/String;

.field private static sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.verizon.permissions.qos"

    aput-object v1, v0, v3

    const-string v1, "com.verizon.permissions.appdirectedsms"

    aput-object v1, v0, v4

    const-string v1, "com.verizon.permissions.vzwappapn"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.verizon.permissions.sso"

    aput-object v2, v0, v1

    const-string v1, "com.verizon.permissions.securesettings"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "853"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "852"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    const-string v1, "886"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2215
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji00:Ljava/lang/String;

    .line 2216
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb11

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji00:Ljava/lang/String;

    .line 2218
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji01:Ljava/lang/String;

    .line 2219
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb0e

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji01:Ljava/lang/String;

    .line 2221
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji02:Ljava/lang/String;

    .line 2222
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5d5

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji02:Ljava/lang/String;

    .line 2224
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji03:Ljava/lang/String;

    .line 2225
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeafa

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji03:Ljava/lang/String;

    .line 2227
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji04:Ljava/lang/String;

    .line 2228
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb10

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji04:Ljava/lang/String;

    .line 2230
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji05:Ljava/lang/String;

    .line 2231
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb0f

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji05:Ljava/lang/String;

    .line 2233
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_6

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji06:Ljava/lang/String;

    .line 2234
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe4cc

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji06:Ljava/lang/String;

    .line 2236
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_7

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji07:Ljava/lang/String;

    .line 2237
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb12

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji07:Ljava/lang/String;

    .line 2239
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji08:Ljava/lang/String;

    .line 2240
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5d6

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji08:Ljava/lang/String;

    .line 2242
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji09:Ljava/lang/String;

    .line 2243
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe573

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji09:Ljava/lang/String;

    .line 2245
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_a

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji10:Ljava/lang/String;

    .line 2246
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xeb84

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji10:Ljava/lang/String;

    .line 2248
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_b

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji11:Ljava/lang/String;

    .line 2249
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe522

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji11:Ljava/lang/String;

    .line 2251
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_c

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji12:Ljava/lang/String;

    .line 2252
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe523

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji12:Ljava/lang/String;

    .line 2254
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_d

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji13:Ljava/lang/String;

    .line 2255
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe524

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji13:Ljava/lang/String;

    .line 2257
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_e

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji14:Ljava/lang/String;

    .line 2258
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe525

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji14:Ljava/lang/String;

    .line 2260
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_f

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji15:Ljava/lang/String;

    .line 2261
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe526

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji15:Ljava/lang/String;

    .line 2263
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_10

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji16:Ljava/lang/String;

    .line 2264
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe527

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji16:Ljava/lang/String;

    .line 2266
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_11

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji17:Ljava/lang/String;

    .line 2267
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe528

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji17:Ljava/lang/String;

    .line 2269
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_12

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji18:Ljava/lang/String;

    .line 2270
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe529

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji18:Ljava/lang/String;

    .line 2272
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_13

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji19:Ljava/lang/String;

    .line 2273
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe52a

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji19:Ljava/lang/String;

    .line 2275
    new-instance v0, Ljava/lang/String;

    new-array v1, v5, [C

    fill-array-data v1, :array_14

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji20:Ljava/lang/String;

    .line 2276
    new-instance v0, Ljava/lang/String;

    new-array v1, v4, [C

    const v2, 0xe5ac

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji20:Ljava/lang/String;

    return-void

    .line 2215
    nop

    :array_0
    .array-data 2
        -0xdds
        -0xd2s
    .end array-data

    .line 2218
    :array_1
    .array-data 2
        -0xdcs
        -0xdbs
    .end array-data

    .line 2221
    :array_2
    .array-data 2
        -0xdbs
        -0xcds
    .end array-data

    .line 2224
    :array_3
    .array-data 2
        -0xdas
        -0xces
    .end array-data

    .line 2227
    :array_4
    .array-data 2
        -0xd9s
        -0xdes
    .end array-data

    .line 2230
    :array_5
    .array-data 2
        -0xd7s
        -0xccs
    .end array-data

    .line 2233
    :array_6
    .array-data 2
        -0xd6s
        -0xd0s
    .end array-data

    .line 2236
    :array_7
    .array-data 2
        -0xd5s
        -0xces
    .end array-data

    .line 2239
    :array_8
    .array-data 2
        -0xces
        -0xcbs
    .end array-data

    .line 2242
    :array_9
    .array-data 2
        -0xcbs
        -0xcds
    .end array-data

    .line 2245
    :array_a
    .array-data 2
        0x23s
        0x20e3s
    .end array-data

    .line 2248
    :array_b
    .array-data 2
        0x31s
        0x20e3s
    .end array-data

    .line 2251
    :array_c
    .array-data 2
        0x32s
        0x20e3s
    .end array-data

    .line 2254
    :array_d
    .array-data 2
        0x33s
        0x20e3s
    .end array-data

    .line 2257
    :array_e
    .array-data 2
        0x34s
        0x20e3s
    .end array-data

    .line 2260
    :array_f
    .array-data 2
        0x35s
        0x20e3s
    .end array-data

    .line 2263
    :array_10
    .array-data 2
        0x36s
        0x20e3s
    .end array-data

    .line 2266
    :array_11
    .array-data 2
        0x37s
        0x20e3s
    .end array-data

    .line 2269
    :array_12
    .array-data 2
        0x38s
        0x20e3s
    .end array-data

    .line 2272
    :array_13
    .array-data 2
        0x39s
        0x20e3s
    .end array-data

    .line 2275
    :array_14
    .array-data 2
        0x30s
        0x20e3s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2147
    return-void
.end method

.method public static addMsgRef2PendingList(Landroid/content/Context;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    .line 1014
    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1015
    .local v9, "msgRef":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1016
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 1017
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1019
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 1021
    .local v3, "cn":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1022
    .local v10, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1023
    .local v2, "cls":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1024
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1025
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 1028
    :cond_0
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x5

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .line 1029
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "tp_mr"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1031
    const-string v13, "action"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_1
    if-eqz v5, :cond_2

    .line 1034
    const-string v13, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1037
    const-string v13, "pkg_name"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1040
    const-string v13, "class_name"

    invoke-virtual {v12, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_4
    const/4 v11, 0x0

    .line 1045
    .local v11, "retUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1047
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMsgRefFromPendingList(Landroid/content/Context;I)I

    .line 1049
    sget-object v13, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v13, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1054
    .end local v4    # "cr":Landroid/content/ContentResolver;
    :goto_0
    return-object v11

    .line 1050
    :catch_0
    move-exception v7

    .line 1051
    .local v7, "e":Ljava/lang/Exception;
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "insert pending list failure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static addVzwCmasMessageIDorSerialNumberToTreeMap(IJ)V
    .locals 3
    .param p0, "newId"    # I
    .param p1, "date"    # J

    .prologue
    .line 276
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keep CMAS id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    return-void
.end method

.method public static appendSprintSegmentIndex(Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 16
    .param p0, "oriString"    # Ljava/lang/CharSequence;
    .param p1, "isAscii"    # Z

    .prologue
    .line 1457
    if-eqz p1, :cond_0

    const/16 v8, 0x9a

    .line 1458
    .local v8, "seglen":I
    :goto_0
    const/4 v2, 0x6

    .line 1459
    .local v2, "maxseg":I
    const/4 v10, 0x0

    .line 1460
    .local v10, "strlen":I
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1463
    .local v4, "newString":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 1464
    const/4 v13, 0x0

    .line 1515
    :goto_1
    return-object v13

    .line 1457
    .end local v2    # "maxseg":I
    .end local v4    # "newString":Ljava/lang/String;
    .end local v8    # "seglen":I
    .end local v10    # "strlen":I
    :cond_0
    const/16 v8, 0x40

    goto :goto_0

    .line 1470
    .restart local v2    # "maxseg":I
    .restart local v4    # "newString":Ljava/lang/String;
    .restart local v8    # "seglen":I
    .restart local v10    # "strlen":I
    :cond_1
    const/4 v0, 0x1

    .local v0, "currentseg":I
    :goto_2
    if-gt v0, v2, :cond_2

    .line 1472
    add-int/lit8 v13, v0, -0x1

    mul-int v12, v13, v8

    .line 1473
    .local v12, "thisSegmentStart":I
    mul-int v5, v0, v8

    .line 1477
    .local v5, "nextSegmentStart":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    .line 1478
    if-lt v5, v10, :cond_3

    .line 1502
    .end local v5    # "nextSegmentStart":I
    .end local v12    # "thisSegmentStart":I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    div-int v14, v13, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    rem-int/2addr v13, v8

    if-lez v13, :cond_7

    const/4 v13, 0x1

    :goto_3
    add-int v7, v14, v13

    .line 1506
    .local v7, "segcount":I
    new-array v9, v7, [Ljava/lang/String;

    .line 1507
    .local v9, "strarray":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    .local v3, "newAppendedString":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_9

    .line 1509
    add-int/lit8 v13, v7, -0x1

    if-ne v1, v13, :cond_8

    .line 1510
    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1481
    .end local v1    # "i":I
    .end local v3    # "newAppendedString":Ljava/lang/StringBuilder;
    .end local v7    # "segcount":I
    .end local v9    # "strarray":[Ljava/lang/String;
    .restart local v5    # "nextSegmentStart":I
    .restart local v12    # "thisSegmentStart":I
    :cond_3
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "char at checkPos "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    move v11, v5

    .line 1488
    .local v11, "thisSegmentEnd":I
    :cond_4
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Lcom/android/internal/telephony/HtcMessageHelper;->isMiddleWord(C)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1492
    :goto_6
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "emptyPos/checkPos: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-lt v11, v12, :cond_6

    if-ge v11, v5, :cond_6

    .line 1497
    add-int/lit8 v1, v11, 0x1

    .restart local v1    # "i":I
    :goto_7
    if-ge v1, v5, :cond_6

    .line 1498
    add-int/lit8 v13, v11, 0x1

    const/16 v14, 0x20

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1490
    .end local v1    # "i":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 1491
    if-ge v11, v12, :cond_4

    goto :goto_6

    .line 1499
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1502
    .end local v5    # "nextSegmentStart":I
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    .end local v11    # "thisSegmentEnd":I
    .end local v12    # "thisSegmentStart":I
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1512
    .restart local v1    # "i":I
    .restart local v3    # "newAppendedString":Ljava/lang/StringBuilder;
    .restart local v7    # "segcount":I
    .restart local v9    # "strarray":[Ljava/lang/String;
    :cond_8
    const/16 v13, 0x28

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v1, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    mul-int v14, v1, v8

    add-int/lit8 v15, v1, 0x1

    mul-int/2addr v15, v8

    invoke-virtual {v4, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1515
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1
.end method

.method private static final calculateOperatorString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2521
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 2547
    :cond_0
    :goto_0
    return-object v1

    .line 2522
    :cond_1
    const/4 v1, 0x0

    .line 2524
    .local v1, "name":Ljava/lang/String;
    instance-of v4, p0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    if-eqz v4, :cond_5

    move-object v0, p0

    .line 2525
    check-cast v0, Lcom/android/internal/telephony/gsm/OperatorInfo;

    .line 2527
    .local v0, "info":Lcom/android/internal/telephony/gsm/OperatorInfo;
    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->inService:Z

    if-eqz v4, :cond_0

    .line 2528
    iget-boolean v2, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showPlmn:Z

    .line 2529
    .local v2, "showPlmn":Z
    iget-boolean v3, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->showSpn:Z

    .line 2530
    .local v3, "showSpn":Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2531
    const-string v4, "%s(%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2532
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 2533
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2534
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 2535
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->spn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2536
    :cond_4
    iget-object v4, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2537
    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/internal/telephony/gsm/OperatorInfo;->plmn:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2540
    .end local v0    # "info":Lcom/android/internal/telephony/gsm/OperatorInfo;
    .end local v2    # "showPlmn":Z
    .end local v3    # "showSpn":Z
    :cond_5
    instance-of v4, p0, Lcom/android/internal/telephony/OperatorInfo;

    if-eqz v4, :cond_6

    move-object v0, p0

    .line 2541
    check-cast v0, Lcom/android/internal/telephony/OperatorInfo;

    .line 2543
    .local v0, "info":Lcom/android/internal/telephony/OperatorInfo;
    invoke-virtual {v0}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    .line 2544
    goto :goto_0

    .line 2545
    .end local v0    # "info":Lcom/android/internal/telephony/OperatorInfo;
    :cond_6
    const-string v4, "SMS"

    const-string v5, "no opt info!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static callingWithSignatureNoneBlocking(Landroid/content/Context;IILjava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 626
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 628
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 640
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1, p1, p2, v4, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z

    move-result v3

    :goto_0
    return v3

    .line 633
    :catch_0
    move-exception v0

    .line 635
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "SMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No packageInfo found for UID/PID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static check3GppCmasDuplication(Landroid/content/Context;IILandroid/telephony/SmsCbLocation;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I
    .param p2, "sn"    # I
    .param p3, "location"    # Landroid/telephony/SmsCbLocation;

    .prologue
    .line 493
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :try_start_1
    const-string v4, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telephony/SmsCbLocation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "lastFingerPrint":Ljava/lang/String;
    const-string v4, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last finger print :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v4, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 499
    sget-object v4, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 500
    .local v0, "duplicatedTime":J
    invoke-virtual {p3}, Landroid/telephony/SmsCbLocation;->getPlmn()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/HtcMessageHelper;->getDuplicationDetectionTime(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 501
    const-string v4, "SMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated with the one which received time is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v4, 0x1

    monitor-exit v5

    .line 514
    .end local v0    # "duplicatedTime":J
    .end local v3    # "lastFingerPrint":Ljava/lang/String;
    :goto_0
    return v4

    .line 505
    .restart local v0    # "duplicatedTime":J
    .restart local v3    # "lastFingerPrint":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .end local v0    # "duplicatedTime":J
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    monitor-exit v5

    .line 514
    .end local v3    # "lastFingerPrint":Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 510
    :catch_0
    move-exception v2

    .line 511
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "SMS"

    const-string v5, "exception when checking CMAS duplication!"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static checkAcmsReqId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 2747
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportAcms()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2813
    :cond_0
    :goto_0
    return v0

    .line 2749
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AT&T FREE MESSAGE - This is an automated message, please ignore."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2751
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2753
    :cond_3
    const-string v0, "SMS"

    const-string v2, "Received ACMS SMS!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2756
    const-string v0, "AT&T FREE MESSAGE - This is an automated message, please ignore."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2758
    .local v13, "tmp":Ljava/lang/String;
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    .line 2759
    const-string v0, "SMS"

    const-string v2, "Invalid ACMS SMS! Without -"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    const/4 v0, 0x0

    goto :goto_0

    .line 2763
    :cond_4
    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 2764
    .local v11, "param":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v12, v11, v0

    .line 2765
    .local v12, "requestId":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v7, v11, v0

    .line 2768
    .local v7, "authZCode":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2769
    :cond_5
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ACMS SMS!["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const/4 v0, 0x0

    goto :goto_0

    .line 2773
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 2774
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://acms/request-id/active/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2777
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 2779
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2783
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2784
    :cond_7
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This requestId not exist in history!requestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2785
    const/4 v0, 0x0

    .line 2810
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2788
    :cond_8
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2791
    .local v6, "activeFlag":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2792
    const-string v0, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Provider return requestId=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], activeFlag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2793
    const/4 v0, 0x0

    .line 2810
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2801
    :cond_9
    :try_start_2
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.htc.intent.action.REQUEST_AUTHZCODE_DONE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "requestId"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2803
    const-string v0, "authZCode"

    invoke-virtual {v10, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2804
    const-string v0, "com.htc.permission.mms.ACCESS_ACMS_DATA"

    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2806
    const/4 v0, 0x1

    .line 2810
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2807
    .end local v6    # "activeFlag":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v9

    .line 2808
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "SMS"

    const-string v2, "exception"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2810
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2813
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2810
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0
.end method

.method private static checkCallingSignature(Landroid/content/pm/PackageManager;II[Landroid/content/pm/Signature;Z)Z
    .locals 12
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "matching"    # [Landroid/content/pm/Signature;
    .param p4, "delayWhenNotMatch"    # Z

    .prologue
    .line 646
    if-eqz p3, :cond_0

    array-length v9, p3

    if-nez v9, :cond_1

    .line 647
    :cond_0
    const/4 v9, 0x1

    .line 667
    :goto_0
    return v9

    .line 649
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 650
    .local v2, "callingSignatures":[Landroid/content/pm/Signature;
    if-eqz v2, :cond_4

    .line 651
    move-object v0, v2

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v8, v0, v4

    .line 652
    .local v8, "sig":Landroid/content/pm/Signature;
    move-object v1, p3

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v7, v1, v3

    .line 653
    .local v7, "matchSig":Landroid/content/pm/Signature;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 657
    const/4 v9, 0x1

    goto :goto_0

    .line 652
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 651
    .end local v7    # "matchSig":Landroid/content/pm/Signature;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_1

    .line 662
    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v8    # "sig":Landroid/content/pm/Signature;
    :cond_4
    if-eqz p4, :cond_5

    .line 664
    const-wide/16 v10, 0x1388

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    :cond_5
    :goto_3
    const/4 v9, 0x0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v9

    goto :goto_3
.end method

.method private static checkCdmaSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    .line 806
    const/4 v15, 0x0

    .line 812
    .local v15, "result":Z
    const/high16 v17, 0x40000

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 813
    const/16 v17, 0x0

    .line 861
    :goto_0
    return v17

    .line 823
    :cond_0
    :try_start_0
    const-string v17, "dup_sms_cache"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 824
    .local v16, "sp":Landroid/content/SharedPreferences;
    const-string v17, "cdma_sms_index"

    const/16 v20, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 826
    .local v8, "index":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v18

    .line 827
    .local v18, "timestamp":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v17

    move/from16 v0, v17

    int-to-long v12, v0

    .line 828
    .local v12, "messageId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    .line 829
    .local v10, "messageBody":Ljava/lang/String;
    if-nez v10, :cond_1

    const-string v10, ""

    .line 830
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    .line 831
    .local v14, "originatingAddress":Ljava/lang/String;
    if-nez v14, :cond_2

    const-string v14, ""

    .line 832
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getCallBackNumber()Ljava/lang/String;

    move-result-object v4

    .line 833
    .local v4, "callBackNumber":Ljava/lang/String;
    if-nez v4, :cond_3

    const-string v4, ""

    .line 836
    :cond_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 838
    .local v9, "lastFingerprint":Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_4

    .line 839
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v17, 0x64

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 840
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cdma_sms_"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v20, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 841
    .local v11, "oldFingerPrint":Ljava/lang/String;
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 842
    const-string v17, "SMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Detect duplicated CDMA SMS, which timestamp = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", message id = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v15, 0x1

    .line 849
    .end local v7    # "i":I
    .end local v11    # "oldFingerPrint":Ljava/lang/String;
    :cond_4
    if-nez v15, :cond_5

    .line 850
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 851
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    add-int/lit8 v8, v8, 0x1

    .line 852
    rem-int/lit8 v8, v8, 0x64

    .line 853
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "cdma_sms_"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 854
    const-string v17, "cdma_sms_index"

    move-object/from16 v0, v17

    invoke-interface {v6, v0, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 855
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "callBackNumber":Ljava/lang/String;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "index":I
    .end local v9    # "lastFingerprint":Ljava/lang/String;
    .end local v10    # "messageBody":Ljava/lang/String;
    .end local v12    # "messageId":J
    .end local v14    # "originatingAddress":Ljava/lang/String;
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "timestamp":J
    :cond_5
    :goto_2
    move/from16 v17, v15

    .line 861
    goto/16 :goto_0

    .line 839
    .restart local v4    # "callBackNumber":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "index":I
    .restart local v9    # "lastFingerprint":Ljava/lang/String;
    .restart local v10    # "messageBody":Ljava/lang/String;
    .restart local v11    # "oldFingerPrint":Ljava/lang/String;
    .restart local v12    # "messageId":J
    .restart local v14    # "originatingAddress":Ljava/lang/String;
    .restart local v16    # "sp":Landroid/content/SharedPreferences;
    .restart local v18    # "timestamp":J
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 857
    .end local v4    # "callBackNumber":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "index":I
    .end local v9    # "lastFingerprint":Ljava/lang/String;
    .end local v10    # "messageBody":Ljava/lang/String;
    .end local v11    # "oldFingerPrint":Ljava/lang/String;
    .end local v12    # "messageId":J
    .end local v14    # "originatingAddress":Ljava/lang/String;
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .end local v18    # "timestamp":J
    :catch_0
    move-exception v5

    .line 858
    .local v5, "e":Ljava/lang/Exception;
    const-string v17, "SMS"

    const-string v20, "exception when checking CDMA SMS duplication"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static checkCmasDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;Landroid/telephony/SmsCbMessage;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "message"    # Landroid/telephony/SmsCbMessage;

    .prologue
    const/4 v7, 0x1

    .line 415
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwCmasDuplicateCheck()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 420
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v1

    .line 421
    .local v1, "id":I
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    .local v2, "date":J
    const-string v7, "SMS"

    const-string v8, "call check checkVzwCmasDuplicationAndInsert"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->checkVzwCmasDuplicationAndInsert(IJ)Z

    move-result v7

    .line 469
    .end local v1    # "id":I
    .end local v2    # "date":J
    :goto_1
    return v7

    .line 420
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v1

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportTmoUsCmasDuplicateCheck()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 428
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 430
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v6

    .line 431
    .local v6, "sn":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 432
    .restart local v2    # "date":J
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "cbBody":Ljava/lang/String;
    const-string v7, "SMS"

    const-string v8, "call check checkTmousGsmCmasDuplicationAndInsert"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-static {p0, v6, v2, v3, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->checkTmousGsmCmasDuplicationAndInsert(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v7

    goto :goto_1

    .line 436
    .end local v0    # "cbBody":Ljava/lang/String;
    .end local v2    # "date":J
    .end local v6    # "sn":I
    :cond_2
    const-string v8, "SMS"

    const-string v9, "Not GSM CB Message! discard this message!"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 446
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getMessageFormat()I

    move-result v8

    if-ne v8, v7, :cond_4

    .line 448
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getServiceCategory()I

    move-result v5

    .line 449
    .local v5, "messageId":I
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getSerialNumber()I

    move-result v6

    .line 450
    .restart local v6    # "sn":I
    invoke-virtual {p2}, Landroid/telephony/SmsCbMessage;->getLocation()Landroid/telephony/SmsCbLocation;

    move-result-object v4

    .line 451
    .local v4, "location":Landroid/telephony/SmsCbLocation;
    const-string v7, "SMS"

    const-string v8, "check GSM CMAS Duplication!"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {p0, v5, v6, v4}, Lcom/android/internal/telephony/HtcMessageHelper;->check3GppCmasDuplication(Landroid/content/Context;IILandroid/telephony/SmsCbLocation;)Z

    move-result v7

    goto :goto_1

    .line 458
    .end local v4    # "location":Landroid/telephony/SmsCbLocation;
    .end local v5    # "messageId":I
    .end local v6    # "sn":I
    :cond_4
    if-nez p1, :cond_5

    .line 459
    const/4 v7, 0x0

    goto :goto_1

    .line 461
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 462
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->deleteMarkedOldCmasMessage(Landroid/content/Context;)V

    .line 469
    :cond_6
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v7

    goto :goto_1
.end method

.method private static checkCmasDuplicationByMessageID(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 337
    const/4 v12, 0x0

    .line 343
    .local v12, "result":Z
    const/4 v10, 0x1

    .line 344
    .local v10, "isCdma":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v11

    .line 345
    .local v11, "msg_id":I
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_ID: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 354
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "protocol = ?  AND is_cdma_format = ? "

    .line 359
    .local v3, "selection":Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( exp > ? ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    :cond_0
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v1

    .line 372
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportSprintDuplicatedCmasDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 374
    .local v8, "currentTimeMillis":J
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    if-eqz v10, :cond_5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v1

    const/4 v0, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 382
    .end local v8    # "currentTimeMillis":J
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 384
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 386
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detecte duplicated CMAS: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    const/4 v12, 0x1

    .line 392
    :cond_2
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 399
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    return v12

    .line 365
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    .restart local v8    # "currentTimeMillis":J
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 392
    .end local v8    # "currentTimeMillis":J
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 395
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 396
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking CMAS duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static checkGsmSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 763
    const/4 v8, 0x0

    .line 766
    .local v8, "result":Z
    const/4 v3, 0x0

    .line 767
    .local v3, "selection":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_2

    .line 768
    const-string v3, "address = ? AND date_sent = ? AND body = ?"

    .line 774
    :goto_0
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 779
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 781
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 782
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v8, 0x1

    .line 786
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 792
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 771
    :cond_2
    const-string v3, "address = ? AND date = ? AND body = ?"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    :catch_0
    move-exception v7

    .line 789
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static checkSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    .line 733
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateSmsMechanism()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    .line 747
    :goto_0
    return v0

    .line 737
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    if-eqz v0, :cond_1

    .line 738
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCdmaSmsDuplicationDetect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->checkCdmaSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;I)Z

    move-result v0

    goto :goto_0

    .line 742
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportGsmSmsDuplicationDetect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->checkGsmSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    goto :goto_0

    .line 747
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkTmousGsmCmasDuplicationAndInsert(Landroid/content/Context;IJLjava/lang/String;)Z
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sn"    # I
    .param p2, "date"    # J
    .param p4, "cbBody"    # Ljava/lang/String;

    .prologue
    .line 564
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new incoming CMAS message for check is: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    if-nez p4, :cond_2

    const/4 v2, 0x1

    .line 616
    :cond_1
    :goto_0
    return v2

    .line 569
    :cond_2
    const/4 v8, 0x0

    .line 571
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "body = ?  and date > ?"

    .line 573
    .local v5, "selection":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 574
    .local v10, "currentTimeMillis":J
    const-wide/32 v2, 0x2932e00

    sub-long/2addr v10, v2

    .line 575
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v6, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 577
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v7, "_id ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 578
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detecte duplicated CMAS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    const/4 v2, 0x1

    .line 585
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 589
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "currentTimeMillis":J
    :cond_4
    :goto_1
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 590
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 591
    .local v16, "oldDate":J
    sub-long v18, p2, v16

    .line 593
    .local v18, "period":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v18, v2

    if-gtz v2, :cond_6

    .line 594
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got duplicate message ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") sn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 582
    .end local v16    # "oldDate":J
    .end local v18    # "period":J
    :catch_0
    move-exception v9

    .line 583
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when checking CMAS duplication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 597
    .restart local v16    # "oldDate":J
    .restart local v18    # "period":J
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 602
    .end local v16    # "oldDate":J
    .end local v18    # "period":J
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v13, "expiredSnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 604
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v20, p2, v2

    .line 605
    .local v20, "peroid":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v20, v2

    if-lez v2, :cond_8

    .line 606
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 609
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Long;>;"
    .end local v20    # "peroid":J
    :cond_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 610
    .local v15, "key":Ljava/lang/Integer;
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v2, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 614
    .end local v15    # "key":Ljava/lang/Integer;
    :cond_a
    sget-object v2, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static checkVzwCmasDuplicationAndInsert(IJ)Z
    .locals 5
    .param p0, "newId"    # I
    .param p1, "date"    # J

    .prologue
    .line 312
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VZW new CMAS id for check is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 315
    .local v0, "mapSize":I
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got Vzw duplicate message id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const/4 v1, 0x1

    .line 325
    :goto_0
    return v1

    .line 320
    :cond_0
    const v1, 0xffff

    if-lt v0, v1, :cond_1

    .line 321
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->removeOldestVzwCmasKey()V

    .line 323
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->addVzwCmasMessageIDorSerialNumberToTreeMap(IJ)V

    .line 325
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static deleteMarkedOldCmasMessage(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    .local v0, "currentTimeMillis":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( c_type =  0 ) AND (exp < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "exp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0 ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "selectionForDeleteOldCmas":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public static deleteMsgRefFromPendingList(Landroid/content/Context;I)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgRef"    # I

    .prologue
    .line 994
    const/4 v0, 0x0

    .line 996
    .local v0, "count":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1003
    :goto_0
    return v0

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete pending list failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2983
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 3001
    :cond_1
    :goto_0
    return v3

    .line 2986
    :cond_2
    const/4 v2, -0x1

    .line 2987
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2988
    .local v1, "length":I
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 2989
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 2992
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 2993
    .local v0, "expectedDelimiterPos":I
    if-eq v0, v1, :cond_1

    .line 2997
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .end local v0    # "expectedDelimiterPos":I
    :cond_5
    move v3, v4

    .line 3001
    goto :goto_0
.end method

.method public static encodeShiftJis(Ljava/lang/String;)[B
    .locals 8
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1290
    if-nez p0, :cond_0

    .line 1307
    :goto_0
    return-object v5

    .line 1294
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1295
    .local v0, "charCount":I
    const-string v6, "SJIS"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 1296
    .local v1, "encoder":Ljava/nio/charset/CharsetEncoder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1299
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1298
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1304
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SJIS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 1305
    :catch_0
    move-exception v2

    .line 1306
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v6, "encodeShiftJis"

    const-string v7, "SJIS encode failed: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static forcePlusCodeTo011()Z
    .locals 1

    .prologue
    .line 2483
    const/4 v0, 0x0

    return v0
.end method

.method public static getCodePointFromSurrogatePair([C)I
    .locals 7
    .param p0, "pair"    # [C

    .prologue
    const v6, 0xdc00

    const v5, 0xd800

    const/4 v3, 0x0

    .line 2038
    const/4 v2, 0x0

    .line 2040
    .local v2, "result":I
    aget-char v0, p0, v3

    .line 2041
    .local v0, "hi_char":C
    const/4 v4, 0x1

    aget-char v1, p0, v4

    .line 2044
    .local v1, "lo_char":C
    if-lt v0, v5, :cond_0

    const v4, 0xdbff

    if-le v0, v4, :cond_1

    .line 2058
    :cond_0
    :goto_0
    return v3

    .line 2048
    :cond_1
    if-lt v1, v6, :cond_0

    const v4, 0xdfff

    if-gt v1, v4, :cond_0

    .line 2052
    sub-int v3, v0, v5

    mul-int/lit16 v3, v3, 0x400

    sub-int v4, v1, v6

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v2, v3, v4

    move v3, v2

    .line 2058
    goto :goto_0
.end method

.method private static getDuplicationDetectionTime(Ljava/lang/String;)J
    .locals 3
    .param p0, "plmn"    # Ljava/lang/String;

    .prologue
    const-wide/32 v0, 0x5265c00

    .line 525
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-wide v0

    .line 527
    :cond_1
    const-string v2, "440"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "441"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    :cond_2
    const-wide/32 v0, 0x36ee80

    goto :goto_0
.end method

.method public static getFirstCdmaSubId()J
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 2943
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v0

    .line 2944
    .local v0, "slot1SubId":[J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2945
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-wide v4, v0, v6

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2946
    aget-wide v4, v0, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 2947
    aget-wide v4, v0, v6

    .line 2960
    :goto_0
    return-wide v4

    .line 2951
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2952
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[J

    move-result-object v1

    .line 2953
    .local v1, "slot2SubId":[J
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    aget-wide v4, v1, v6

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2954
    aget-wide v4, v1, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 2955
    aget-wide v4, v1, v6

    goto :goto_0

    .line 2960
    .end local v1    # "slot2SubId":[J
    :cond_1
    const-wide/16 v4, -0x3e8

    goto :goto_0
.end method

.method private static getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageRef"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 921
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "action"

    aput-object v0, v2, v1

    const-string v0, "uri"

    aput-object v0, v2, v3

    const-string v0, "pkg_name"

    aput-object v0, v2, v5

    const-string v0, "class_name"

    aput-object v0, v2, v13

    const/4 v0, 0x4

    const-string v1, "tp_mr"

    aput-object v1, v2, v0

    .line 928
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/HtcMessages$HtcSms$PendingMsg;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tp_mr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 933
    .local v7, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 934
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_2

    .line 937
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 938
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 939
    .local v6, "action":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 940
    .local v12, "uriStr":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, "pkg":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 942
    .local v8, "cls":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v10, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    .end local v9    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move-object v9, v10

    .line 951
    .end local v6    # "action":Ljava/lang/String;
    .end local v8    # "cls":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "uriStr":Ljava/lang/String;
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 954
    :cond_2
    return-object v9

    .line 951
    :catchall_0
    move-exception v0

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v6    # "action":Ljava/lang/String;
    .restart local v8    # "cls":Ljava/lang/String;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "uriStr":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static getKddiEmailSignalAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1431
    const-string v0, "com.kddi.android.intent.action.ESIGNAL_RECEIVED"

    return-object v0
.end method

.method public static getKddiEmailSignalPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1435
    const-string v0, "com.kddi.android.permission.RECEIVE_ESIGNAL"

    return-object v0
.end method

.method public static getKddiVoiceMailNotificationType1String([BZ)Ljava/lang/String;
    .locals 14
    .param p0, "userdata"    # [B
    .param p1, "skipEsnCheck"    # Z

    .prologue
    .line 1356
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    .line 1366
    .local v9, "resultString":Ljava/lang/String;
    const/16 v11, 0x10

    new-array v5, v11, [B

    fill-array-data v5, :array_0

    .line 1376
    .local v5, "repKddislamdownData":[B
    const/4 v11, 0x1

    new-array v6, v11, [B

    const/4 v11, 0x0

    const/16 v12, 0x2f

    aput-byte v12, v6, v11

    .line 1377
    .local v6, "repKddislamdownData2":[B
    const/4 v11, 0x2

    new-array v7, v11, [B

    fill-array-data v7, :array_1

    .line 1380
    .local v7, "repKddislamdownData3":[B
    array-length v11, v5

    add-int/lit8 v11, v11, 0x7

    new-array v8, v11, [B

    .line 1388
    .local v8, "resultData":[B
    const/4 v11, 0x1

    if-ne p1, v11, :cond_1

    .line 1389
    const/4 v4, 0x0

    .line 1394
    .local v4, "offset":I
    :goto_0
    const/4 v1, 0x0

    .line 1395
    .local v1, "destPos":I
    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v5, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1396
    array-length v11, v5

    add-int/2addr v1, v11

    .line 1397
    array-length v11, p0

    sub-int/2addr v11, v4

    const/4 v12, 0x4

    if-lt v11, v12, :cond_0

    .line 1399
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v11, "00"

    invoke-direct {v2, v11}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1405
    .local v2, "df":Ljava/text/DecimalFormat;
    add-int/lit8 v11, v4, 0x2

    aget-byte v11, p0, v11

    int-to-long v12, v11

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 1406
    .local v0, "countValue":Ljava/lang/String;
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "total: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1409
    add-int/lit8 v1, v1, 0x2

    .line 1410
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v6, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1411
    add-int/lit8 v1, v1, 0x1

    .line 1412
    add-int/lit8 v11, v4, 0x3

    aget-byte v11, p0, v11

    int-to-long v12, v11

    invoke-virtual {v2, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 1413
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unread: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v11, v12, v8, v1, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1415
    add-int/lit8 v1, v1, 0x2

    .line 1416
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v7, v11, v8, v1, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1420
    .end local v0    # "countValue":Ljava/lang/String;
    .end local v2    # "df":Ljava/text/DecimalFormat;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    array-length v12, v8

    const-string v13, "SJIS"

    invoke-direct {v10, v8, v11, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    .end local v9    # "resultString":Ljava/lang/String;
    .local v10, "resultString":Ljava/lang/String;
    :try_start_1
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "format data: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 1427
    .end local v10    # "resultString":Ljava/lang/String;
    .restart local v9    # "resultString":Ljava/lang/String;
    :goto_1
    return-object v9

    .line 1391
    .end local v1    # "destPos":I
    .end local v4    # "offset":I
    :cond_1
    const/4 v4, 0x2

    .restart local v4    # "offset":I
    goto/16 :goto_0

    .line 1423
    .restart local v1    # "destPos":I
    :catch_0
    move-exception v3

    .line 1424
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SJIS decode failed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1423
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "resultString":Ljava/lang/String;
    .restart local v10    # "resultString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v9, v10

    .end local v10    # "resultString":Ljava/lang/String;
    .restart local v9    # "resultString":Ljava/lang/String;
    goto :goto_2

    .line 1366
    :array_0
    .array-data 1
        -0x6dt
        0x60t
        -0x74t
        -0x42t
        -0x7et
        -0x58t
        -0x6et
        0x6dt
        -0x7et
        -0x19t
        -0x7et
        -0x47t
        0xdt
        0xat
        -0x6at
        -0x5et
    .end array-data

    .line 1377
    :array_1
    .array-data 1
        -0x74t
        -0x71t
    .end array-data
.end method

.method public static getLfCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 2442
    if-nez p0, :cond_1

    .line 2443
    const/4 v2, 0x0

    .line 2452
    :cond_0
    return v2

    .line 2445
    :cond_1
    const/4 v2, 0x0

    .line 2446
    .local v2, "lfCount":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2447
    .local v0, "characterCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2448
    const/16 v3, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_2

    .line 2449
    add-int/lit8 v2, v2, 0x1

    .line 2447
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;
    .locals 6
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 671
    const/4 v2, 0x0

    .line 673
    .local v2, "psName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 681
    const/4 v3, 0x0

    aget-object v2, v1, v3

    .line 693
    .end local v1    # "packages":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 685
    .restart local v1    # "packages":[Ljava/lang/String;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packages with UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    .end local v1    # "packages":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 690
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhoneTypeFromIntent(Landroid/content/Intent;)I
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2725
    const-string v2, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2727
    .local v0, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v2

    return v2
.end method

.method public static getShiftJisEncodingDetails(Ljava/lang/String;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 1312
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1313
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kddi/android/internal/telephony/cdma/sms/KddiPacketSmsDataConvertor;->kddiCalculateMsgSize(Ljava/lang/String;)I

    move-result v0

    .line 1314
    .local v0, "byteSize":I
    div-int/lit16 v3, v0, 0x8c

    rem-int/lit16 v2, v0, 0x8c

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    add-int/2addr v2, v3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1316
    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1317
    if-lez v0, :cond_1

    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x8c

    sub-int/2addr v2, v0

    :goto_1
    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1319
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1320
    return-object v1

    .line 1314
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1317
    :cond_1
    const/16 v2, 0x8c

    goto :goto_1
.end method

.method public static getSprintReassembleSmsInformation(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    .locals 28
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 1795
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "start to parse"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 1798
    :cond_0
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Null text or length too shhort, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    const/16 v19, 0x0

    .line 2026
    :goto_0
    return-object v19

    .line 1802
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    .line 1804
    .local v23, "totalLength":I
    const-string v25, "("

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1805
    .local v15, "indexOfFirstOpenParenthesis":I
    const/4 v10, -0x1

    .line 1807
    .local v10, "indexOfFirstCloseParenthesis":I
    const-string v25, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1808
    .local v13, "indexOfFirstOpenBraces":I
    const/4 v8, -0x1

    .line 1810
    .local v8, "indexOfFirstCloseBraces":I
    const-string v25, "["

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1811
    .local v14, "indexOfFirstOpenBrackets":I
    const/4 v9, -0x1

    .line 1813
    .local v9, "indexOfFirstCloseBrackets":I
    const-string v25, "/"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 1814
    .local v11, "indexOfFirstForwardSlash":I
    const-string v25, "of"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 1816
    .local v12, "indexOfFirstOf":I
    const/4 v6, -0x1

    .line 1818
    .local v6, "indexOfContent":I
    const/4 v3, -0x1

    .line 1819
    .local v3, "currentSegment":I
    const/16 v24, -0x1

    .line 1822
    .local v24, "totalSegment":I
    if-eqz v15, :cond_2

    if-eqz v13, :cond_2

    if-nez v14, :cond_10

    .line 1823
    :cond_2
    const/16 v16, -0x1

    .line 1824
    .local v16, "indexOfOpen":I
    const/4 v5, -0x1

    .line 1827
    .local v5, "indexOfClose":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_3

    .line 1828
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without forward slash, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const/16 v19, 0x0

    goto :goto_0

    .line 1833
    :cond_3
    if-nez v15, :cond_5

    .line 1834
    const-string v25, ")"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 1836
    move/from16 v16, v15

    .line 1837
    move v5, v10

    .line 1851
    :cond_4
    :goto_1
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 1852
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/16 v19, 0x0

    goto :goto_0

    .line 1838
    :cond_5
    if-nez v13, :cond_6

    .line 1839
    const-string v25, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1841
    move/from16 v16, v13

    .line 1842
    move v5, v8

    goto :goto_1

    .line 1843
    :cond_6
    if-nez v14, :cond_4

    .line 1844
    const-string v25, "]"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1846
    move/from16 v16, v14

    .line 1847
    move v5, v9

    goto :goto_1

    .line 1857
    :cond_7
    if-le v11, v5, :cond_8

    .line 1858
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 forward parenthesis behind close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1864
    :cond_8
    add-int/lit8 v25, v5, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_9

    add-int/lit8 v25, v16, 0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_a

    .line 1866
    :cond_9
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without current segment or total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1871
    :cond_a
    add-int/lit8 v17, v5, 0x1

    .line 1872
    .local v17, "indexOfRightOfClose":I
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    const-string v25, " "

    add-int/lit8 v26, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 1873
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfRightOfClose : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalLength : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 1876
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "right of close : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_b
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 space is not after close parenthesis, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1881
    :cond_c
    add-int/lit8 v6, v5, 0x2

    .line 1884
    move/from16 v0, v23

    if-lt v6, v0, :cond_d

    .line 1885
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 has no content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1891
    :cond_d
    add-int/lit8 v25, v16, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1900
    add-int/lit8 v25, v11, 0x1

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .line 1993
    .end local v5    # "indexOfClose":I
    .end local v16    # "indexOfOpen":I
    .end local v17    # "indexOfRightOfClose":I
    :cond_e
    :goto_2
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v3, v0, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v6, v0, :cond_1e

    .line 1994
    :cond_f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Can\'t get some information, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1892
    .restart local v5    # "indexOfClose":I
    .restart local v16    # "indexOfOpen":I
    .restart local v17    # "indexOfRightOfClose":I
    :catch_0
    move-exception v20

    .line 1893
    .local v20, "nfe1":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "currentSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1901
    .end local v20    # "nfe1":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v21

    .line 1902
    .local v21, "nfe2":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalSegment string : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v27, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 1 without total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1906
    .end local v5    # "indexOfClose":I
    .end local v16    # "indexOfOpen":I
    .end local v17    # "indexOfRightOfClose":I
    .end local v21    # "nfe2":Ljava/lang/NumberFormatException;
    :cond_10
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_11

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_e

    .line 1910
    :cond_11
    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v11, v0, :cond_12

    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v12, v0, :cond_12

    .line 1911
    const-string v4, "/"

    .line 1912
    .local v4, "delim":Ljava/lang/String;
    move v7, v11

    .line 1926
    .local v7, "indexOfDelim":I
    :goto_3
    const/16 v25, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    .line 1933
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    add-int/lit8 v25, v23, -0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_15

    .line 1934
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 forward slash is the last character, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1913
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_12
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v11, v0, :cond_13

    const/16 v25, -0x1

    move/from16 v0, v25

    if-eq v12, v0, :cond_13

    .line 1914
    const-string v4, "of"

    .line 1915
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v12

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1916
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_13
    if-ge v11, v12, :cond_14

    .line 1917
    const-string v4, "/"

    .line 1918
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v11

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1920
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    :cond_14
    const-string v4, "of"

    .line 1921
    .restart local v4    # "delim":Ljava/lang/String;
    move v7, v12

    .restart local v7    # "indexOfDelim":I
    goto :goto_3

    .line 1927
    :catch_2
    move-exception v20

    .line 1928
    .restart local v20    # "nfe1":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 current segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1936
    .end local v20    # "nfe1":Ljava/lang/NumberFormatException;
    :cond_15
    const-string v25, "of"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    add-int/lit8 v25, v23, -0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_16

    .line 1937
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 without of is the last word, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1943
    :cond_16
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 1944
    add-int/lit8 v18, v7, 0x1

    .line 1950
    .local v18, "indexOfTotalSegment":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_18

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 1951
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 1946
    .end local v18    # "indexOfTotalSegment":I
    :cond_17
    add-int/lit8 v18, v7, 0x2

    .restart local v18    # "indexOfTotalSegment":I
    goto :goto_4

    .line 1955
    :cond_18
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_19

    const-string v25, " "

    add-int/lit8 v26, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1956
    :cond_19
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find total segment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1961
    :cond_1a
    move/from16 v6, v18

    .line 1962
    :goto_5
    move/from16 v0, v23

    if-ge v6, v0, :cond_1b

    const-string v25, " "

    add-int/lit8 v26, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1b

    .line 1963
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1966
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    .line 1969
    move/from16 v0, v23

    if-lt v6, v0, :cond_1c

    .line 1970
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1976
    :cond_1c
    add-int/lit8 v25, v18, 0x1

    move/from16 v0, v25

    if-ne v0, v6, :cond_1d

    .line 1977
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfContent : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const-string v25, "getSprintReassembleSmsInformation"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "indexOfTotalSegment : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 can\'t find space between segment & content, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1985
    :cond_1d
    add-int/lit8 v25, v6, -0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v24

    goto/16 :goto_2

    .line 1986
    :catch_3
    move-exception v21

    .line 1987
    .restart local v21    # "nfe2":Ljava/lang/NumberFormatException;
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "Type 2 total segment parse fail, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1998
    .end local v4    # "delim":Ljava/lang/String;
    .end local v7    # "indexOfDelim":I
    .end local v18    # "indexOfTotalSegment":I
    .end local v21    # "nfe2":Ljava/lang/NumberFormatException;
    :cond_1e
    if-eqz v3, :cond_1f

    if-nez v24, :cond_20

    .line 1999
    :cond_1f
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment or totalSegment is 0, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2003
    :cond_20
    const/16 v25, 0xff

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_21

    .line 2004
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "totalSegment size more than one byte, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2008
    :cond_21
    move/from16 v0, v24

    if-le v3, v0, :cond_22

    .line 2009
    const-string v25, "getSprintReassembleSmsInformation"

    const-string v26, "currentSegment greater than totalSegment, not a Sprint reassmeble SMS"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2013
    :cond_22
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 2014
    .local v22, "sb":Ljava/lang/StringBuilder;
    const-string v25, "("

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    const-string v25, "/"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2017
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2018
    const-string v25, ") "

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    new-instance v19, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;-><init>()V

    .line 2022
    .local v19, "info":Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;
    move-object/from16 v0, v19

    iput v3, v0, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->currentSegment:I

    .line 2023
    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->totalSegment:I

    .line 2024
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/internal/telephony/HtcMessageHelper$SprintReassembleSmsInformation;->normalizedText:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "originPort"    # I
    .param p3, "destinationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z
    .param p6, "phoneType"    # I

    .prologue
    .line 190
    invoke-static/range {p0 .. p6}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZI)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSurrogatePairFromCodePoint(I)[C
    .locals 8
    .param p0, "codePoint"    # I

    .prologue
    const v7, 0xdc00

    const v6, 0xd800

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2069
    const/high16 v3, 0x10000

    sub-int v0, p0, v3

    .line 2070
    .local v0, "cp2":I
    const v3, 0xfffff

    if-le v0, v3, :cond_1

    move-object v1, v2

    .line 2091
    :cond_0
    :goto_0
    return-object v1

    .line 2075
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 2076
    .local v1, "pair":[C
    shr-int/lit8 v3, v0, 0xa

    and-int/lit16 v3, v3, 0x3ff

    add-int/2addr v3, v6

    int-to-char v3, v3

    aput-char v3, v1, v4

    .line 2077
    and-int/lit16 v3, v0, 0x3ff

    add-int/2addr v3, v7

    int-to-char v3, v3

    aput-char v3, v1, v5

    .line 2080
    aget-char v3, v1, v4

    if-lt v3, v6, :cond_2

    aget-char v3, v1, v4

    const v4, 0xdbff

    if-le v3, v4, :cond_3

    :cond_2
    move-object v1, v2

    .line 2081
    goto :goto_0

    .line 2084
    :cond_3
    aget-char v3, v1, v5

    if-lt v3, v7, :cond_4

    aget-char v3, v1, v5

    const v4, 0xdfff

    if-le v3, v4, :cond_0

    :cond_4
    move-object v1, v2

    .line 2085
    goto :goto_0
.end method

.method private static getUidSignatures(Landroid/content/pm/PackageManager;II)[Landroid/content/pm/Signature;
    .locals 6
    .param p0, "mPm"    # Landroid/content/pm/PackageManager;
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 698
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/HtcMessageHelper;->getPackageName(Landroid/content/pm/PackageManager;II)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 702
    const/16 v3, 0x40

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 704
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 709
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 720
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 712
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packageInfo found for : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get UID/PID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 7
    .param p0, "smsc"    # [B
    .param p1, "pdu"    # [B
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "bFirstOfAll"    # Z
    .param p5, "bLastOfAll"    # Z

    .prologue
    .line 198
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 199
    .local v0, "sm":Landroid/telephony/SmsManager;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 200
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 202
    :cond_0
    return-void
.end method

.method public static insertDummyDataForTwoCharacterLf(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 2462
    if-nez p0, :cond_0

    .line 2463
    const/4 v3, 0x0

    .line 2473
    :goto_0
    return-object v3

    .line 2466
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2467
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->getLfCount(Ljava/lang/String;)I

    move-result v1

    .line 2469
    .local v1, "lfCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2470
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2473
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static isCDMAHideLanguageIndicator()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1700
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 1701
    .local v0, "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return v3

    .line 1705
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 1706
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaPccwRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1708
    :cond_3
    const-string v3, "SMS"

    const-string v4, "Hide Language Indicator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isCDMAHidePriorityIndicator()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1741
    const/4 v2, 0x0

    .line 1742
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1743
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 1744
    .local v0, "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return v4

    .line 1747
    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 1749
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaPccwRoaming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1751
    :cond_3
    const-string v4, "SMS"

    const-string v5, "Hide Priority Indicator"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isCDMAHideReplyOption()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1764
    const/4 v2, 0x0

    .line 1765
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1766
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 1767
    .local v0, "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1776
    :cond_0
    :goto_0
    return v4

    .line 1770
    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 1772
    invoke-static {v2}, Lcom/android/internal/telephony/HtcMessageHelper;->isCtIccCard(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1773
    const-string v4, "SMS"

    const-string v5, "Hide Reply Option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isCdmaMo()Z
    .locals 3

    .prologue
    .line 2876
    const/4 v1, 0x0

    .line 2878
    .local v1, "isCdmaMo":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2879
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2880
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isCdmaMo()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2885
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 2882
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isCdmaNetworkRoaming()Z
    .locals 6

    .prologue
    .line 2925
    const/4 v2, 0x0

    .line 2927
    .local v2, "isRoaming":Z
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 2928
    .local v0, "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2929
    const/4 v2, 0x0

    .line 2933
    .end local v2    # "isRoaming":Z
    :goto_0
    return v2

    .line 2931
    .restart local v2    # "isRoaming":Z
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(J)Z

    move-result v2

    .line 2932
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is cdma roaming? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isCdmaPccwRoaming()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1715
    const/4 v2, 0x0

    .line 1716
    .local v2, "mccMnc":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 1717
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->getFirstCdmaSubId()J

    move-result-wide v0

    .line 1718
    .local v0, "cdmaSubId":J
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1731
    :cond_0
    :goto_0
    return v4

    .line 1721
    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(J)Ljava/lang/String;

    move-result-object v2

    .line 1726
    if-eqz v2, :cond_0

    const-string v5, "45429"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 1728
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isCtIccCard(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mccmnc"    # Ljava/lang/String;

    .prologue
    .line 2823
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2824
    const-string v0, "46003"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2825
    const/4 v0, 0x1

    .line 2828
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualCGPhone()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 172
    .local v0, "phone1":Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 173
    .local v1, "phone2":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    .line 174
    :cond_0
    const-string v4, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualCGPhone Error : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    const-string v2, "slot1"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " phone instance is null!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 183
    :cond_1
    :goto_1
    return v2

    .line 174
    :cond_2
    const-string v2, "slot2"

    goto :goto_0

    .line 178
    :cond_3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v2, :cond_1

    :cond_4
    move v2, v3

    .line 183
    goto :goto_1
.end method

.method public static isDualGGPhone()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 153
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 155
    .local v0, "phone1":Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 156
    .local v1, "phone2":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    .line 157
    :cond_0
    const-string v4, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualGGPhone Error : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_2

    const-string v2, "slot1"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " phone instance is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 166
    :cond_1
    :goto_1
    return v2

    .line 157
    :cond_2
    const-string v2, "slot2"

    goto :goto_0

    .line 161
    :cond_3
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-eq v4, v2, :cond_1

    :cond_4
    move v2, v3

    .line 166
    goto :goto_1
.end method

.method public static isHtcMessageAp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2896
    const-string v0, "com.htc.sense.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isInHtcBlockedList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2667
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 2668
    .local v7, "builder":Landroid/net/Uri$Builder;
    const/4 v10, 0x0

    .line 2669
    .local v10, "htcBlockList":Z
    const/4 v6, 0x0

    .line 2671
    .local v6, "blocked":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isNotSupportPhoneNumBlockListCheck()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2673
    const/4 v10, 0x1

    .line 2674
    const-string v0, "contactblocklist"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2675
    const-string v0, "number"

    invoke-virtual {v7, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2682
    :goto_0
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2684
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 2686
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 2688
    if-eqz v10, :cond_3

    .line 2689
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2692
    const/4 v6, 0x1

    .line 2693
    const-string v0, "SMS"

    const-string v2, "This number is Blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2706
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2712
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_2
    return v6

    .line 2679
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v0, "blocklist"

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2680
    const-string v0, "number"

    invoke-virtual {v7, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 2698
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2699
    const/4 v6, 0x1

    .line 2700
    const-string v0, "SMS"

    const-string v2, "This number is Blocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2703
    :catch_0
    move-exception v9

    .line 2704
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2706
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2709
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 2710
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 2706
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static isKddi3gppCb(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 1071
    const/16 v1, 0x1100

    if-eq p0, v1, :cond_0

    const/16 v1, 0x1103

    if-eq p0, v1, :cond_0

    const v1, 0xac00

    if-ne p0, v1, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return v0

    .line 1079
    :cond_1
    const v1, 0xa000

    if-lt p0, v1, :cond_2

    const v1, 0xafff

    if-le p0, v1, :cond_0

    .line 1083
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKddiBcsmsTestMode()Z
    .locals 3

    .prologue
    .line 1215
    const-string v1, "kddi.lab.test"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "testMode":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isKddiOptionService(I)Z
    .locals 1
    .param p0, "typeId"    # I

    .prologue
    .line 1341
    const v0, 0xef40

    if-lt p0, v0, :cond_0

    const v0, 0xef7e

    if-gt p0, v0, :cond_0

    .line 1342
    const/4 v0, 0x1

    .line 1344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiOtherService(I)Z
    .locals 1
    .param p0, "typeId"    # I

    .prologue
    .line 1348
    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    .line 1349
    const/4 v0, 0x1

    .line 1351
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKddiRoaming()Z
    .locals 4

    .prologue
    .line 1440
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1441
    .local v0, "mccMnc":Ljava/lang/String;
    const-string v1, "isKddiRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    if-eqz v0, :cond_0

    const-string v1, "440"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1443
    :cond_0
    const/4 v1, 0x0

    .line 1445
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isKddiSmsTypeCmail(I)Z
    .locals 2
    .param p0, "typeId"    # I

    .prologue
    .line 1326
    const/4 v0, 0x0

    .line 1327
    .local v0, "isCmail":Z
    const/16 v1, 0x100

    if-ne p0, v1, :cond_1

    .line 1328
    const/4 v0, 0x1

    .line 1337
    :cond_0
    :goto_0
    return v0

    .line 1329
    :cond_1
    const/16 v1, 0x103

    if-lt p0, v1, :cond_2

    const/16 v1, 0x1ff

    if-gt p0, v1, :cond_2

    .line 1330
    const/4 v0, 0x1

    goto :goto_0

    .line 1331
    :cond_2
    const/16 v1, 0x202

    if-lt p0, v1, :cond_3

    const v1, 0xef39

    if-gt p0, v1, :cond_3

    .line 1332
    const/4 v0, 0x1

    goto :goto_0

    .line 1333
    :cond_3
    const v1, 0xef7f

    if-lt p0, v1, :cond_0

    .line 1334
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isMiddleWord(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    .line 1519
    const/16 v1, 0x61

    if-gt v1, p0, :cond_0

    const/16 v1, 0x7a

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x41

    if-gt v1, p0, :cond_2

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1521
    .local v0, "bEnglishChar":Z
    :goto_0
    return v0

    .line 1519
    .end local v0    # "bEnglishChar":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMmsWapPush(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2572
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2573
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2574
    .local v1, "mime":Ljava/lang/String;
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2577
    const/4 v2, 0x1

    .line 2579
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNumberBlocked(Landroid/content/Context;Landroid/content/Intent;[Landroid/telephony/SmsMessage;Lcom/android/internal/telephony/TencentSecurityManager;)Z
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "secureMgr"    # Lcom/android/internal/telephony/TencentSecurityManager;

    .prologue
    .line 2594
    const/16 v19, 0x0

    .line 2595
    .local v19, "slot":I
    const/4 v11, -0x1

    .line 2596
    .local v11, "msgType":I
    const/4 v9, 0x0

    .line 2597
    .local v9, "phoneNumber":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2598
    .local v14, "htcBlocked":Z
    const/4 v8, 0x0

    .line 2599
    .local v8, "optName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2600
    .local v10, "content":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2601
    .local v18, "phoneType":I
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    if-eqz p2, :cond_4

    .line 2603
    const/4 v11, 0x0

    .line 2604
    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .line 2605
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/internal/telephony/HtcMessageHelper;->isInHtcBlockedList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .line 2608
    const-string v20, "isBlocked"

    if-eqz v14, :cond_1

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2610
    if-nez v14, :cond_3

    .line 2614
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    .line 2615
    .local v17, "pduCnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2616
    .local v4, "body":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 2617
    aget-object v5, p2, v15

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2608
    .end local v4    # "body":Ljava/lang/StringBuilder;
    .end local v15    # "i":I
    .end local v17    # "pduCnt":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2620
    .restart local v4    # "body":Ljava/lang/StringBuilder;
    .restart local v15    # "i":I
    .restart local v17    # "pduCnt":I
    :cond_2
    const-string v5, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2622
    .local v6, "subId":J
    const-string v5, "SMS"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " isNumberBlocked sub_id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v8

    .line 2625
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p3

    .line 2626
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/TencentSecurityManager;->isBlockedMsg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 2652
    .end local v4    # "body":Ljava/lang/StringBuilder;
    .end local v6    # "subId":J
    .end local v15    # "i":I
    .end local v17    # "pduCnt":I
    :goto_2
    return v5

    .line 2630
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 2632
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/HtcMessageHelper;->isMmsWapPush(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2635
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    if-nez v5, :cond_5

    .line 2636
    const-string v5, "com.google.android.mms.util.HtcMmsUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    .line 2637
    .local v12, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const-class v20, Landroid/content/Intent;

    aput-object v20, v16, v5

    const/4 v5, 0x1

    const-class v20, Lcom/android/internal/telephony/TencentSecurityManager;

    aput-object v20, v16, v5

    .line 2641
    .local v16, "params":[Ljava/lang/Class;
    const-string v5, "isTencentBlockedMmsWapPush"

    move-object/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    .line 2643
    .end local v12    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "params":[Ljava/lang/Class;
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_6

    .line 2644
    sget-object v5, Lcom/android/internal/telephony/HtcMessageHelper;->sMethIsTencentBlockedMmsWapPush:Ljava/lang/reflect/Method;

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    const/16 v22, 0x1

    aput-object p3, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_2

    .line 2646
    :cond_6
    const-string v5, "SMS"

    const-string v20, "fail to get method isTencentBlockedMmsWapPush"

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2652
    :cond_7
    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    .line 2648
    :catch_0
    move-exception v13

    .line 2649
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static isPhoneNumberContainCountryCodeInCtList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2860
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 2866
    :cond_0
    :goto_0
    return v2

    .line 2861
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/HtcMessageHelper;->sCountryCodeListCT:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2862
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2863
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final isSmsRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 2971
    const-string v1, "sms_roaming_guard_allowed"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2972
    .local v0, "allowedProviders":Ljava/lang/String;
    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isSystemAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1535
    const/4 v1, 0x0

    .line 1537
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1541
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1542
    const/4 v2, 0x1

    .line 1544
    :cond_0
    return v2

    .line 1538
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SMS"

    const-string v4, "exception when get packageinfo"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVerizonAvsAuthorized(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1645
    const-string v2, "content://com.verizon.vzwavs.provider/apis"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1646
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1647
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 1651
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1653
    if-eqz v7, :cond_1

    .line 1654
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVS query cursor count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1667
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1668
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1669
    .local v6, "apiIds":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v2, "VZWSMS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1670
    const/4 v2, 0x1

    .line 1683
    if-eqz v7, :cond_0

    .line 1684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1687
    .end local v6    # "apiIds":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1675
    :cond_1
    :try_start_1
    const-string v2, "SMS"

    const-string v3, "AVS query cursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1683
    if-eqz v7, :cond_2

    .line 1684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v9

    goto :goto_0

    .line 1683
    :cond_3
    if-eqz v7, :cond_4

    .line 1684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v9

    .line 1687
    goto :goto_0

    .line 1678
    :catch_0
    move-exception v8

    .line 1679
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "SMS"

    const-string v3, "AVS query exception !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1683
    if-eqz v7, :cond_5

    .line 1684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v2, v9

    goto :goto_0

    .line 1683
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_6

    .line 1684
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method public static isVerizonConsignAp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1560
    const/4 v6, 0x0

    .line 1561
    .local v6, "rtResult":Z
    sget-object v11, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    array-length v10, v11

    .line 1562
    .local v10, "vzwSignatureAPLen":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1565
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-array v7, v10, [[Landroid/content/pm/Signature;

    .line 1566
    .local v7, "signVzws":[[Landroid/content/pm/Signature;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 1568
    const/4 v11, 0x0

    aput-object v11, v7, v2

    .line 1572
    :try_start_0
    sget-object v11, Lcom/android/internal/telephony/HtcMessageHelper;->VZWSIGNATURE:[Ljava/lang/String;

    aget-object v11, v11, v2

    const/16 v12, 0x40

    invoke-virtual {v5, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aput-object v11, v7, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1573
    :catch_0
    move-exception v1

    .line 1574
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "SMS"

    const-string v12, "get V signature exception"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1580
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v8, 0x0

    .line 1582
    .local v8, "signs":[Landroid/content/pm/Signature;
    const/16 v11, 0x40

    :try_start_1
    invoke-virtual {v5, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget-object v8, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1590
    :goto_2
    if-eqz v8, :cond_1

    .line 1591
    :try_start_2
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AP sig count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    array-length v0, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1595
    .local v0, "apSigcount":I
    const/4 v11, 0x1

    if-ge v0, v11, :cond_2

    .line 1596
    const/4 v6, 0x0

    .line 1626
    .end local v0    # "apSigcount":I
    .end local v6    # "rtResult":Z
    :cond_1
    :goto_3
    return v6

    .line 1583
    .restart local v6    # "rtResult":Z
    :catch_1
    move-exception v1

    .line 1584
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "SMS"

    const-string v12, "get AP signature exception"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1600
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apSigcount":I
    :cond_2
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    if-ge v4, v0, :cond_1

    .line 1601
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v10, :cond_6

    .line 1603
    :try_start_3
    aget-object v11, v7, v2

    if-nez v11, :cond_4

    .line 1604
    const-string v11, "SMS"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sig in V AP:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is null, continue"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1609
    :cond_4
    aget-object v11, v7, v2

    array-length v9, v11

    .line 1610
    .local v9, "vzwSigCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_6
    if-ge v3, v9, :cond_3

    .line 1611
    aget-object v11, v8, v4

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    aget-object v11, v8, v4

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v11

    aget-object v12, v7, v2

    aget-object v12, v12, v3

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1613
    const-string v11, "SMS"

    const-string v12, "check success"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/4 v6, 0x1

    goto :goto_3

    .line 1616
    :cond_5
    const-string v11, "SMS"

    const-string v12, "check failed"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1610
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1600
    .end local v3    # "j":I
    .end local v9    # "vzwSigCount":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1622
    .end local v0    # "apSigcount":I
    .end local v4    # "k":I
    :catch_2
    move-exception v1

    .line 1623
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1255
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1282
    :goto_0
    return-object v2

    .line 1256
    :cond_1
    const/4 v9, 0x0

    .line 1257
    .local v9, "sb":Ljava/lang/StringBuilder;
    sget-object v13, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1258
    .local v6, "m":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .line 1259
    .local v8, "offset":I
    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1260
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 1261
    .local v10, "start":I
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 1262
    .local v3, "end":I
    sget-object v7, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 1263
    .local v7, "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    sget-object v11, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 1264
    .local v11, "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    move-object/from16 v0, p1

    invoke-interface {v7, v0, v10, v3}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1265
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v6, v13}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1266
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v4

    .line 1267
    .local v4, "info":Lcom/android/internal/telephony/CallerInfo;
    if-eqz v4, :cond_2

    iget-wide v14, v4, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    .line 1268
    iget-object v13, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1269
    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1270
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v13, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v5, v13, 0x1

    .line 1271
    .local v5, "len":I
    add-int v13, v3, v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1272
    add-int/2addr v8, v5

    goto :goto_1

    .line 1277
    .end local v3    # "end":I
    .end local v4    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v5    # "len":I
    .end local v7    # "matchFilter":Landroid/text/util/Linkify$MatchFilter;
    .end local v10    # "start":I
    .end local v11    # "transformFilter":Landroid/text/util/Linkify$TransformFilter;
    .end local v12    # "url":Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 1278
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1279
    .local v2, "body":Ljava/lang/String;
    const-string v13, "SMS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Replace Cmail body> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "body":Ljava/lang/String;
    :cond_5
    move-object/from16 v2, p1

    .line 1282
    goto/16 :goto_0
.end method

.method public static kddiCheck3gpp2CbDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 1177
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateCbMechanism()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1178
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->isKddiBCSMS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageIdentifier()I

    move-result v0

    .line 1181
    .local v0, "msg_id":I
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {p0, v0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckCbDuplication(Landroid/content/Context;I)Z

    move-result v1

    .line 1185
    .end local v0    # "msg_id":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static kddiCheck3gppCbDuplication(Landroid/content/Context;[B)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # [B

    .prologue
    const/4 v2, 0x0

    .line 1136
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiLteDuplicateCbMechanism()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1137
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1138
    .local v0, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is UMTS format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP CBS - Is ETWS Primary format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP Service Category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddi3gppCb(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1144
    const/4 v1, -0x1

    .line 1151
    .local v1, "sn":I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isGsmFormat()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1155
    :cond_0
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 1160
    :cond_1
    :goto_0
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serial Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-static {p0, v1}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiCheckCbDuplication(Landroid/content/Context;I)Z

    move-result v2

    .line 1165
    .end local v0    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v1    # "sn":I
    :cond_2
    return v2

    .line 1156
    .restart local v0    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v1    # "sn":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    goto :goto_0
.end method

.method private static kddiCheckCbDuplication(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg_id"    # I

    .prologue
    .line 1095
    const/4 v8, 0x0

    .line 1097
    .local v8, "result":Z
    const/4 v0, 0x4

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "pdu"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "is_cdma_format"

    aput-object v1, v2, v0

    .line 1103
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "protocol = ? "

    .line 1104
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1107
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$HtcCmas;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1109
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1111
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect duplicated JEA: 0x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    const/4 v8, 0x1

    .line 1118
    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1125
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v8

    .line 1118
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1121
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1122
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception when checking JEA duplication: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiCheckSmsDuplication(Landroid/content/Context;Lcom/android/internal/telephony/SmsMessageBase;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 872
    const/4 v11, 0x0

    .line 873
    .local v11, "result":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    .line 874
    .local v6, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    .line 884
    .local v8, "date":J
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v1, v2, v0

    .line 888
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "address = ? AND date = ? "

    .line 890
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 894
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 896
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 898
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    const-string v0, "SMS"

    const-string v1, "Detecte duplicated SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    const/4 v11, 0x1

    .line 903
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 910
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return v11

    .line 903
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 906
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v10

    .line 907
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "SMS"

    const-string v1, "exception when checking duplication"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static kddiFormatCmailBody(Landroid/content/Context;Landroid/telephony/SmsMessage;)V
    .locals 4
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    .line 1228
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiMtCmail()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v2, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .line 1232
    .local v2, "smsb":Lcom/android/internal/telephony/SmsMessageBase;
    instance-of v3, v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1233
    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 1235
    .local v0, "msg":Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiHasSmsTypeId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1236
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->kddiGetSmsTypeId()I

    move-result v1

    .line 1244
    .local v1, "smsId":I
    const/16 v3, 0x101

    if-eq v1, v3, :cond_2

    const/16 v3, 0x102

    if-eq v1, v3, :cond_2

    const/16 v3, 0x201

    if-ne v1, v3, :cond_0

    .line 1247
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiAppendCallerNames(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static kddiIsDiscarded3gpp2BCSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .param p0, "sms"    # Lcom/android/internal/telephony/cdma/SmsMessage;

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1197
    .local v0, "result":Z
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportKddiBcsms()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1198
    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isKddiBcsmsTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    const-string v1, "SMS"

    const-string v2, "Under KDDI BCSMS Test Mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    :goto_0
    return v0

    .line 1201
    :cond_1
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "discarded BCSMS category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kddiReplaceKddiEmojiWithKddiUcs2(Ljava/lang/String;)Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    .locals 10
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2164
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 2165
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    .line 2209
    :goto_0
    return-object v5

    .line 2168
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2169
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    .line 2170
    .local v2, "endPosition":I
    const/4 v8, 0x2

    new-array v7, v8, [C

    .line 2172
    .local v7, "singleEmoji":[C
    new-instance v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;

    invoke-direct {v5}, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;-><init>()V

    .line 2175
    .local v5, "result":Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_4

    .line 2176
    const/4 v8, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2177
    const/4 v8, 0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2183
    invoke-static {v7}, Lcom/android/internal/telephony/HtcMessageHelper;->getCodePointFromSurrogatePair([C)I

    move-result v1

    .line 2187
    .local v1, "codePoint":I
    if-nez v1, :cond_2

    .line 2188
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2175
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2191
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiEmojiToKddiUcs2(I)I

    move-result v4

    .line 2192
    .local v4, "kddiUcs2":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 2193
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2194
    .local v0, "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    iget v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->emojiCount:I

    .line 2196
    add-int/lit8 v3, v3, 0x1

    .line 2197
    goto :goto_2

    .line 2198
    .end local v0    # "chars":[C
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2203
    .end local v1    # "codePoint":I
    .end local v4    # "kddiUcs2":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 2204
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2207
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/HtcMessageHelper$KddiReplaceUnicodeEmojiResult;->userDataString:Ljava/lang/String;

    goto :goto_0
.end method

.method public static kddiReplaceKddiUcs2WithStandardEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2398
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v3, p0

    .line 2430
    :goto_0
    return-object v3

    .line 2402
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2403
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2409
    .local v1, "msgLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 2411
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiUcs2ToStandardEmoji(C)I

    move-result v5

    .line 2413
    .local v5, "standardEmoji":I
    if-ltz v5, :cond_3

    .line 2415
    const v6, 0xffff

    if-gt v5, v6, :cond_2

    .line 2416
    int-to-char v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2409
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2418
    :cond_2
    invoke-static {v5}, Lcom/android/internal/telephony/HtcMessageHelper;->getSurrogatePairFromCodePoint(I)[C

    move-result-object v2

    .line 2422
    .local v2, "pair":[C
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2425
    .end local v2    # "pair":[C
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2429
    .end local v5    # "standardEmoji":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2430
    .local v3, "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static kddiReplaceStandardEmojiWithKddiEmoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2102
    invoke-static {p0}, Lcom/android/internal/telephony/HtcMessageHelper;->kddiReplaceStandardEmojiWithKddiUcs2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 2106
    :cond_0
    const-string v6, ""

    .line 2144
    :goto_0
    return-object v6

    .line 2109
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 2110
    .local v2, "endPosition":I
    new-array v5, v9, [C

    .line 2112
    .local v5, "singleEmoji":[C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2114
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_4

    .line 2118
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->kddiUcs2ToKddiEmoji(C)I

    move-result v1

    .line 2122
    .local v1, "codePoint":I
    const/4 v5, 0x0

    .line 2123
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 2125
    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->getSurrogatePairFromCodePoint(I)[C

    move-result-object v5

    .line 2127
    if-eqz v5, :cond_2

    .line 2133
    :cond_2
    if-nez v5, :cond_3

    .line 2134
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2114
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2136
    :cond_3
    new-array v0, v9, [C

    aget-char v6, v5, v7

    aput-char v6, v0, v7

    aget-char v6, v5, v8

    aput-char v6, v0, v8

    .line 2137
    .local v0, "chars":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2144
    .end local v0    # "chars":[C
    .end local v1    # "codePoint":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static kddiReplaceStandardEmojiWithKddiUcs2(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "msg"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 2285
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    move-object v5, p0

    .line 2386
    :goto_0
    return-object v5

    .line 2289
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2290
    .local v6, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x2

    .line 2291
    .local v2, "endPosition":I
    const/4 v8, 0x2

    new-array v7, v8, [C

    .line 2297
    .local v7, "singleEmoji":[C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-gt v3, v2, :cond_5

    .line 2298
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v7, v11

    .line 2299
    const/4 v8, 0x1

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aput-char v9, v7, v8

    .line 2305
    invoke-static {v7}, Lcom/android/internal/telephony/HtcMessageHelper;->getCodePointFromSurrogatePair([C)I

    move-result v1

    .line 2309
    .local v1, "codePoint":I
    if-nez v1, :cond_3

    .line 2311
    aget-char v8, v7, v11

    invoke-static {v8}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2313
    .local v4, "kddiUcs2":I
    if-eq v4, v10, :cond_2

    .line 2315
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2316
    .local v0, "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    .end local v0    # "chars":[C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2319
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2323
    .end local v4    # "kddiUcs2":I
    :cond_3
    invoke-static {v1}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2325
    .restart local v4    # "kddiUcs2":I
    if-eq v4, v10, :cond_4

    .line 2327
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2328
    .restart local v0    # "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    add-int/lit8 v3, v3, 0x1

    .line 2330
    goto :goto_2

    .line 2332
    .end local v0    # "chars":[C
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2338
    .end local v1    # "codePoint":I
    .end local v4    # "kddiUcs2":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 2341
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/KddiEmojiAlphabet;->standardEmojiToKddiUcs2(I)I

    move-result v4

    .line 2343
    .restart local v4    # "kddiUcs2":I
    if-eq v4, v10, :cond_7

    .line 2344
    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2345
    .restart local v0    # "chars":[C
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2352
    .end local v0    # "chars":[C
    .end local v4    # "kddiUcs2":I
    :cond_6
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2358
    .local v5, "resultString":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji00:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji00:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2359
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji01:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji01:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2360
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji02:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji02:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2361
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji03:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji03:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2362
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji04:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji04:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2363
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji05:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji05:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2364
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji06:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji06:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2365
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji07:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji07:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2366
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji08:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji08:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji09:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji09:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2368
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji10:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji10:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2370
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji11:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji11:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2371
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji12:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji12:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2372
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji13:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji13:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2373
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji14:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji14:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2374
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji15:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji15:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2375
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji16:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji16:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2376
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji17:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji17:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2377
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji18:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji18:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2378
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji19:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji19:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2379
    sget-object v8, Lcom/android/internal/telephony/HtcMessageHelper;->sCompositeKddiEmoji20:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->sDecompositeKddiEmoji20:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 2386
    goto/16 :goto_0

    .line 2347
    .end local v5    # "resultString":Ljava/lang/String;
    .restart local v4    # "kddiUcs2":I
    :cond_7
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method public static printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "phonenumber"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 2498
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-gt v2, v3, :cond_2

    .line 2500
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    .line 2501
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    :goto_0
    return-void

    .line 2503
    :cond_1
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2505
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2506
    .local v1, "phonelen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, "partialphone":Ljava/lang/String;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removeOldestVzwCmasKey()V
    .locals 12

    .prologue
    .line 230
    const-string v9, "SMS"

    const-string v10, "Remove Oldest key"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    .line 232
    .local v2, "length":I
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 234
    .local v8, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-array v9, v2, [Ljava/lang/Integer;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Integer;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Integer;

    .line 235
    .local v0, "array":[Ljava/lang/Integer;
    const-wide/16 v6, 0x0

    .line 236
    .local v6, "minDate":J
    const/4 v5, -0x1

    .line 240
    .local v5, "minKey":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 241
    aget-object v9, v0, v1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 242
    .local v4, "mId":I
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 247
    .local v3, "mDate":Ljava/lang/Long;
    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-nez v9, :cond_1

    .line 248
    move v5, v4

    .line 249
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 240
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v9, v6, v10

    if-lez v9, :cond_0

    .line 254
    move v5, v4

    .line 255
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_1

    .line 262
    .end local v3    # "mDate":Ljava/lang/Long;
    .end local v4    # "mId":I
    :cond_2
    if-lez v5, :cond_3

    .line 263
    const-string v9, "SMS"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    sget-object v9, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasIdMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_3
    return-void
.end method

.method public static removePrefixZeroFromPhoneNumberIfNeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 2839
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportRemovePrefixZeroFromPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2840
    if-eqz p0, :cond_0

    const-string v0, "+00"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2844
    :cond_0
    return-object p0
.end method

.method public static replacePlusWith010(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "destinationAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2910
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "010"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2916
    :cond_0
    return-object p0
.end method

.method public static resetCmasFingerPrintMap()V
    .locals 3

    .prologue
    .line 539
    sget-object v1, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    monitor-enter v1

    .line 540
    :try_start_0
    const-string v0, "SMS"

    const-string v2, "Clear Cmas Finger Print Cache!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    sget-object v0, Lcom/android/internal/telephony/HtcMessageHelper;->mCmasFingerPrintMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 542
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sendPendingIntent(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageRef"    # I
    .param p2, "fillIn"    # Landroid/content/Intent;

    .prologue
    .line 965
    invoke-static {p0, p1}, Lcom/android/internal/telephony/HtcMessageHelper;->getIntentFromPendingList(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 966
    .local v1, "retIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 968
    if-eqz p2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 969
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_1
    :goto_0
    return-void

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not broadcast intent TP-MR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
