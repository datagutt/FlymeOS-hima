.class public Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "CdmaSmsAddress.java"

# interfaces
.implements Lcom/android/internal/telephony/cdma/sms/HtcIfCdmaSmsAddress;


# static fields
.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x1

.field public static final NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field public static final SMS_ADDRESS_MAX:I = 0x24

.field public static final SMS_SUBADDRESS_MAX:I = 0x24

.field static final TAG:Ljava/lang/String; = "SMS"

.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_RESERVED:I = 0x7

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I

.field private static final numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final numericCharsDialable:[C

.field private static final numericCharsSugar:[C


# instance fields
.field public digitMode:I

.field public numberMode:I

.field public numberOfDigits:I

.field public numberPlan:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 143
    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    .line 147
    const/16 v1, 0x8

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    .line 151
    new-instance v1, Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v2, v2

    sget-object v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 155
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    aget-char v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 158
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    aget-char v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_1
    return-void

    .line 143
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2as
        0x23s
    .end array-data

    .line 147
    :array_1
    .array-data 2
        0x28s
        0x29s
        0x20s
        0x2ds
        0x2bs
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 104
    return-void
.end method

.method private static filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 171
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 173
    .local v1, "c":C
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 174
    .local v4, "mapIndex":I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 178
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :goto_1
    return-object v5

    .line 175
    .restart local v1    # "c":C
    .restart local v4    # "mapIndex":I
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 171
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 188
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 190
    .local v1, "c":C
    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 188
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 193
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isInternationalNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 348
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    if-ne v1, v0, :cond_0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "bRemovePlus"    # Z

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 211
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 212
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 213
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "origBytes":[B
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "filteredAddr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 220
    if-eqz v1, :cond_0

    .line 221
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v2

    .line 226
    :cond_0
    if-eqz v2, :cond_2

    .line 227
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 228
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 229
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 230
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 255
    :cond_1
    :goto_0
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 256
    array-length v3, v2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 257
    .end local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_1
    return-object v0

    .line 233
    .restart local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_2
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v2

    .line 235
    if-nez v2, :cond_3

    .line 236
    const/4 v0, 0x0

    goto :goto_1

    .line 239
    :cond_3
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 241
    if-ne v4, p1, :cond_4

    .line 242
    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 243
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 244
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 245
    const-string v3, "SMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dM/nM/ton/np: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_4
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 250
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 251
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    goto :goto_0
.end method

.method private static parseToDtmf(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 129
    .local v1, "digits":I
    new-array v3, v1, [B

    .line 130
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 132
    .local v0, "c":C
    const/4 v4, 0x0

    .line 133
    .local v4, "val":I
    const/16 v5, 0x31

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    add-int/lit8 v4, v0, -0x30

    .line 138
    :goto_1
    int-to-byte v5, v4

    aput-byte v5, v3, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const/16 v5, 0x30

    if-ne v0, v5, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    .line 135
    :cond_1
    const/16 v5, 0x2a

    if-ne v0, v5, :cond_2

    const/16 v4, 0xb

    goto :goto_1

    .line 136
    :cond_2
    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    const/16 v4, 0xc

    goto :goto_1

    .line 137
    :cond_3
    const/4 v3, 0x0

    .line 140
    .end local v0    # "c":C
    .end local v3    # "result":[B
    .end local v4    # "val":I
    :cond_4
    return-object v3
.end method

.method public static toNBPCDAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "inputstr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 265
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 289
    .end local p0    # "inputstr":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 268
    .restart local p0    # "inputstr":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 271
    .local v0, "outputstr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 272
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "tFirst2":Ljava/lang/String;
    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwNbpcd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 287
    .end local v1    # "tFirst2":Ljava/lang/String;
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-ne v2, v4, :cond_2

    .line 288
    const-string v2, "SMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " outputstr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object p0, v0

    .line 289
    goto :goto_0

    .line 277
    .restart local v1    # "tFirst2":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportForcePlusCodeWith011()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getSize()I
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, "size":I
    add-int/lit8 v0, v0, 0x12

    .line 367
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_0

    .line 368
    add-int/lit8 v0, v0, 0x3

    .line 370
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 371
    add-int/lit8 v0, v0, 0x4

    .line 373
    :cond_1
    add-int/lit8 v0, v0, 0x8

    .line 375
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v1, :cond_2

    .line 376
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 380
    :goto_0
    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_3

    .line 381
    div-int/lit8 v1, v0, 0x8

    .line 383
    :goto_1
    return v1

    .line 378
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0

    .line 383
    :cond_3
    div-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public judgeAndPrependPlus()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportVzwPlusPrependRule()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "SMS"

    const-string v2, "address: "

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/HtcMessageHelper;->printPartialPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "digitmode/ton/numberplan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_3

    .line 339
    :cond_2
    :goto_0
    return-void

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "sPrecede":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    if-ne v1, v4, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    if-ne v1, v4, :cond_4

    .line 308
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index of plus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 313
    :cond_4
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_2

    const-string v1, "SMS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address after judgeAndPrependPlus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    .end local v0    # "sPrecede":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCtPrefixPlusSignToPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 328
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->isInternationalNumber()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/HtcMessageHelper;->isCdmaNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/HtcMessageHelper;->isPhoneNumberContainCountryCodeInCtList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "CdmaSmsAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ digitMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberPlan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", address=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
