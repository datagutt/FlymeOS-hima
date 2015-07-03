.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "com.htc.intent.action.CB_RECEIVED"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_FULL_ACTION:Ljava/lang/String; = "com.htc.provider.Telephony.DEVICE_FULL"

.field public static final DX_WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.DX_WAP_PUSH_RECEIVED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_FILTER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_FILTER"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SEND_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SEND"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1774
    const-string v10, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()J

    move-result-wide v12

    invoke-virtual {p0, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1777
    .local v8, "subId":J
    const-string v10, "Telephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " getMessagesFromIntent sub_id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v10, "pdus"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v2, v10

    check-cast v2, [Ljava/lang/Object;

    .line 1780
    .local v2, "messages":[Ljava/lang/Object;
    const-string v10, "format"

    invoke-virtual {p0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "format":Ljava/lang/String;
    array-length v10, v2

    new-array v5, v10, [[B

    .line 1783
    .local v5, "pduObjs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v2

    if-ge v1, v10, :cond_0

    .line 1784
    aget-object v10, v2, v1

    check-cast v10, [B

    check-cast v10, [B

    aput-object v10, v5, v1

    .line 1783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1786
    :cond_0
    array-length v10, v5

    new-array v6, v10, [[B

    .line 1787
    .local v6, "pdus":[[B
    array-length v4, v6

    .line 1788
    .local v4, "pduCount":I
    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 1789
    .local v3, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    .line 1790
    aget-object v10, v5, v1

    aput-object v10, v6, v1

    .line 1793
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1794
    :cond_1
    const-string v10, "phone_type"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1796
    .local v7, "phoneType":I
    if-eqz v7, :cond_2

    .line 1797
    aget-object v10, v6, v1

    invoke-static {v10, v7}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v3, v1

    .line 1798
    aget-object v10, v3, v1

    invoke-virtual {v10, v8, v9}, Landroid/telephony/SmsMessage;->setSubId(J)V

    .line 1789
    .end local v7    # "phoneType":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1801
    .restart local v7    # "phoneType":I
    :cond_2
    aget-object v10, v6, v1

    invoke-static {v10, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v3, v1

    .line 1802
    aget-object v10, v3, v1

    invoke-virtual {v10, v8, v9}, Landroid/telephony/SmsMessage;->setSubId(J)V

    goto :goto_2

    .line 1807
    .end local v7    # "phoneType":I
    :cond_3
    aget-object v10, v6, v1

    invoke-static {v10, v0}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v10

    aput-object v10, v3, v1

    .line 1808
    aget-object v10, v3, v1

    invoke-virtual {v10, v8, v9}, Landroid/telephony/SmsMessage;->setSubId(J)V

    goto :goto_2

    .line 1811
    :cond_4
    return-object v3
.end method

.method public static isDefaultSmsPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1414
    invoke-static {p0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 1415
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1416
    const/4 v1, 0x1

    .line 1418
    :cond_0
    return v1
.end method
