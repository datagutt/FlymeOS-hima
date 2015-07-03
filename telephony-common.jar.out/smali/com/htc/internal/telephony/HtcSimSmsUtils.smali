.class public Lcom/htc/internal/telephony/HtcSimSmsUtils;
.super Ljava/lang/Object;
.source "HtcSimSmsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcSimSmsUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentCdmaMtSmsWith172Length(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "callbackNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, "addressObj":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/4 v2, 0x0

    .line 84
    .local v2, "callbackObj":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    .line 85
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 112
    :cond_1
    if-nez v1, :cond_4

    const/4 v14, 0x0

    :goto_0
    add-int/lit8 v15, v14, 0x1c

    if-nez v2, :cond_5

    const/4 v14, 0x0

    :goto_1
    add-int v10, v15, v14

    .line 116
    .local v10, "retainBytes":I
    rsub-int v4, v10, 0xac

    .line 117
    .local v4, "maxBytes":I
    mul-int/lit8 v14, v4, 0x8

    div-int/lit8 v5, v14, 0x7

    .line 119
    .local v5, "maxSeptets":I
    new-instance v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v12}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 120
    .local v12, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/cdma/sms/BearerData;->countAsciiSeptets(Ljava/lang/CharSequence;Z)I

    move-result v11

    .line 121
    .local v11, "septets":I
    const/4 v14, -0x1

    if-eq v11, v14, :cond_8

    .line 122
    iput v11, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 123
    if-le v11, v5, :cond_7

    .line 124
    rem-int v14, v11, v5

    if-nez v14, :cond_6

    .line 125
    div-int v14, v11, v5

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 126
    const/4 v14, 0x0

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 136
    :goto_2
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 153
    :goto_3
    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_a

    move v3, v5

    .line 156
    .local v3, "limit":I
    :goto_4
    const/4 v8, 0x0

    .line 157
    .local v8, "pos":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    .line 158
    .local v13, "textLen":I
    new-instance v9, Ljava/util/ArrayList;

    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-direct {v9, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v9, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    if-ge v8, v13, :cond_3

    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, "nextPos":I
    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    .line 163
    sub-int v14, v13, v8

    invoke-static {v3, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int v6, v8, v14

    .line 167
    :goto_6
    if-le v6, v8, :cond_2

    if-le v6, v13, :cond_c

    .line 168
    :cond_2
    const-string v14, "HtcSimSmsUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fragmentMtSmsWith172Length failed ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " >= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " or "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " >= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v6    # "nextPos":I
    :cond_3
    return-object v9

    .line 112
    .end local v3    # "limit":I
    .end local v4    # "maxBytes":I
    .end local v5    # "maxSeptets":I
    .end local v8    # "pos":I
    .end local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "retainBytes":I
    .end local v11    # "septets":I
    .end local v12    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .end local v13    # "textLen":I
    :cond_4
    invoke-static {v1}, Lcom/htc/internal/telephony/HtcSimSmsUtils;->getCdmaAddressFieldSize(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I

    move-result v14

    goto/16 :goto_0

    :cond_5
    invoke-static {v2}, Lcom/htc/internal/telephony/HtcSimSmsUtils;->getCdmaAddressFieldSize(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I

    move-result v14

    goto/16 :goto_1

    .line 128
    .restart local v4    # "maxBytes":I
    .restart local v5    # "maxSeptets":I
    .restart local v10    # "retainBytes":I
    .restart local v11    # "septets":I
    .restart local v12    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    div-int v14, v11, v5

    add-int/lit8 v14, v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 129
    rem-int v14, v11, v5

    sub-int v14, v5, v14

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 133
    :cond_7
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 134
    sub-int v14, v5, v11

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto/16 :goto_2

    .line 138
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    mul-int/lit8 v7, v14, 0x2

    .line 139
    .local v7, "octets":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 141
    if-le v7, v4, :cond_9

    .line 142
    add-int/lit8 v14, v4, -0x1

    add-int/2addr v14, v7

    div-int/2addr v14, v4

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 144
    iget v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/2addr v14, v4

    sub-int/2addr v14, v7

    div-int/lit8 v14, v14, 0x2

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 150
    :goto_7
    const/4 v14, 0x3

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto/16 :goto_3

    .line 147
    :cond_9
    const/4 v14, 0x1

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 148
    sub-int v14, v4, v7

    div-int/lit8 v14, v14, 0x2

    iput v14, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_7

    .end local v7    # "octets":I
    :cond_a
    move v3, v4

    .line 153
    goto/16 :goto_4

    .line 165
    .restart local v3    # "limit":I
    .restart local v6    # "nextPos":I
    .restart local v8    # "pos":I
    .restart local v9    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "textLen":I
    :cond_b
    div-int/lit8 v14, v3, 0x2

    sub-int v15, v13, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    add-int v6, v8, v14

    goto/16 :goto_6

    .line 172
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    move v8, v6

    .line 174
    goto/16 :goto_5
.end method

.method private static getCdmaAddressFieldSize(Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;)I
    .locals 3
    .param p0, "address"    # Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 192
    .local v0, "size":I
    add-int/lit8 v0, v0, 0x12

    .line 199
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_0

    .line 200
    add-int/lit8 v0, v0, 0x3

    .line 208
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 209
    add-int/lit8 v0, v0, 0x4

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x8

    .line 223
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v1, :cond_2

    .line 224
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 228
    :goto_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1

    .line 226
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getMessageFromIccEf(Lcom/android/internal/telephony/PhoneBase;I)[B
    .locals 7
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "index"    # I

    .prologue
    .line 48
    invoke-static {p0}, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->getSmsUtilsHandler(Lcom/android/internal/telephony/PhoneBase;)Lcom/htc/internal/telephony/HtcSmsUtilsHandler;

    move-result-object v2

    .line 50
    .local v2, "handler":Lcom/htc/internal/telephony/HtcSmsUtilsHandler;
    iget-object v5, v2, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 51
    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {v2, v4}, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 53
    .local v3, "response":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 54
    .local v1, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    if-nez v1, :cond_0

    .line 55
    const-string v4, "HtcSimSmsUtils"

    const-string v6, "getMessageFromIccEf - aborting, no icc card present."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v4, 0x0

    monitor-exit v5

    .line 68
    :goto_0
    return-object v4

    .line 59
    :cond_0
    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, p1, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    iget-object v4, v2, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    iget-object v4, v2, Lcom/htc/internal/telephony/HtcSmsUtilsHandler;->mSimSms:[B

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "HtcSimSmsUtils"

    const-string v6, "interrupted while trying to get Message from ICC"

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 66
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .end local v3    # "response":Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
