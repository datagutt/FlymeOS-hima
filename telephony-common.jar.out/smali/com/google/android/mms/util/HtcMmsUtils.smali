.class public Lcom/google/android/mms/util/HtcMmsUtils;
.super Ljava/lang/Object;
.source "HtcMmsUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcMmsUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMmsGenericPdu(Landroid/content/Intent;)Lcom/google/android/mms/pdu/GenericPdu;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    const-string v3, "data"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 72
    .local v2, "pushData":[B
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 75
    :goto_0
    return-object v1

    .line 73
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v0, v2}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 74
    .local v0, "parser":Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    .line 75
    .local v1, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_0
.end method

.method private static getMmsOriginatingAddress(Lcom/google/android/mms/pdu/GenericPdu;)Ljava/lang/String;
    .locals 2
    .param p0, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    .line 53
    if-nez p0, :cond_0

    const-string v1, ""

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 55
    .local v0, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method private static getTencentMmsWapPushContent(Lcom/google/android/mms/pdu/GenericPdu;)Ljava/lang/String;
    .locals 12
    .param p0, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .prologue
    .line 87
    if-nez p0, :cond_1

    const-string v5, ""

    .line 120
    :cond_0
    :goto_0
    :sswitch_0
    return-object v5

    .line 88
    :cond_1
    const-string v5, ""

    .line 89
    .local v5, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v8

    .line 90
    .local v8, "type":I
    const-string v9, "HtcMmsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[wap]msg type> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sparse-switch v8, :sswitch_data_0

    .line 114
    :try_start_0
    const-string v9, "HtcMmsUtils"

    const-string v10, "parsing error with unrecognised PDU."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v4, v0

    .line 99
    .local v4, "nInd":Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v7

    .line 100
    .local v7, "tId":[B
    const/4 v3, 0x0

    .line 101
    .local v3, "id":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 102
    new-instance v3, Ljava/lang/String;

    .end local v3    # "id":Ljava/lang/String;
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V

    .line 104
    .restart local v3    # "id":Ljava/lang/String;
    :cond_2
    const-string v9, "HtcMmsUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tId> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 107
    .local v2, "encodedSbj":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v6, 0x0

    .line 108
    .local v6, "subject":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 110
    move-object v5, v6

    goto :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_1
        0x86 -> :sswitch_0
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isTencentBlockedMmsWapPush(Landroid/content/Intent;Lcom/android/internal/telephony/TencentSecurityManager;)Z
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "secureMgr"    # Lcom/android/internal/telephony/TencentSecurityManager;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/android/mms/util/HtcMmsUtils;->getMmsGenericPdu(Landroid/content/Intent;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 141
    .local v0, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    const/16 v8, 0x82

    if-ne v1, v8, :cond_0

    .line 142
    const-string v1, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v8

    invoke-virtual {p0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 144
    .local v2, "subId":J
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(J)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "optName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/util/HtcMmsUtils;->getMmsOriginatingAddress(Lcom/google/android/mms/pdu/GenericPdu;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/util/HtcMmsUtils;->getTencentMmsWapPushContent(Lcom/google/android/mms/pdu/GenericPdu;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "content":Ljava/lang/String;
    const/4 v7, 0x2

    .local v7, "msgType":I
    move-object v1, p1

    .line 148
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/TencentSecurityManager;->isBlockedMsg(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 150
    .end local v2    # "subId":J
    .end local v4    # "optName":Ljava/lang/String;
    .end local v5    # "phoneNumber":Ljava/lang/String;
    .end local v6    # "content":Ljava/lang/String;
    .end local v7    # "msgType":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
