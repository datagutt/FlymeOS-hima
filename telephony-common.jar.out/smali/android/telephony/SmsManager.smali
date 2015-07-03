.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/HtcIfSmsManager;


# static fields
.field private static final DEFAULT_SUB_ID:I = -0x3ea

.field public static final EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final MESSAGE_STATUS_READ:Ljava/lang/String; = "read"

.field public static final MESSAGE_STATUS_SEEN:Ljava/lang/String; = "seen"

.field public static final MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final MMS_ERROR_INVALID_APN:I = 0x2

.field public static final MMS_ERROR_IO_ERROR:I = 0x5

.field public static final MMS_ERROR_RETRY:I = 0x6

.field public static final MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final MMS_ERROR_UNSPECIFIED:I = 0x1

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_MAX:I = 0x8d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_OFFSET:I = 0x7d0

.field public static final RESULT_ERROR_SMS_FAILURE_CAUSE_SPEC:I = 0xff

.field public static final RESULT_ERROR_SMS_FAILURE_EXTRA_CAUSE_FDN:I = 0x100

.field public static final RESULT_ERROR_SMS_FAILURE_RETRY_SEND:I = 0x101

.field public static final SMS_TYPE_INCOMING:I = 0x0

.field public static final SMS_TYPE_OUTGOING:I = 0x1

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "SmsManager"

.field private static final sInstance:Landroid/telephony/SmsManager;

.field private static final sLockObject:Ljava/lang/Object;

.field private static final sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 87
    new-instance v0, Landroid/telephony/SmsManager;

    const-wide/16 v2, -0x3ea

    invoke-direct {v0, v2, v3}, Landroid/telephony/SmsManager;-><init>(J)V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    iput-wide p1, p0, Landroid/telephony/SmsManager;->mSubId:J

    .line 829
    return-void
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1598
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;
    .locals 9
    .param p1, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1612
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1616
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 1617
    .local v6, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6, p1, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(J)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v3, 0x1

    .line 1620
    .local v3, "isCdmaFormat":Z
    :goto_0
    if-eqz p0, :cond_2

    .line 1621
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1622
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1623
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 1625
    .local v1, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 1626
    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getSimSmsIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BZ)Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 1627
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-eqz v5, :cond_0

    .line 1628
    iget-object v7, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput-boolean v3, v7, Lcom/android/internal/telephony/SmsMessageBase;->isCdmaFormat:Z

    .line 1629
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1617
    .end local v0    # "count":I
    .end local v1    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v2    # "i":I
    .end local v3    # "isCdmaFormat":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1634
    .restart local v3    # "isCdmaFormat":Z
    :cond_2
    return-object v4
.end method

.method public static getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1121
    const/4 v2, 0x0

    .line 1124
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1125
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1126
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1137
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1128
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 803
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static getDefaultSmsSubId()J
    .locals 5

    .prologue
    const-wide/16 v2, -0x3ea

    .line 1696
    const/4 v1, 0x0

    .line 1698
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v4, "isms"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1699
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 1703
    :goto_0
    return-wide v2

    .line 1700
    :catch_0
    move-exception v0

    .line 1701
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1703
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private static getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .prologue
    .line 862
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .locals 3

    .prologue
    .line 854
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 855
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-nez v0, :cond_0

    .line 856
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 858
    :cond_0
    return-object v0
.end method

.method static getNliId(Ljava/util/Locale;)I
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 2724
    if-nez p0, :cond_0

    .line 2725
    const-string v2, "SmsManager"

    const-string v3, "getNliId get null locale"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :goto_0
    :pswitch_0
    return v1

    .line 2729
    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2730
    .local v0, "sLanguage":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2731
    const-string v2, "SmsManager"

    const-string v3, "getNliId get null language"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2737
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 2739
    goto :goto_0

    .line 2737
    :sswitch_0
    const-string v4, "tr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "es"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :sswitch_2
    const-string v4, "pt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_1

    :pswitch_2
    move v1, v3

    .line 2741
    goto :goto_0

    .line 2737
    nop

    :sswitch_data_0
    .sparse-switch
        0xcae -> :sswitch_1
        0xe04 -> :sswitch_2
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getSmsManagerForSubscriber(J)Landroid/telephony/SmsManager;
    .locals 6
    .param p0, "subId"    # J

    .prologue
    .line 816
    sget-object v2, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v2

    .line 817
    :try_start_0
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SmsManager;

    .line 818
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    if-nez v0, :cond_0

    .line 819
    const-string v1, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmsManagerForSubscriber : new SmsManager for sub ID : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    new-instance v0, Landroid/telephony/SmsManager;

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    invoke-direct {v0, p0, p1}, Landroid/telephony/SmsManager;-><init>(J)V

    .line 821
    .restart local v0    # "smsManager":Landroid/telephony/SmsManager;
    sget-object v1, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    :cond_0
    monitor-exit v2

    return-object v0

    .line 824
    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "permission"    # I

    .prologue
    .line 2190
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2191
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2193
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 2195
    .local v0, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2196
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2, p4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2198
    :cond_0
    return-void
