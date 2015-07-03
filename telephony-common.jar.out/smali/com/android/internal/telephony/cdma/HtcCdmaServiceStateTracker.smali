.class public Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;
.super Ljava/lang/Object;
.source "HtcCdmaServiceStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 121
    return-void
.end method

.method protected getAirplaneModeSetting(Lcom/android/internal/telephony/PhoneBase;)I
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 31
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "airplaneMode":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->isStorageAreaAvaliable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 40
    invoke-static {}, Lcom/android/internal/telephony/PhoneBase;->htcRadioOnWhenStorageAreaNotAvaliable()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 43
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/HtcCdmaServiceStateTracker;->partialDisableUnderMultiPhone(Landroid/content/Context;)[Z

    move-result-object v2

    .line 45
    .local v2, "disableStatus":[Z
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 46
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-boolean v3, v2, v3

    if-eqz v3, :cond_1

    .line 47
    const/4 v0, 0x1

    .line 51
    .end local v2    # "disableStatus":[Z
    :cond_1
    return v0

    .line 40
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected logBooleanArray([Z)Ljava/lang/String;
    .locals 7
    .param p1, "array"    # [Z

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "arrayDump":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v5, "strBuf":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Z
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-boolean v2, v0, v3

    .line 105
    .local v2, "arrayItem":Z
    if-eqz v2, :cond_0

    const/16 v6, 0x31

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const/16 v6, 0x30

    goto :goto_1

    .line 107
    .end local v2    # "arrayItem":Z
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .end local v0    # "arr$":[Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "strBuf":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1
.end method

.method protected partialDisableUnderMultiPhone(Landroid/content/Context;)[Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 58
    const/4 v1, 0x0

    .line 61
    .local v1, "disableStatus":[Z
    sget v7, Lcom/android/internal/telephony/HtcTelephonyCapability;->BUILT_PHONE_CAPABILITIES:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isSingleModemDSDAdevice()Z

    move-result v7

    if-nez v7, :cond_4

    .line 74
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 75
    .local v5, "sp":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_4

    .line 76
    const/4 v7, 0x3

    new-array v1, v7, [Z

    .line 77
    const-string v7, "cdma_card_enabled"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    const/4 v7, 0x0

    aput-boolean v9, v1, v7

    .line 80
    :cond_0
    const-string v7, "slot1_card_enabled"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 81
    aput-boolean v9, v1, v9

    .line 83
    :cond_1
    const/4 v6, 0x0

    .line 84
    .local v6, "summary":Z
    move-object v0, v1

    .local v0, "arr$":[Z
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-boolean v3, v0, v2

    .line 85
    .local v3, "item":Z
    if-eqz v3, :cond_2

    .line 86
    const/4 v6, 0x1

    .line 84
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v3    # "item":Z
    :cond_3
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aput-boolean v6, v1, v7

    .line 94
    .end local v0    # "arr$":[Z
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    .end local v6    # "summary":Z
    :cond_4
    return-object v1
.end method
