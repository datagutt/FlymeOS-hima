.class Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsUsageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortCodeCustUtils"
.end annotation


# instance fields
.field private mCustFree:[Ljava/lang/String;

.field private mCustPattern:[Ljava/lang/String;

.field private mCustPremium:[Ljava/lang/String;

.field private mCustStandard:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "shortCodeCustList"    # [Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 206
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 207
    .local v1, "custEntity":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->parseCustShortCode(Ljava/lang/String;)V

    .line 214
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "custEntity":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void

    .line 206
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "custEntity":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private merge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "genericShortCodes"    # Ljava/lang/String;
    .param p2, "custParams"    # [Ljava/lang/String;

    .prologue
    .line 265
    if-nez p2, :cond_0

    move-object v1, p1

    .line 315
    .end local p1    # "genericShortCodes":Ljava/lang/String;
    .local v1, "genericShortCodes":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 267
    .end local v1    # "genericShortCodes":Ljava/lang/String;
    .restart local p1    # "genericShortCodes":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_b

    aget-object v6, v0, v2

    .line 269
    .local v6, "param":Ljava/lang/String;
    const-string v10, "+"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 271
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 267
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 275
    :cond_3
    const-string v10, "-"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 276
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "shortCode":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 280
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 281
    const/4 p1, 0x0

    goto :goto_2

    .line 282
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 283
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 284
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 285
    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 286
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 287
    const/4 v3, -0x1

    .line 294
    .local v3, "index":I
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 295
    const/4 v10, -0x1

    if-ne v3, v10, :cond_9

    .line 308
    :cond_8
    :goto_3
    const/4 v10, -0x1

    if-eq v3, v10, :cond_1

    .line 309
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 298
    :cond_9
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "tmp":Ljava/lang/String;
    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 300
    .local v4, "leftBrackets":I
    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 302
    .local v7, "rightBrackets":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_a

    const/4 v10, -0x1

    if-eq v7, v10, :cond_8

    :cond_a
    const/4 v10, -0x1

    if-eq v4, v10, :cond_7

    if-le v7, v4, :cond_7

    goto :goto_3

    .end local v3    # "index":I
    .end local v4    # "leftBrackets":I
    .end local v6    # "param":Ljava/lang/String;
    .end local v7    # "rightBrackets":I
    .end local v8    # "shortCode":Ljava/lang/String;
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_b
    move-object v1, p1

    .line 315
    .end local p1    # "genericShortCodes":Ljava/lang/String;
    .restart local v1    # "genericShortCodes":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private parseCustShortCode(Ljava/lang/String;)V
    .locals 7
    .param p1, "custParam"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "paramList":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 224
    .local v3, "param":Ljava/lang/String;
    const-string v5, "free="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    const-string v5, "free"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustFree:[Ljava/lang/String;

    .line 223
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    const-string v5, "standard="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 227
    const-string v5, "standard"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustStandard:[Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_2
    const-string v5, "premium="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 229
    const-string v5, "premium"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustPremium:[Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_3
    const-string v5, "pattern="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const-string v5, "pattern"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustPattern:[Ljava/lang/String;

    goto :goto_1

    .line 234
    .end local v3    # "param":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public merge(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "genericShortCodes"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "SmsUsageMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "merge type :["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "free"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustFree:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    :cond_0
    :goto_0
    return-object p1

    .line 245
    :cond_1
    const-string v0, "standard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustStandard:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 247
    :cond_2
    const-string v0, "premium"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustPremium:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 249
    :cond_3
    const-string v0, "pattern"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->mCustPattern:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodeCustUtils;->merge(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