.end method

.method private sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 14
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z

    .prologue
    .line 776
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 777
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v1 .. v13}, Lcom/android/internal/telephony/ISms;->sendRawPduWithBundleForSubscriber(JLjava/lang/String;[B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public acknowledgeSendRequest(ZII)Z
    .locals 3
    .param p1, "sendAck"    # Z
    .param p2, "result"    # I
    .param p3, "messageId"    # I

    .prologue
    .line 1735
    const/4 v1, 0x0

    .line 1738
    .local v1, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1739
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1740
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->kddiAcknowledgeSendRequest(ZII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1746
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1742
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public addMultimediaMessageDraft(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2520
    if-nez p1, :cond_0

    .line 2521
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2524
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2525
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2526
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->addMultimediaMessageDraft(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2532
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2529
    :catch_0
    move-exception v1

    .line 2532
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 2499
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2500
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2501
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->addTextMessageDraft(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2506
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2503
    :catch_0
    move-exception v1

    .line 2506
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public archiveStoredConversation(JZ)Z
    .locals 3
    .param p1, "conversationId"    # J
    .param p3, "archived"    # Z

    .prologue
    .line 2476
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2477
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2478
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/IMms;->archiveStoredConversation(Ljava/lang/String;JZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2484
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2481
    :catch_0
    move-exception v1

    .line 2484
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copyMessageToIcc(Z[B[BI)Z
    .locals 9
    .param p1, "isCdmaFormat"    # Z
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "status"    # I

    .prologue
    .line 910
    const/4 v0, 0x0

    .line 912
    .local v0, "success":Z
    if-nez p3, :cond_0

    .line 913
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 917
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 918
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 920
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfWithTypeForSubscriber(JLjava/lang/String;ZI[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 926
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v0

    .line 923
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 9
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 880
    const/4 v8, 0x0

    .line 882
    .local v8, "success":Z
    if-nez p2, :cond_0

    .line 883
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 888
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p3

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(JLjava/lang/String;I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 903
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v8

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in copyMessageToIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 894
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccExt([B[BII)I
    .locals 2
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I
    .param p4, "phoneType"    # I

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "copyMessageToIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyMessageToIccForResult(Z[B[BI)I
    .locals 9
    .param p1, "isCdmaFormat"    # Z
    .param p2, "smsc"    # [B
    .param p3, "pdu"    # [B
    .param p4, "status"    # I

    .prologue
    .line 968
    const/4 v8, -0x1

    .line 970
    .local v8, "index":I
    if-nez p3, :cond_0

    .line 971
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 975
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 976
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 977
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move v4, p1

    move v5, p4

    move-object v6, p3

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultWithTypeForSubscriber(JZI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 988
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v8

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in copyMessageToIccForResult(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 979
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyMessageToIccForResult([B[BI)I
    .locals 8
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .prologue
    .line 944
    const/4 v7, -0x1

    .line 946
    .local v7, "index":I
    if-nez p2, :cond_0

    .line 947
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "pdu is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    :cond_0
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 952
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 953
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForResultForSubscriber(JI[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 964
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v7

    .line 958
    :catch_0
    move-exception v0

    .line 959
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in copyMessageToIccForResult()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 955
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 9
    .param p1, "messageIndex"    # I

    .prologue
    .line 1003
    const/4 v8, 0x0

    .line 1004
    .local v8, "success":Z
    const/16 v2, 0xaf

    new-array v7, v2, [B

    .line 1005
    .local v7, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v7, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1008
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1009
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1011
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1024
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in deleteMessageFromIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1015
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(ZI)Z
    .locals 10
    .param p1, "isCdmaFormat"    # Z
    .param p2, "messageIndex"    # I

    .prologue
    .line 1029
    const/4 v9, 0x0

    .line 1030
    .local v9, "success":Z
    const/16 v2, 0xaf

    new-array v8, v2, [B

    .line 1031
    .local v8, "pdu":[B
    const/4 v2, -0x1

    invoke-static {v8, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 1034
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1035
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1037
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1049
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v9

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in deleteMessageFromIcc(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1040
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIccExt(II)Z
    .locals 2
    .param p1, "messageIndex"    # I
    .param p2, "phoneType"    # I

    .prologue
    .line 1518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deleteMessageFromIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteStoredConversation(J)Z
    .locals 3
    .param p1, "conversationId"    # J

    .prologue
    .line 2423
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2424
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2425
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->deleteStoredConversation(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2431
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2428
    :catch_0
    move-exception v1

    .line 2431
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteStoredMessage(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 2398
    if-nez p1, :cond_0

    .line 2399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2402
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2403
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2404
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->deleteStoredMessage(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2409
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2406
    :catch_0
    move-exception v1

    .line 2409
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1221
    const/4 v1, 0x0

    .line 1224
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1225
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1234
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1230
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public disableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1296
    const/4 v1, 0x0

    .line 1298
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1299
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1302
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1303
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1305
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1312
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1308
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_0
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessageExt(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    if-nez p1, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1410
    :cond_0
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentTextExt(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty MMS location URL"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_0
    if-nez p3, :cond_1

    .line 2219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :cond_1
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2223
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_2

    .line 2238
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2226
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_2
    const-string v0, "com.android.phone"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, p3, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2229
    const-string v0, "android.provider.Telephony.MMS_DOWNLOAD"

    const/4 v2, 0x2

    invoke-direct {p0, p1, p3, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2233
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->downloadMessage(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2235
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableCellBroadcast(I)Z
    .locals 4
    .param p1, "messageIdentifier"    # I

    .prologue
    .line 1188
    const/4 v1, 0x0

    .line 1191
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1192
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastForSubscriber(JI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1201
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 1197
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public enableCellBroadcastRange(II)Z
    .locals 4
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I

    .prologue
    .line 1257
    const/4 v1, 0x0

    .line 1259
    .local v1, "success":Z
    if-ge p2, p1, :cond_0

    .line 1260
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "endMessageId < startMessageId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1263
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1264
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(JII)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1273
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return v1

    .line 1269
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllMessagesFromIccBySubId()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1150
    const/4 v2, 0x0

    .line 1153
    .local v2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1154
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1155
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v5, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(JLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1167
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;J)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getAllMessagesFromIcc()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1157
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getAllMessagesFromIccExt(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getAllMessagesFromIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAutoPersisting()Z
    .locals 2

    .prologue
    .line 2688
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2689
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2690
    invoke-interface {v0}, Lcom/android/internal/telephony/IMms;->getAutoPersisting()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2695
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2692
    :catch_0
    move-exception v1

    .line 2695
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierConfigValues()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 2705
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2706
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2707
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/IMms;->getCarrierConfigValues(J)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2712
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2709
    :catch_0
    move-exception v1

    .line 2712
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCarrierID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2039
    const/4 v0, 0x0

    .line 2041
    .local v0, "response":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2042
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2043
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getCarrierID()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2048
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2045
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p1, "originatorAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .param p7, "refNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2801
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2802
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 2803
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ISms;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 2804
    .local v11, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2805
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v11, :cond_1

    .line 2806
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 2807
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SmsRawData;

    .line 2808
    .local v8, "data":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual {v8}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2806
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2813
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v8    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v9    # "i":I
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v11    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2817
    :cond_0
    const/4 v10, 0x0

    :cond_1
    return-object v10
.end method

.method public getExtIccSmsPhoneType()I
    .locals 2

    .prologue
    .line 1584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getExtIccSmsPhoneType, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIccSmsCount()I
    .locals 2

    .prologue
    .line 1577
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getIccSmsCount, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIccSmsCountExt(I)I
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getIccSmsCountExt, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImsSmsFormat()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1675
    const-string v0, "unknown"

    .line 1677
    .local v0, "format":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1678
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1680
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1686
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1683
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getMessageFromSim(I)[B
    .locals 6
    .param p1, "nIndexOnSim"    # I

    .prologue
    .line 1324
    const/4 v1, 0x0

    .line 1327
    .local v1, "record":[B
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1328
    .local v2, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1329
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, p1}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfForSubscriber(JI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1341
    .end local v2    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v3, "SmsManager"

    const-string v4, "Get NullPointerException in getMessageFromSim()"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1331
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public getMessageFromSimExt(II)[B
    .locals 2
    .param p1, "nIndexOnSim"    # I
    .param p2, "phonetype"    # I

    .prologue
    .line 2091
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getMessageFromSimExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMessageFromSimWithType(ZI)[B
    .locals 4
    .param p1, "bIsCdmaFormat"    # Z
    .param p2, "nIndexOnSim"    # I

    .prologue
    .line 1346
    const/4 v0, 0x0

    .line 1349
    .local v0, "record":[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1350
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1351
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->getMessageFromIccEfWithTypeForSubscriber(JZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1357
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1353
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSC()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1756
    const/4 v0, 0x0

    .line 1758
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1759
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1760
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSMSCForSubscriber(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1766
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1762
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSCExt(I)Ljava/lang/String;
    .locals 2
    .param p1, "phonetype"    # I

    .prologue
    .line 2082
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getSMSCExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubId()J
    .locals 4

    .prologue
    .line 843
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    const-wide/16 v2, -0x3ea

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 844
    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubId()J

    move-result-wide v0

    .line 846
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/telephony/SmsManager;->mSubId:J

    goto :goto_0
.end method

.method public getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "timeMilli"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "priority"    # I
    .param p6, "callback"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 2861
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2862
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 2863
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->getSubmitPduForCdmaSimSms(Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 2864
    .local v10, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2865
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    if-eqz v10, :cond_1

    .line 2866
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 2867
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SmsRawData;

    .line 2868
    .local v7, "data":Lcom/android/internal/telephony/SmsRawData;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2866
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2873
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local v7    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v8    # "i":I
    .end local v9    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v10    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catch_0
    move-exception v1

    .line 2877
    :cond_0
    const/4 v9, 0x0

    :cond_1
    return-object v9
.end method

.method public getTestBCSMS()[I
    .locals 4

    .prologue
    .line 2067
    const/4 v0, 0x0

    .line 2069
    .local v0, "response":[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2070
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2071
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getTestBCSMSForSubscriber(J)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2076
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2073
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public htcSendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V
    .locals 0
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z

    .prologue
    .line 786
    invoke-direct/range {p0 .. p6}, Landroid/telephony/SmsManager;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)V

    .line 787
    return-void
.end method

.method public htcSendRawPduExt([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZI)V
    .locals 2
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p5, "bFirstOfAll"    # Z
    .param p6, "bLastOfAll"    # Z
    .param p7, "phoneType"    # I

    .prologue
    .line 793
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "htcSendRawPduExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public importMultimediaMessage(Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    .locals 9
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "timestampSecs"    # J
    .param p5, "seen"    # Z
    .param p6, "read"    # Z

    .prologue
    .line 2371
    if-nez p1, :cond_0

    .line 2372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2375
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2376
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2377
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IMms;->importMultimediaMessage(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2383
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v1

    .line 2380
    :catch_0
    move-exception v1

    .line 2383
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public importTextMessage(Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "timestampMillis"    # J
    .param p6, "seen"    # Z
    .param p7, "read"    # Z

    .prologue
    .line 2338
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2339
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_0

    .line 2340
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/IMms;->importTextMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2346
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-object v0

    .line 2343
    :catch_0
    move-exception v0

    .line 2346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 287
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    :try_start_0
    const-string v0, "isms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 294
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(J[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_1
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isFdnEnabled()Z
    .locals 4

    .prologue
    .line 2888
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2889
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2890
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/ISms;->isFdnEnabledForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2895
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return v1

    .line 2892
    :catch_0
    move-exception v1

    .line 2895
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isImsSmsSupported()Z
    .locals 4

    .prologue
    .line 1648
    const/4 v0, 0x0

    .line 1650
    .local v0, "boSupported":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1651
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1653
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1659
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1656
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public isSMSPromptEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1714
    const/4 v1, 0x0

    .line 1716
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1717
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1721
    :goto_0
    return v2

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 1720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1721
    .local v0, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public queryBCSMS(II)[I
    .locals 1
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 2007
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestGetBCSMSServiceEntry(II)[I
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1994
    const/4 v0, 0x0

    .line 1996
    .local v0, "response":[I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1997
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1998
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceEntryForSubscriber(JII)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2003
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 2000
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceLabel(II)Landroid/os/Bundle;
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 1981
    const/4 v0, 0x0

    .line 1983
    .local v0, "response":Landroid/os/Bundle;
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1984
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1985
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceLabelForSubscriber(JII)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1990
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v0

    .line 1987
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public requestGetBCSMSServiceNumber()I
    .locals 4

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1970
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1971
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1972
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->requestGetBCSMSServiceNumberForSubscriber(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1977
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 1974
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public sendCDMATextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 333
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendCDMATextMessage, AP should not call this dropped API!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_2

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 709
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendDataMessageExt(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p7, "phoneType"    # I

    .prologue
    .line 1483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendDataMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2168
    if-nez p2, :cond_0

    .line 2169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Uri contentUri null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2172
    :cond_0
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2173
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v1, :cond_1

    .line 2186
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return-void

    .line 2176
    .restart local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    const-string v0, "com.android.phone"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 2178
    const-string v0, "android.provider.Telephony.MMS_SEND"

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v0, v2}, Landroid/telephony/SmsManager;->grantCarrierPackageUriPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)V

    .line 2181
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/IMms;->sendMessage(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2183
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2905
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2909
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2910
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2914
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2915
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/ISms;->sendMultipartDataForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2920
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2917
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p7, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 723
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 728
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 732
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 733
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    const v0, 0xffff

    and-int v7, p3, v0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartDataWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendMultipartDataMessageExt(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "S",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 746
    .local p4, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p5, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p6, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendMultipartDataMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 474
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "nli"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 549
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 550
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "NLI"

    invoke-virtual {v6, v0, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 551
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 553
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 22
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 559
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    :cond_0
    if-nez p6, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v10, 0x401c000000000000L    # 7.0

    cmpl-double v4, v4, v10

    if-ltz v4, :cond_3

    .line 564
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 565
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    .line 566
    .local v18, "r":Landroid/content/res/Resources;
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v16

    .line 567
    .local v16, "nli":I
    if-lez v16, :cond_3

    .line 569
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportDefaultTableNoNli()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 570
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .local v19, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 572
    .local v17, "part":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 573
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 576
    .end local v17    # "part":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v5, v6, v10}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 577
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 578
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "nli":I
    .end local v18    # "r":Landroid/content/res/Resources;
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const/16 v20, 0x0

    .line 591
    .local v20, "separate":Z
    if-eqz p6, :cond_4

    const-string v4, "separate_msg"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 593
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportEmsForSubscriber(J)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v20, :cond_7

    .line 596
    :try_start_0
    const-string v4, "SmsManager"

    const-string v5, "General sendMultipartText"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 599
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_5
    :goto_2
    return-void

    .line 581
    .end local v20    # "separate":Z
    .restart local v16    # "nli":I
    .restart local v18    # "r":Landroid/content/res/Resources;
    :cond_6
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 582
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 607
    .end local v16    # "nli":I
    .end local v18    # "r":Landroid/content/res/Resources;
    .restart local v20    # "separate":Z
    :cond_7
    const-string v4, "SmsManager"

    const-string v5, "Sprint rule, separate to separate ones"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 609
    .local v21, "size":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v14, v0, :cond_5

    .line 610
    const/4 v8, 0x0

    .line 611
    .local v8, "sentIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 612
    .local v9, "deliveryIntent":Landroid/app/PendingIntent;
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_8

    .line 613
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 615
    .restart local v8    # "sentIntent":Landroid/app/PendingIntent;
    :cond_8
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v14, :cond_9

    .line 616
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 621
    .restart local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_9
    const-string v7, ""

    .line 623
    .local v7, "body":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "body":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 625
    .restart local v7    # "body":Ljava/lang/String;
    const/4 v2, 0x0

    .line 626
    .local v2, "bFirstOfAll":Z
    const/4 v13, 0x0

    .line 628
    .local v13, "bLastOfAll":Z
    if-eqz p6, :cond_a

    .line 629
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 630
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 632
    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/4 v4, 0x1

    if-ne v13, v4, :cond_e

    .line 633
    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_b

    .line 634
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a
    :goto_4
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    .line 658
    invoke-virtual/range {v4 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 609
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 636
    :cond_b
    if-nez v14, :cond_c

    .line 637
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 639
    :cond_c
    add-int/lit8 v4, v21, -0x1

    if-ne v14, v4, :cond_d

    .line 640
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 641
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 643
    :cond_d
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 646
    :cond_e
    if-nez v14, :cond_f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 647
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 649
    :cond_f
    add-int/lit8 v4, v21, -0x1

    if-ne v14, v4, :cond_10

    const/4 v4, 0x1

    if-ne v13, v4, :cond_10

    .line 650
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 651
    const-string v4, "LAST_SMS"

    const/4 v5, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 653
    :cond_10
    const-string v4, "FIRST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 654
    const-string v4, "LAST_SMS"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_4

    .line 603
    .end local v2    # "bFirstOfAll":Z
    .end local v7    # "body":Ljava/lang/String;
    .end local v8    # "sentIntent":Landroid/app/PendingIntent;
    .end local v9    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v13    # "bLastOfAll":Z
    .end local v14    # "i":I
    .end local v21    # "size":I
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method public sendMultipartTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .param p7, "phoneType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1449
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendMultipartTextMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendStoredMultimediaMessage(Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .locals 8
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "configOverrides"    # Landroid/os/Bundle;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2639
    if-nez p1, :cond_0

    .line 2640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2643
    :cond_0
    :try_start_0
    const-string v0, "imms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v1

    .line 2644
    .local v1, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v1, :cond_1

    .line 2645
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/IMms;->sendStoredMessage(JLjava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2651
    .end local v1    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    :goto_0
    return-void

    .line 2648
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredMultipartTextMessage(Landroid/net/Uri;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2611
    .local p3, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez p1, :cond_0

    .line 2612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2615
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2616
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredMultipartText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendStoredTextMessage(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;
    .param p4, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2564
    if-nez p1, :cond_0

    .line 2565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2568
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2569
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->sendStoredText(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2574
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_0
    return-void

    .line 2571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 265
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 366
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 379
    :cond_0
    if-nez p6, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->getSenseVersion()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x401c000000000000L    # 7.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportNli()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 381
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 382
    .local v13, "r":Landroid/content/res/Resources;
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v4}, Landroid/telephony/SmsManager;->getNliId(Ljava/util/Locale;)I

    move-result v2

    .line 383
    .local v2, "nli":I
    if-lez v2, :cond_1

    .line 385
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportDefaultTableNoNli()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 386
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 387
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 388
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 400
    .end local v2    # "nli":I
    .end local v13    # "r":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 401
    .local v3, "iccISms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v4

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/ISms;->sendTextWithBundleForSubscriber(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v3    # "iccISms":Lcom/android/internal/telephony/ISms;
    :goto_1
    return-void

    .line 391
    .restart local v2    # "nli":I
    .restart local v13    # "r":Landroid/content/res/Resources;
    :cond_2
    new-instance p6, Landroid/os/Bundle;

    .end local p6    # "bundle":Landroid/os/Bundle;
    invoke-direct/range {p6 .. p6}, Landroid/os/Bundle;-><init>()V

    .line 392
    .restart local p6    # "bundle":Landroid/os/Bundle;
    const-string v4, "NLI"

    move-object/from16 v0, p6

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 403
    .end local v2    # "nli":I
    .end local v13    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public sendTextMessageExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "bundle"    # Landroid/os/Bundle;
    .param p7, "phoneType"    # I

    .prologue
    .line 1392
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sendTextMessageExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoPersisting(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2667
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2668
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_0

    .line 2669
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/IMms;->setAutoPersisting(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2674
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2671
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setBCSMS(II)I
    .locals 4
    .param p1, "funccode"    # I
    .param p2, "index"    # I

    .prologue
    .line 2024
    const/4 v0, 0x0

    .line 2026
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2027
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2028
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->setBCSMSForSubscriber(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2033
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 2030
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setCBChannel(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mode"    # Ljava/lang/Boolean;
    .param p2, "msgId"    # Ljava/lang/String;
    .param p3, "dsc"    # Ljava/lang/String;

    .prologue
    .line 2772
    const-string v2, "SmsManager"

    const-string v3, "setCBChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2774
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2775
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2776
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->setCSCBForSubscriber(JZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2781
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 2778
    :catch_0
    move-exception v0

    .line 2779
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "setCBChannel RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setExtIccSmsPhoneType(I)V
    .locals 2
    .param p1, "phoneType"    # I

    .prologue
    .line 1557
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setExtIccSmsPhoneType, not support this API at L!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSMSC(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1790
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1791
    .local v0, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1792
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/telephony/ISms;->setSMSCForSubscriber(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1797
    .end local v0    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1794
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setSMSCExt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "phonetype"    # I

    .prologue
    .line 2086
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setSMSCExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTestBCSMS(II)I
    .locals 4
    .param p1, "kddiTestData"    # I
    .param p2, "makerData"    # I

    .prologue
    .line 2054
    const/4 v0, 0x0

    .line 2056
    .local v0, "response":I
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2057
    .local v1, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 2058
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->setTestBCSMSForSubscriber(JII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2063
    .end local v1    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v0

    .line 2060
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public syncCmasServiceTable()Landroid/os/Bundle;
    .locals 24

    .prologue
    .line 1805
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1807
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v21, "SmsManager"

    const-string v22, "syncCmasServiceTable"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    const/16 v19, 0x0

    .line 1812
    .local v19, "responses":[I
    :try_start_0
    const-string v21, "isms"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v20

    .line 1813
    .local v20, "simISms":Lcom/android/internal/telephony/ISms;
    if-eqz v20, :cond_0

    .line 1814
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ISms;->getCdmaBroadcastConfigForSubscriber(J)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1821
    .end local v20    # "simISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_2

    .line 1822
    :cond_1
    const-string v21, "SmsManager"

    const-string v22, "syncCmasServiceTable get null data from RIL request"

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v4, 0x0

    .line 1903
    .end local v4    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-object v4

    .line 1827
    .restart local v4    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/16 v21, 0x0

    aget v18, v19, v21

    .line 1828
    .local v18, "mBCSMSServiceNumber":I
    sget-boolean v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v21, :cond_3

    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getServiceNumber: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    :cond_3
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v22, v18, 0x3

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 1832
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "syncCmasServiceTable get "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " data, it\'s not enough"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const/4 v4, 0x0

    goto :goto_1

    .line 1838
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/MessageCustFlag;->isSupportCdmaCmas4100()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1839
    const/4 v5, 0x5

    .line 1843
    .local v5, "categoryNumber":I
    :goto_2
    new-array v0, v5, [I

    move-object/from16 v17, v0

    .line 1844
    .local v17, "mBCSMSServiceID":[I
    new-array v14, v5, [I

    .line 1845
    .local v14, "mBCSMSLanguage":[I
    new-array v0, v5, [I

    move-object/from16 v16, v0

    .line 1846
    .local v16, "mBCSMSSelect":[I
    new-array v11, v5, [I

    .line 1847
    .local v11, "mBCSMSAlert":[I
    new-array v15, v5, [I

    .line 1848
    .local v15, "mBCSMSMaxMessages":[I
    new-array v13, v5, [I

    .line 1849
    .local v13, "mBCSMSLabelEncode":[I
    new-array v12, v5, [Ljava/lang/String;

    .line 1852
    .local v12, "mBCSMSLabel":[Ljava/lang/String;
    move/from16 v0, v18

    new-array v8, v0, [I

    .line 1853
    .local v8, "configServiceID":[I
    move/from16 v0, v18

    new-array v6, v0, [I

    .line 1854
    .local v6, "configLanguage":[I
    move/from16 v0, v18

    new-array v7, v0, [I

    .line 1857
    .local v7, "configSelect":[I
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_3
    move/from16 v0, v18

    if-ge v9, v0, :cond_6

    .line 1858
    mul-int/lit8 v21, v9, 0x3

    add-int/lit8 v21, v21, 0x1

    aget v21, v19, v21

    aput v21, v8, v9

    .line 1859
    mul-int/lit8 v21, v9, 0x3

    add-int/lit8 v21, v21, 0x2

    aget v21, v19, v21

    aput v21, v6, v9

    .line 1860
    mul-int/lit8 v21, v9, 0x3

    add-int/lit8 v21, v21, 0x3

    aget v21, v19, v21

    aput v21, v7, v9

    .line 1857
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1841
    .end local v5    # "categoryNumber":I
    .end local v6    # "configLanguage":[I
    .end local v7    # "configSelect":[I
    .end local v8    # "configServiceID":[I
    .end local v9    # "index":I
    .end local v11    # "mBCSMSAlert":[I
    .end local v12    # "mBCSMSLabel":[Ljava/lang/String;
    .end local v13    # "mBCSMSLabelEncode":[I
    .end local v14    # "mBCSMSLanguage":[I
    .end local v15    # "mBCSMSMaxMessages":[I
    .end local v16    # "mBCSMSSelect":[I
    .end local v17    # "mBCSMSServiceID":[I
    :cond_5
    const/4 v5, 0x4

    .restart local v5    # "categoryNumber":I
    goto :goto_2

    .line 1864
    .restart local v6    # "configLanguage":[I
    .restart local v7    # "configSelect":[I
    .restart local v8    # "configServiceID":[I
    .restart local v9    # "index":I
    .restart local v11    # "mBCSMSAlert":[I
    .restart local v12    # "mBCSMSLabel":[Ljava/lang/String;
    .restart local v13    # "mBCSMSLabelEncode":[I
    .restart local v14    # "mBCSMSLanguage":[I
    .restart local v15    # "mBCSMSMaxMessages":[I
    .restart local v16    # "mBCSMSSelect":[I
    .restart local v17    # "mBCSMSServiceID":[I
    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_a

    .line 1865
    add-int/lit16 v0, v9, 0x1000

    move/from16 v21, v0

    aput v21, v17, v9

    .line 1866
    const/16 v21, 0x0

    aput v21, v14, v9

    .line 1867
    const/16 v21, 0x0

    aput v21, v16, v9

    .line 1870
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    move/from16 v0, v18

    if-ge v10, v0, :cond_7

    .line 1871
    aget v21, v8, v10

    aget v22, v17, v9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 1872
    aget v21, v6, v10

    aput v21, v14, v9

    .line 1873
    aget v21, v7, v10

    aput v21, v16, v9

    .line 1878
    :cond_7
    const/16 v21, 0x0

    aput v21, v11, v9

    .line 1879
    const/16 v21, 0x0

    aput v21, v15, v9

    .line 1880
    const/16 v21, 0x0

    aput v21, v13, v9

    .line 1881
    const-string v21, ""

    aput-object v21, v12, v9

    .line 1883
    sget-boolean v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v21, :cond_8

    .line 1884
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSServiceID["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v17, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSLanguage["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v14, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSSelect["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v16, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSAlert["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v11, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSMaxMessages["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v15, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSLabelEncode["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget v23, v13, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const-string v21, "SmsManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mBCSMSLabel["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    aget-object v23, v12, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1870
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 1894
    .end local v10    # "j":I
    :cond_a
    const-string v21, "service_number"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1895
    const-string v21, "service_id"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1896
    const-string v21, "language"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1897
    const-string v21, "select"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1899
    const-string v21, "alert"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1900
    const-string v21, "max_messages"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1901
    const-string v21, "label_encode"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1902
    const-string v21, "label"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1816
    .end local v5    # "categoryNumber":I
    .end local v6    # "configLanguage":[I
    .end local v7    # "configSelect":[I
    .end local v8    # "configServiceID":[I
    .end local v9    # "index":I
    .end local v11    # "mBCSMSAlert":[I
    .end local v12    # "mBCSMSLabel":[Ljava/lang/String;
    .end local v13    # "mBCSMSLabelEncode":[I
    .end local v14    # "mBCSMSLanguage":[I
    .end local v15    # "mBCSMSMaxMessages":[I
    .end local v16    # "mBCSMSSelect":[I
    .end local v17    # "mBCSMSServiceID":[I
    .end local v18    # "mBCSMSServiceNumber":I
    :catch_0
    move-exception v21

    goto/16 :goto_0
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 9
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .prologue
    .line 1067
    const/4 v8, 0x0

    .line 1070
    .local v8, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1071
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1073
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(JLjava/lang/String;II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1086
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v8

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    const-string v3, "Get NullPointerException in updateMessageOnIcc()"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1077
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIcc(ZII[B)Z
    .locals 10
    .param p1, "isCdmaFormat"    # Z
    .param p2, "messageIndex"    # I
    .param p3, "newStatus"    # I
    .param p4, "pdu"    # [B

    .prologue
    .line 1090
    const/4 v9, 0x0

    .line 1093
    .local v9, "success":Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 1094
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 1096
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfWithTypeForSubscriber(JLjava/lang/String;ZII[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 1108
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v9

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v2, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get NullPointerException in updateMessageOnIcc(isCdmaFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 1099
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public updateMessageOnIccExt(II[BI)Z
    .locals 2
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B
    .param p4, "phoneType"    # I

    .prologue
    .line 1537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "updateMessageOnIccExt, please follow L Dual SIM solution!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMmsDownloadStatus(Landroid/content/Context;IILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "status"    # I
    .param p4, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2308
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2309
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2319
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2312
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/android/internal/telephony/IMms;->updateMmsDownloadStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p4, :cond_0

    .line 2317
    const/4 v1, 0x2

    invoke-virtual {p1, p4, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2313
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateMmsSendStatus(Landroid/content/Context;I[BILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageRef"    # I
    .param p3, "pdu"    # [B
    .param p4, "status"    # I
    .param p5, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 2275
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2276
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-nez v0, :cond_1

    .line 2286
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_0
    :goto_0
    return-void

    .line 2279
    .restart local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :cond_1
    invoke-interface {v0, p2, p3, p4}, Lcom/android/internal/telephony/IMms;->updateMmsSendStatus(I[BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_1
    if-eqz p5, :cond_0

    .line 2284
    const/4 v1, 0x1

    invoke-virtual {p1, p5, v1}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    goto :goto_0

    .line 2280
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public updateNvItem()V
    .locals 2

    .prologue
    .line 1773
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1774
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 1775
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->updateNvItem()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 1777
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateSimSmsAsRead(I)Z
    .locals 3
    .param p1, "messageIndex"    # I

    .prologue
    .line 2830
    const/4 v1, 0x0

    .line 2833
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 2834
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 2835
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Lcom/android/internal/telephony/ISms;->updateSimSmsAsRead(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2842
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 2838
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateSmsSendStatus(IZ)V
    .locals 4
    .param p1, "messageRef"    # I
    .param p2, "success"    # Z

    .prologue
    .line 319
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 320
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Lcom/android/internal/telephony/ISms;->updateSmsSendStatusForSubscriber(JIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public updateStoredMessageStatus(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;
    .param p2, "statusValues"    # Landroid/content/ContentValues;

    .prologue
    .line 2445
    if-nez p1, :cond_0

    .line 2446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty message URI"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2449
    :cond_0
    :try_start_0
    const-string v1, "imms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IMms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 2450
    .local v0, "iMms":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_1

    .line 2451
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/telephony/IMms;->updateStoredMessageStatus(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2457
    .end local v0    # "iMms":Lcom/android/internal/telephony/IMms;
    :goto_0
    return v1

    .line 2454
    :catch_0
    move-exception v1

    .line 2457
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
