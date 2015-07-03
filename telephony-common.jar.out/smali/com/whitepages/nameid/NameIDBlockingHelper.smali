.class public Lcom/whitepages/nameid/NameIDBlockingHelper;
.super Ljava/lang/Object;
.source "NameIDBlockingHelper.java"


# static fields
.field private static final NAME_ID_CHECK_TEXT_BLOCK_ACTION:Ljava/lang/String; = "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

.field public static final NAME_ID_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile"

.field private static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.MmsReceiver"

.field public static final NAME_ID_MMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.MmsReceiver"

.field private static final NAME_ID_ORIGINAL_INTENT:Ljava/lang/String; = "NAME_ID_ORIGINAL_INTENT"

.field public static final NAME_ID_PACKAGE_KEY:Ljava/lang/String; = "com.whitepages.nameid.NAME_ID_PACKAGE"

.field private static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME:Ljava/lang/String; = "com.whitepages.nameid.tmobile/com.whitepages.nameid.service.SmsReceiver"

.field public static final NAME_ID_SMS_RECEIVER_COMPONENT_NAME_FORMAT:Ljava/lang/String; = "%s/com.whitepages.nameid.service.SmsReceiver"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getActivePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.whitepages.nameid.NAME_ID_PACKAGE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string v0, "com.whitepages.nameid.tmobile"

    .line 60
    :cond_0
    return-object v0
.end method

.method public static getOriginalIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const-string v0, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public static isNameIdAction(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sAction"    # Ljava/lang/String;

    .prologue
    .line 49
    const-string v0, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static wasAborted(I)Z
    .locals 1
    .param p0, "rc"    # I

    .prologue
    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static wrapIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "sAction":Ljava/lang/String;
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.provider.Telephony.SMS_FILTER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    .end local p1    # "intent":Landroid/content/Intent;
    :goto_0
    return-object p1

    .line 34
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.whitepages.nameid.action.CHECK_TEXT_BLOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v2, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    const-string v2, "%s/com.whitepages.nameid.service.MmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    :goto_1
    const-string v2, "NAME_ID_ORIGINAL_INTENT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object p1, v0

    .line 41
    goto :goto_0

    .line 38
    :cond_1
    const-string v2, "%s/com.whitepages.nameid.service.SmsReceiver"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/whitepages/nameid/NameIDBlockingHelper;->getActivePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method
